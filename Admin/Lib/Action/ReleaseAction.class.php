<?php 

	/**
	 * 类名：ReleaseAction
	 * 功能：邮件发送系统
	 */
	class ReleaseAction extends Action{

		/**
		 * 函数名：banner
		 * 功能：banner模板列表
		 */
		function banner(){

			$m = M("banners");

			$data = $m->order('upload_time desc')->select();

			$this->assign('data',$data);
			$this->display();
		}
		/**
		 * 函数名：insbanner
		 * 功能：添加banner配图模板
		 */

		function insbanner(){

			R('Level/sendbanner'); // 验证权限
	
			//实例化类
			import('ORG.Net.UploadFile'); 
			$upload = new UploadFile();
			$upload->maxSize = 3145728;
			$upload->allowExts = array('jpg','gif','png','jpeg');
			//设置添加banner配图的，路径
			$upload->savePath = './Public/Uploads/banners/';

			//判断文件上传是否成功
			if(!$upload->upload()){
				//$this->error($upload->getErrorMsg());

			}else{
				$info = $upload->getUploadFileInfo();	
			}
			$m = M("banners");
        	$data['banner_url']=$m->photo = $info[0]['savename'];

			//获取当前时间戳
		 	$data['upload_time'] = time();
		 	//获取banner名
		 	$data['banner_name']=$_POST["banner_name"];
		 	//获取指向地址
			$data['point_url']=$_POST["loadurl"];
			$m->create();
			$result=$m->add($data);
			
			//判断是否插入成功；
			if($result)
			{
				$this->success("添加成功!!!",__URL__."/banner");
			}else{
				$this->error("添加失败!!!");
			}
		}
		/**
		 * 函数名：rebanner
		 * 功能：更新替换banner配图
		 */
		function rebanner(){

			//获取需要更新的banner配图id
			$id = trim($_GET['id']);

			// 实例化banners对象
			 $banners = M("banners"); 
    		//查询出来要替换的banner配图的相关数据
  			 $data = $banners->where("id=$id")->find();
  			 $this->assign("data",$data);

		}
		/**
		 * 函数名：replacebanner
		 * 功能：替换旧的banner配图信息
		 */
		function replacebanner(){
			//设置编码格式为utf-8
			header("Content-type: text/html; charset=utf-8");		

			//获取需要更新的banner配图id
			$id = trim($_GET['id']);

			//在这里只要有添加banner的权利，就有替换，删除的权利
			R('Level/sendbanner'); // 验证权限
			//实例化类
			import('ORG.Net.UploadFile'); 
			$upload = new UploadFile();
			$upload->maxSize = 3145728;
			$upload->allowExts = array('jpg','gif','png','jpeg');
			//设置添加banner配图的，路径
			$upload->savePath = './Public/Uploads/banners/';
			//删除原图
			$upload->thumbRemoveOrigin = true;
			//判断文件上传是否成功
			if(!$upload->upload()){
				//$this->error($upload->getErrorMsg());

			}else{
				$info = $upload->getUploadFileInfo(); 
			}
			$m = M("banners");
        	$data['banner_url']=$m->photo = $info[0]['savename'];
        	//获取当前时间戳
        	// 要修改的数据对象属性赋值
		 	$data['upload_time'] = time();
		 	$data['banner_name']=$_POST["banner_name"];
			$data['point_url']=$_POST["loadurl"];
			// 根据条件保存修改的数据
			$m->where('id=$id')->data($data)->save();

		}
		/**
		 * 函数名：delbanner
		 * 功能：删除banner配图以及信息
		 */
		function delbanner(){

			//获取需要更新的banner配图id
			$id = trim($_GET['id']);

			//在这里只要有添加banner的权利，就有替换，删除的权利
			R('Level/sendbanner'); // 验证权限

			$m = M("banners");
			//执行删除
			$result=$m->where('id=$id')->delete(); // 删除id为5的用户数据
			//判断是否删除成功
			if($result)
			{
				$this->success("删除banner成功",__URL__."/banners");
			}else{
				$this->error("删除banner失败");
			}

		}
		/**
		 * 函数名：special
		 * 功能：特价旅游活动展示
		 */
		function special(){

	    	R('Level/sendspecial'); // 权限验证
			
			$m = M("special");

			$data = $m->order('release_time desc')->select();

			$this->assign('data',$data);
			$this->display();
		}

		/**
		 * 函数名：inspecial
		 * 功能：发布特价旅游活动
		 */
		function inspecial(){
		
			R('Level/sendspecial'); // 权限验证

			//把开始时间,结束时间转化为时间戳
			$data['start_time']= strtotime($_POST['start_time']);
			$data['end_time']= strtotime($_POST['end_time']);

			//实例化类
			import('ORG.Net.UploadFile'); 
			$upload = new UploadFile();
			$upload->maxSize = 3145728;
			$upload->allowExts = array('jpg','gif','png','jpeg');
			//设置添加商品的，路径
			$upload->savePath = './Public/Uploads/special/';

			//判断文件上传是否成功
			if(!$upload->upload()){
				//$this->error($upload->getErrorMsg());
			}else{
				$info = $upload->getUploadFileInfo();
			}

			$special = M("special");
			$special->photo = $info[0]['savename'];


			//获取当前时间戳
			$_POST['release'] = time();
			//获取头像图片
			$_POST['cover_picture'] = $special->photo;
			

			$special->create();
			$result = $special->add($_POST);

			//储存展示窗图片
			$special_images = M("special_images");
			$numcount = count($info);
			
			for($i=0; $i<$numcount; $i++){
				$data['gid']= $result;
				$data['pic'] = $info[$i]['savename'];	
				$special_images->data($data)->add();
			}

		
			if($result)
			{
				$this->success("添加成功!!!",__URL__."/special");
			}else{
				$this->error("添加失败!!!");
			}
		}

		/**
		 * 函数名：respecial
		 * 功能：更新替换特价旅游活动
		 */
		function respecial(){


			//获取需要更新的banner配图id
			$id = trim($_GET['id']);
		
			// 实例化banners对象
			 $special = M("special"); 
    		//查询出来要替换的特价活动的相关数据
  			 $data = $special->where("id=$id")->find();

		
			// $datacount=$special_images->where('gid=$id')->count();

  			 //实例化special_images对象
  			 $special_images=M("special_images");
  			 //查询出来要替换的special的相关数据
  		
  			  $imagesdata=$special_images->where("gid=$id")->select();
        
  			//  parse_str($imagesdata,$array);
			  


  			 //
  			 //
  			// $image=explode(",",$imagesdata);
  			// $image=str_split($image);

			// foreach($imagesdata as $row){
			// 	$row["pic"] =$special_images->where("gid"=.$row['id'])->select();

			// }
			  $this->assign("array",$array);

  			 $this->assign("imagesdata",$imagesdata);
  			 $this->assign("data",$data);
  		

		}

		/**
		 * 函数名：replacespecial
		 * 功能：替换特价旅游活动信息
		 */
		function replacespecial(){

			//用户只要拥有添加的权限，就具有替换的权限
			R('Level/sendspecial'); // 权限验证

			//设置编码格式为utf-8
			header("Content-type: text/html; charset=utf-8");		

			//获取需要更新的banner配图id
			$id = trim($_GET['id']);

			//把开始时间,结束时间转化为时间戳
			$data['start_time']= strtotime($_POST['start_time']);
			$data['end_time']= strtotime($_POST['end_time']);

			//实例化类
			import('ORG.Net.UploadFile'); 
			$upload = new UploadFile();
			$upload->maxSize = 3145728;
			$upload->allowExts = array('jpg','gif','png','jpeg');
			//设置添加banner配图的，路径
			$upload->savePath = './Public/Uploads/special/';
			//删除原图
			$upload->thumbRemoveOrigin = true;
			//判断文件上传是否成功
			if(!$upload->upload()){
				//$this->error($upload->getErrorMsg());

			}else{
				$info = $upload->getUploadFileInfo(); 
			}
			$m = M("special");
        	$data['banner_url']=$m->photo = $info[0]['savename'];
        	//获取当前时间戳
		 	$data['release_time'] = time();
		 	
			//储存展示窗图片
			$special_images = M("special_images");
			$numcount = count($info);
			
			for($i=0; $i<$numcount; $i++){
				$data['gid']= $_POST['exhibition_id'];
				$data['pic'] = $info[$i]['savename'];	
				$special_images->where('pid=$id')->data($data)->save();
			}


			// 根据条件保存修改的数据
			$m->where('id=$id')->data($data)->save();
		}
		/**
		 * 函数名：delspecial
		 * 功能：删除特价旅游活动信息
		 */
		function delspecial(){
			//用户只要拥有添加的权限，就具有删除的权限
			R('Level/sendspecial'); // 权限验证

			//获取需要删除的特价活动信息id
			$id = trim($_GET['id']);

			$special = M("special");

			//执行删除
			$result=$special
			->join('left join special_images on special.exhibition_id=special_images.pid')
			->where('id=$id')->delete(); // 删除优惠活动
			
			//判断是否删除成功
			if($result)
			{
				$this->success("删除特价活动成功",__URL__."/special");
			}else{
				$this->error("删除特价活动失败");
			}
		}
		/**
		 * 函数名：project
		 * 功能： 热门旅游展示
		 */
		function project(){
			//实例化
			$project = M("project");

          //查询要出现的详细内容
			$data = $project->order('project_addtime desc')->select();

			$this->assign('data',$data);
			$this->display();
		}

		/**
		 * 函数名：insproject
		 * 功能： 发布热门旅游
		 */

		function insproject(){

			R('Level/sendproject'); // 权限验证

			//实例化类
			import('ORG.Net.UploadFile'); 
			$upload = new UploadFile();
			$upload->maxSize = 3145728;
			$upload->allowExts = array('jpg','gif','png','jpeg');
			//设置添加图片的，路径
			$upload->savePath = './Public/Uploads/project/';

			//判断文件上传是否成功
			if(!$upload->upload()){
				//$this->error($upload->getErrorMsg());
			}else{
				$info = $upload->getUploadFileInfo();
			}

			$project = M("project");
			$project->photo = $info[0]['savename'];


			//获取当前时间戳
			$_POST['project_addtime'] = time();
			//获取头像图片
			$_POST['cover_picture'] = $project->photo;

			$project->create();
			$result = $project->add($_POST);

			//储存展示窗图片
			$project_images = M("project_images");
			$numcount = count($info);
			
			for($i=0; $i<$numcount; $i++){
				$data['gid']= $result;
				$data['pic'] = $info[$i]['savename'];	
				$preject_images->data($data)->add();
			}

			//存储板块内容
			if($result)
			{
				$this->success("添加成功!!!",__URL__."/project");
			}else{
				$this->error("添加失败!!!");
			}
		}
		/**
		 * 函数名：seach_Keyword
		 * 功能：关键字搜索
		 */
		function seachKeyproject(){


		}
		/**
		 * 函数名：seachlable
		 * 功能：标签搜索
		 */
		function seachlableproject(){

		}
		

		/**
		 * 函数名：reproject
		 * 功能： 替换热门旅游
		 */
		function  reproject(){

			//获取需要替换热门旅游id
			$id = trim($_GET['id']);
		
			// 实例化banners对象
			 $project = M("project"); 
    		//查询出来要替换的banner配图的相关数据
  			 $data = $project->where("id=$id")->find();


  			 //实例化special_images对象
  			 $project_images=M("project_images");
  			 //查询出来要替换的special的相关数据
  		
  			 $iamgesdata=$project_images->where("gid=$id")->select();

  			
  			 $this->assign("iamgesdata",$iamgesdata);
  			 $this->assign("data",$data);


		}
		/**
		 * 函数名：replaeproject
		 * 功能： 替换热门旅游
		 */
		function  replaceproject(){

			//用户只要拥有添加的权限，就具有替换的权限
			R('Level/sendproject'); // 权限验证

			//设置编码格式为utf-8
			header("Content-type: text/html; charset=utf-8");		

			//获取需要更新的banner配图id
			$id = trim($_GET['id']);

			//把开始时间,结束时间转化为时间戳
			$data['prostart_time']= strtotime($_POST['start_time']);
			$data['proend_time']= strtotime($_POST['end_time']);

			//实例化类
			import('ORG.Net.UploadFile'); 
			$upload = new UploadFile();
			$upload->maxSize = 3145728;
			$upload->allowExts = array('jpg','gif','png','jpeg');
			//设置添加banner配图的，路径
			$upload->savePath = './Public/Uploads/project/';
			//删除原图
			$upload->thumbRemoveOrigin = true;
			//判断文件上传是否成功
			if(!$upload->upload()){
				//$this->error($upload->getErrorMsg());

			}else{
				$info = $upload->getUploadFileInfo(); 
			}
			$m = M("project");
        	$data['project_imageurl']=$m->photo = $info[0]['savename'];
        	//获取当前时间戳
		 	$data['project_addtime'] = time();
		 	
			//储存展示窗图片
			$project_images = M("project_images");
			$numcount = count($info);
			
			for($i=0; $i<$numcount; $i++){
				$data['gid']= $_POST['proExhibition_id'];
				$data['pic'] = $info[$i]['savename'];	
				$project_images->where('gid=$id')->data($data)->save();
			}


			// 根据条件保存修改的数据
			$m->where('id=$id')->data($data)->save();

		}

		/**
		 * 函数名：delproject
		 * 功能： 删除项目
		 */
		function  delproject(){

			//用户只要拥有添加的权限，就具有删除的权限
			R('Level/sendproject'); // 权限验证

			//获取需要删除的特价活动信息id
			$id = trim($_GET['id']);

			$project = M("project");

			//执行删除
			$result=$project
			->join('left join project_images on project.proExhibition_id=project_images.gid')
			->where('id=$id')->delete(); // 删除优惠活动
			
			//判断是否删除成功
			if($result)
			{
				$this->success("删除特价活动成功",__URL__."/project");
			}else{
				$this->error("删除特价活动失败");
			}

		}

		/**
		 * 函数名：activity
		 * 功能：热门活动展示
		 */
		function activity(){

			R('Level/sendactivity'); // 权限验证
			
			$activity = M("activity");

			$data = $activity->order('activity_addtime desc')->select();

			$this->assign('data',$data);
			$this->display();
		}
		/**
		 * 函数名：insactivity
		 * 功能：添加热门活动
		 */
		function insactivity(){
			
				R('Level/sendactivity'); // 权限验证

			//实例化类
			import('ORG.Net.UploadFile'); 
			$upload = new UploadFile();
			$upload->maxSize = 3145728;
			$upload->allowExts = array('jpg','gif','png','jpeg');
			//设置添加图片的，路径
			$upload->savePath = './Public/Uploads/activity/';

			//判断文件上传是否成功
			if(!$upload->upload()){
				//$this->error($upload->getErrorMsg());
			}else{
				$info = $upload->getUploadFileInfo();
			}

			$activity = M("activity");
			$activity->photo = $info[0]['savename'];


			//获取当前时间戳
			$_POST['activity_addtime'] = time();
			//获取头像图片
			$_POST['cover_picture'] = $project->photo;

			$project->create();
			$result = $project->add($_POST);

			//储存展示窗图片
			$activity_images = M("activity_images");
			$numcount = count($info);
			
			for($i=0; $i<$numcount; $i++){
				$data['gid']= $result;
				$data['pic'] = $info[$i]['savename'];	
				$activity_images->data($data)->add();
			}

			//存储板块内容
			if($result)
			{
				$this->success("添加成功!!!",__URL__."/activity");
			}else{
				$this->error("添加失败!!!");
			}
		}

		/**
		 * 函数名：reactivity
		 * 功能：展示替换内容
		 */
		function reactivity(){


			//获取需要更新的活动id
			$id = trim($_GET['id']);
		
			// 实例化activity对象
			 $activity = M("activity"); 
    		//查询出来要替换的特价活动的相关数据
  			 $data = $activity->where("id=$id")->find();

		
			// $datacount=$special_images->where('gid=$id')->count();

  			 //实例化special_images对象
  			 $activity_images=M("activity_images");
  			 //查询出来要替换的special的相关数据
  		
  			  $imagesdata=$activity_images->where("gid=$id")->select();
        
  			//  parse_str($imagesdata,$array);
			  


  			 //
  			 //
  			// $image=explode(",",$imagesdata);
  			// $image=str_split($image);

			// foreach($imagesdata as $row){
			// 	$row["pic"] =$special_images->where("gid"=.$row['id'])->select();

			// }
			  $this->assign("array",$array);

  			 $this->assign("imagesdata",$imagesdata);
  			 $this->assign("data",$data);
  		
		}
		/**
		 * 函数名：replaceactivity
		 * 功能：替换热门活动
		 */
		function replaceactivity(){
			
			//用户只要拥有添加的权限，就具有替换的权限
			R('Level/sendactivity'); // 权限验证

			//设置编码格式为utf-8
			header("Content-type: text/html; charset=utf-8");		

			//获取需要更新的banner配图id
			$id = trim($_GET['id']);

			//把开始时间,结束时间转化为时间戳
			$data['activity_starttime']= strtotime($_POST['start_time']);
			$data['activity_endtime']= strtotime($_POST['end_time']);

			//实例化类
			import('ORG.Net.UploadFile'); 
			$upload = new UploadFile();
			$upload->maxSize = 3145728;
			$upload->allowExts = array('jpg','gif','png','jpeg');
			//设置添加activity配图的，路径
			$upload->savePath = './Public/Uploads/activity/';
			//删除原图
			$upload->thumbRemoveOrigin = true;
			//判断文件上传是否成功
			if(!$upload->upload()){
				//$this->error($upload->getErrorMsg());

			}else{
				$info = $upload->getUploadFileInfo(); 
			}
			$m = M("activity");
        	$data['activity_picurl']=$m->photo = $info[0]['savename'];
        	//获取当前时间戳
		 	$data['activity_addtime'] = time();
		 	
			//储存展示窗图片
			$activity_images = M("activity_images");
			$numcount = count($info);
			
			for($i=0; $i<$numcount; $i++){
				$data['gid']= $_POST['activity_Exid'];
				$data['pic'] = $info[$i]['savename'];	
				$activity_images->where('pid=$id')->data($data)->save();
			}


			// 根据条件保存修改的数据
			$m->where('id=$id')->data($data)->save();
		}
		/**
		 * 函数名：delactivity
		 * 功能：删除热门活动
		 */
		function delactivity(){
			
			//用户只要拥有添加的权限，就具有删除的权限
			R('Level/sendactivity'); // 权限验证

			//获取需要删除的特价活动信息id
			$id = trim($_GET['id']);

			$activity = M("activity");

			//执行删除
			$result=$activity
			->join('left join activity_images on activity.activity_Exid=activity_images.gid')
			->where('id=$id')->delete(); // 删除优惠活动
			
			//判断是否删除成功
			if($result)
			{
				$this->success("删除热门活动成功",__URL__."/activity");
			}else{
				$this->error("删除热门活动失败");
			}
		}


}