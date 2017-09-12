<?php if (!defined('THINK_PATH')) exit();?><!-- 包含顶部 -->
<!DOCTYPE html>
<html lang="en">
	<head>
		<title>Unicorn Admin</title>
		<meta http-equiv="content-type" content="txt/html; charset="UTF-8"/>
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
		<link rel="stylesheet" href="__PUBLIC__/admin/css/bootstrap.min.css" />
		<link rel="stylesheet" href="__PUBLIC__/admin/css/bootstrap-responsive.min.css" />
        <link rel="stylesheet" href="__PUBLIC__/admin/css/uniform.css" />
        <link rel="stylesheet" href="__PUBLIC__/admin/css/select2.css" />  	
		<link rel="stylesheet" href="__PUBLIC__/admin/css/unicorn.main.css" />
		<link rel="stylesheet" href="__PUBLIC__/admin/css/unicorn.grey.css" class="skin-color" />
                        <script src="__PUBLIC__/admin/js/jquery.min.js"></script>
                        <script src="__PUBLIC__/admin/js/bootstrap.min.js"></script>
                        <script src="__PUBLIC__/admin/js/upload.js"></script>
                        <script src="__PUBLIC__/admin/js/js/laydate.js"></script>  
    </head>
	<body>
		<div id="header">
			<h1><a href="./dashboard.html">Unicorn Admin</a></h1>		
		</div>
		<!-- 顶部右侧 个人信息区域 开始 -->
		<div id="user-nav" class="navbar navbar-inverse">
            <ul class="nav btn-group">
                <li class="btn btn-inverse">
                	<a title="" href="#"><i class="icon icon-user"></i> <span class="text">个人资料</span></a></li>
                <li class="btn btn-inverse dropdown" id="menu-messages">
                	<a href="#" data-toggle="dropdown" data-target="#menu-messages" class="dropdown-toggle">
                    	<i class="icon icon-envelope"></i> 
                        <span class="text">消息</span> 
                        <span class="label label-important">5</span> 
                        <b class="caret"></b>
                    </a>
                    <ul class="dropdown-menu">
                        <li><a class="sAdd" title="" href="#">新消息</a></li>
                        <li><a class="sInbox" title="" href="#">收件箱</a></li>
                        <li><a class="sOutbox" title="" href="#">发件箱</a></li>
                        <li><a class="sTrash" title="" href="#">垃圾箱</a></li>
                    </ul>
                </li>
                <li class="btn btn-inverse">
                	<a title="" href="#"><i class="icon icon-cog"></i> <span class="text">偏好设置</span></a>
                </li>
                <li class="btn btn-inverse">
                    <a title="" href="__ROOT__"><i class="icon icon-eye-open"></i> <span class="text">查看店铺</span></a>
                </li>
                <li class="btn btn-inverse">
                	<a title="" href="__APP__/Login/logout"><i class="icon icon-share-alt"></i> <span class="text">退出</span></a>
                </li>
            </ul>
        </div>
        <!-- 顶部右侧 个人信息区域 结束 -->
        <!-- 侧边 菜单栏 开始 -->
        <div id="sidebar">
            <a href="#" class="visible-phone"><i class="icon icon-home"></i> 控制面板</a>
            <ul>
                <li class="active" id="index"><a href="__APP__"><i class="icon icon-home"></i> <span>控制面板</span></a></li>
                <li class="submenu" id="user">
                    <a href="#"><i class="icon icon-user"></i> <span>用户管理</span></a>
                    <ul>
                        <li><a href="__APP__/User/lists">会员列表</a></li>
                        <li><a href="__APP__/User/add">添加会员</a></li>
                        <li><a href="__APP__/">会员等级</a></li>
                        <li><a href="__APP__/">会员留言</a></li>
                        <li><a href="__APP__/">……</a></li>
                    </ul>
                </li>
                <li class="submenu" id="role">
                    <a href="#"><i class="icon icon-lock"></i> <span>权限管理</span></a>
                    <ul>
                        <li><a href="__APP__/Auser/lists">管理员列表</a></li>
                        <li><a href="__APP__/Alog/lists">系统操作日志</a></li>
                    </ul>
                </li>
                <li class="submenu" id="goods">
                    <a href="#"><i class="icon icon-shopping-cart"></i> <span>商品管理</span></a>
                    <ul>
                        <li><a href="__APP__/Goods/lists">商品列表</a></li>
                        <li><a href="__APP__/Goods/add">添加商品</a></li>
                        <li><a href="__APP__/Class/lists">商品分类</a></li>
                        <li><a href="__APP__/Goodstype/lists">商品规格</a></li>
                        <li><a href="__APP__/Comment/lists">用户评论</a></li>
                        <li><a href="__APP__/Trash/lists">商品回收站</a></li>
                        <li><a href="__APP__/">……</a></li>
                    </ul>
                </li>
                <li class="submenu" id="order">
                    <a href="#"><i class="icon icon-tag"></i> <span>订单管理</span></a>
                    <ul>
                        <li><a href="__APP__/Order/lists">订单列表</a></li>
                        <li><a href="__APP__/Order/query">订单查询</a></li>
                        <li><a href="__APP__/Order/listsq">确认单</a></li>
                        <li><a href="__APP__/Order/listss">收款单</a></li>
                        <li><a href="__APP__/Order/listsf">发货单</a></li>
                        <li><a href="__APP__/Order/listsl">完成交易单</a></li>
                    </ul>
                </li>
                <li class="submenu" id="tmpl">
                    <a href="#"><i class="icon icon-bookmark"></i> <span>模版管理</span></a>
                    <ul>
                        <li><a href="__APP__/Model/lists">模版列表</a></li>
                        <li><a href="__APP__/Model/set">模版设置</a></li>
                        <li><a href="">在线编辑</a></li>
                        <li><a href="__APP__/Mail/lists">邮件模板</a></li>
                    </ul>
                </li>
                <li class="submenu" id="tmpl">
                    <a href="#"><i class="icon icon-bookmark"></i> <span>发布内容</span></a>
                    <ul>
                        <li><a href="__APP__/Release/banner">发布主页banner配图</a></li>
                         <li><a href="__APP__/Release/special">特价旅行活动发布</a></li>
                        <li><a href="__APP__/Release/project">旅行项目发布</a></li>
                        <li><a href="__APP__/Release/activity">热门活动发布</a></li>
                    </ul>
                </li>
              <li class="submenu" id="tmpl">
                    <a href="#"><i class="icon icon-bookmark"></i> <span>套餐管理</span></a>
                    <ul>
                        <li><a href="__APP__/Package/lists">模版列表</a></li>
                        <li><a href="__APP__/Packageel/set">模版设置</a></li>
                        <li><a href="">在线编辑</a></li>
                        <li><a href="__APP__/Package/lists">邮件模板</a></li>
                    </ul>
                </li>
                <li id="count"><a href=""><i class="icon icon-signal"></i> <span>报表统计</span></a></li>
                <li id="config"><a href="__APP__/Config/listsConfig"><i class="icon icon-cog"></i> <span>网站设置</span></a></li>
                    <!-- 基本信息、自定义导航、系统公告 ... -->
                <li id="friend"><a href="__APP__/Friend/lists"><i class="icon icon-heart"></i> <span>友情链接</span></a></li>
            </ul>
        </div>
        <!-- 侧边菜单栏结束 -->
<link type="text/css" rel="stylesheet" href="__PUBLIC__/ueditor/themes/default/css/umeditor.min.css">

<script>
      	window.UMEDITOR_HOME_URL = "__PUBLIC__/ueditor/";
</script>

<!-- <script type="text/javascript" src="__PUBLIC__/ueditor/jquery.js"></script> -->
<script type="text/javascript" src="__PUBLIC__/ueditor/umeditor.config.js"></script>
<script type="text/javascript" src="__PUBLIC__/ueditor/umeditor.js"></script> 
<script>
	$(function(){
				$("#add").click(function(){
						$("#typevalue").append('<div class="divvalue" style="margin-left:200px;"><input  type="file"  name="pic[]" style="width:300px;"/><a href="javascript:void(0)" class="tip-top">&nbsp;&nbsp;<i class="icon-remove"></i></a></div>');
				})

				//附加一个事件处理函数，即使这个元素是以后再添加进来的也有效
				$('.tip-top').live('click', function(){
			 		$(this).parent().remove();
				});
				$("#add1").click(function(){
						$("#typevalue1").append('<div class="divvalue" style="margin-left:200px;"><input  type="file"  name="pic[]" style="width:300px;"/><a href="javascript:void(0)" class="tip-top">&nbsp;&nbsp;<i class="icon-remove"></i></a></div>');
				})

				//附加一个事件处理函数，即使这个元素是以后再添加进来的也有效
				$('.tip-top').live('click', function(){
			 		$(this).parent().remove();
				});
				$('#label_name').change(function () {
					var select = document.getElementById('label_name');

					$.get("__URL__/seachlableproject/label_name/"+select.value,function(data,data){
				 		
  		});
			
})
				$('#keyword').click(function () {
					
                 var element = document.getElementById("seachword"); 

                  $.get("__URL__/seachKeyproject/",{element:element.value},function(data,data){

                  });
})
		})
</script>
<div id="content">
	<!-- 顶部右侧快捷操作按钮 开始 -->
		<div id="content-header">
			<h1>热门旅游发布</h1>
			<div class="btn-group">
				<a class="btn btn-large tip-bottom" title="订单管理"><i class="icon-file"></i></a>
				<a class="btn btn-large tip-bottom" title="用户管理"><i class="icon-user"></i></a>
				<a class="btn btn-large tip-bottom" title="评论管理"><i class="icon-comment"></i><span class="label label-important">5</span></a>
				<a class="btn btn-large tip-bottom" title="购物车管理"><i class="icon-shopping-cart"></i></a>
			</div>
		</div>
        <!-- 顶部右侧快捷操作按钮 结束 -->
        <!-- 顶部面包屑导航 开始 -->
		<div id="breadcrumb">
			<a href="__APP__" title="返回首页" class="tip-bottom"><i class="icon-home"></i> 首页</a>
			<a href="__URL__/project" title="返回发布内容" class="tip-bottom"> 发布内容</a>
			<a href="#" class="current"> 热门旅游发布</a>
		</div>
		<!-- 顶部面包屑导航 结束 -->
		<!-- 主体区域 -->
		<div class="container-fluid">
			<!-- <div class="row-fluid">
				<div class="span3 offset9" >
					<button class="btn"> 热门旅游发布</button>
				</div>
			</div> -->
			<div class="row-fluid">
				<div class="span12">
					<!-- 组件盒子 开始 -->
					<div class="widget-box">
						<!-- 组件标题区域 -->
						<div class="widget-title">
						<h4 style="margin-left:15px ;">热门旅游发布</h4>
						<div>
						<input type="text" class="icon" style="margin-top:-45px;margin-left:1045px;" name="seachword" id="seachword" value="添加关键字"><img id ="keyword" style="margin-top:-45px; margin-left:5px; " width="30px" height="30px" src="__PUBLIC__/admin/img/z15.png" ></div>
						</div>	
						<div class="widget-title" style="margin-top:5px; ">
						<select id="label_name" style="text-align: center;margin-left:10px ;" >
                             <option value ="国际">国&nbsp;&nbsp;&nbsp;&nbsp;际</option>
                             <option value ="东南">东&nbsp;&nbsp;&nbsp;&nbsp;南</option>
                             <option value="西南">西&nbsp;&nbsp;&nbsp;&nbsp;南</option>
                             <option value="东北">东&nbsp;&nbsp;&nbsp;&nbsp;北</option>
                             <option value ="华北">华&nbsp;&nbsp;&nbsp;&nbsp;北</option>
                             <option value ="西北">西&nbsp;&nbsp;&nbsp;&nbsp;北</option>
                             <option value="华中">华&nbsp;&nbsp;&nbsp;&nbsp;中</option>
                             <option value="最新">最&nbsp;&nbsp;&nbsp;&nbsp;新</option>
                        </select> 
						</div>	

						<!-- 组件内容区域 -->
						<div class="widget-content nopadding">
							<table class="table table-bordered data-table" height="375px">
								<!-- 表头字段区域 -->
								<thead>
								</thead>
								<!-- 表格主体数据区域 -->
								<tbody>
							
									<tr>
										<?php if(is_array($data)): foreach($data as $key=>$vo): ?><td style="font-size:26px;font-family:'黑体';text-align:center;vertical-align:middle;"><img src="__PUBLIC__/Uploads/activity/<?php echo ($vo["banner_url"]); ?>" width="420"></td>
										<td style="font-size:26px;font-family:'黑体';text-align:center;vertical-align:middle;"><?php echo (date("Y-m-d",$vo["upload_time"])); ?></td>
										<td style="font-size:26px;font-family:'黑体';text-align:right;vertical-align:middle;"><div><button type="button" class="btn btn-default" id="tihuan" tihuan="<?php echo ($vo["id"]); ?>" data-toggle="modal" data-target="#myModal">替换</button></div></td>
										<td style="font-size:26px;font-family:'黑体';vertical-align:middle;"><div><button type="button" class="btn btn-default"><a href="__URL__/delactivity/id/<?php echo ($vo["id"]); ?>"></a>删除</button></div></td><?php endforeach; endif; ?>
									</tr>
								
									<tr >
										<td  style="font-size:175px;font-family:'宋体';text-align:center;vertical-align:middle;" data-toggle="modal" data-target="#myModal">+</td>
										<td colspan="3" style="font-size:26px;font-family:'黑体';vertical-align:middle;">&nbsp;&nbsp;添加新图片，封面图片大小保证300*300</td>
								
								</tbody>
							</table>  
						</div>
					</div>
					<!-- 组件盒子 结束 -->
				</div>
			</div>
<!--替换活动-->
			<!-- <div class="modal fade" id="replaceModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" style="display: none;">
				<div class="modal-dialog modal-lg">
					<div class="modal-content">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
							<h4 class="modal-title" id="myModalLabel" style="text-align:center;">热门旅游发布</h4>
						</div>
						<div class="modal-body" style="line-height:20px;">
						<form action="__URL__/inspecial"  method="post"  enctype="multipart/form-data" class="form-horizontal">
							<div>产品标题</div>
							<br>
							<div ><input type="text" name="title_name" style="width:500px; height:30px; border:1px solid black;"></div>
							<br>
							<div>封面配图</div>
							<br>
							<div>
							<div id="preview1" style="width:100px; height: 100px;"></div>
							<div style="text-align:center;vertical-align:middle;">图片需为375*375</div>
							<div><input type="file" name="cover_picture" onchange="preview1(this)"/></div>
							</div>
							<br>
							<div>主页标题</div>
							<br>
							<div ><input type="text" name="home_tilte" style="width:500px; height:30px; border:1px solid black;"></div>
							<br>
							<div>主页价格</div>
							<br>
							<div ><input type="text" name="home_price" style="width:500px; height:30px; border:1px solid black;"></div>
							<br>
							<div>主页项目简介</div>
							<br>
							<div ><input type="text" name="project_profile" style="width:500px; height:30px; border:1px solid black;"></div>
							<br>
							<div>价格</div>
							<br>
							<div ><input type="text" name="special_price" style="width:500px; height:30px; border:1px solid black;"></div>
							<br>
							<div>出发城市</div>
							<br>
							<div ><input type="text" name="start_city" style="width:500px; height:30px; border:1px solid black;"></div>
							<br>
							<div class="box">					
							<div class="demo1">
								<h3>出游日期</h3>
								<input class="inline laydate-icon" name="start_time" id="start" value="2017-8-25更新">--
								<input class="inline laydate-icon" name="end_time" id="end" value="2017-8-25更新">
								
							</div>
							</div>
							<br>
							<div>标签</div>
							<br>
							<div ><input type="text" name="label_name" style="width:500px; height:30px; border:1px solid black;"></div>
							<br>
							<div>展示窗配图</div>
							<br>
							<div style="width:500px;border:1px solid black;">
							<div class="control-group" id="typevalue">
									
									<div style="margin: 5px 5px;">
									<button id="add" type="button" class="btn btn-primary">添加展示图片</button>
									</div>

									<div class="divvalue" style="margin-left:200px;">
										<input  type="file"  name="pic[]" style="width:300px;"/><a href="javascript:void(0)" class="tip-top">&nbsp;&nbsp;<i class="icon-remove"></i></a>
									</div>
								</div>
	                       </div>
							<div style="font-size:16px;font-family:'黑体'; text-align: center;vertical-align:middle;"><br>&nbsp;&nbsp;添加新图片，封面图片大小保证620*420</div>
							<br>
							<div>版块内容</div>
							<br>
							<div >
								<textarea  id='gdescription' cols='70' rows='4' name="gdescription" placeholder='享受美好旅行，从现在开始；'></textarea></div>
						<div class="modal-footer" style="text-align:center;">
							<button type="submit" class="btn btn-primary" >保存</button>
						</div>
						</form>
					</div>
				</div>
			</div>
			</div> -->
<!--替换活动-->
<!--添加活动-->
			<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" style="display: none;">
				<div class="modal-dialog modal-lg">
					<div class="modal-content">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
							<h4 class="modal-title" id="myModalLabel" style="text-align:center;">热门旅游发布</h4>
						</div>
						<div class="modal-body" style="line-height:20px;">
						<form action="__URL__/insactivity"  method="post"  enctype="multipart/form-data" class="form-horizontal">
							<div>产品标题</div>
							<br>
							<div ><input type="text" name="activity_title" style="width:500px; height:30px; border:1px solid black;"></div>
							<br>
							<div>封面配图</div>
							<br>
							<div>
							<div id="preview" style="width:100px; height: 100px;"></div>
							<div style="text-align:center;vertical-align:middle;">图片需为280*500</div>
							<div><input type="file" name="activity_picurl" onchange="preview(this)"/></div>
							</div>
							<br>
							<div>价格</div>
							<br>
							<div ><input type="text" name="activity_price" style="width:500px; height:30px; border:1px solid black;"></div>
							<br>
							<div>出发城市</div>
							<br>
							<div ><input type="text" name="activity_startcity" style="width:500px; height:30px; border:1px solid black;"></div>
							<br>
							<div class="box">					
							<div class="demo1">
								<h3>出游日期</h3>
								<input class="inline laydate-icon" name="activity_starttime" id="start_time" value="2017-8-25更新">--
								<input class="inline laydate-icon" name="activity_endtime" id="end_time" value="2017-8-25更新">
								
							</div>
							</div>
							<br>
							<div>标签</div>
							<br>
							<div ><input type="text" name="activity_lable" style="width:500px; height:30px; border:1px solid black;"></div>
							<br>
							<div>展示窗配图</div>
							<br>
							<div style="width:500px;border:1px solid black;">
							<div class="control-group" id="typevalue1">
									
									<div style="margin: 5px 5px;">
									<button id="add1" type="button" class="btn btn-primary">添加展示图片</button>
									</div>

									<div class="divvalue" style="margin-left:200px;">
										<input  type="file"  name="pic[]" style="width:300px;"/><a href="javascript:void(0)" class="tip-top">&nbsp;&nbsp;<i class="icon-remove"></i></a>
									</div>
								</div>
	                       </div>
							<div style="font-size:16px;font-family:'黑体'; text-align: center;vertical-align:middle;"><br>&nbsp;&nbsp;添加新图片，封面图片大小保证620*420</div>
							<br>
							<div>版块内容</div>
							<br>
							<div >
								<textarea  id='gdescription1' cols='70' rows='4' name="activity_content" placeholder='享受美好旅行，从现在开始；'></textarea></div>
						<div class="modal-footer" style="text-align:center;">
							<button type="submit" class="btn btn-primary" >保存</button>
						</div>
						</form>
					</div>
				</div>
			</div>
			</div>
			<!--添加活动-->

			<SCRIPT type=text/javascript>

//var editor = UM.getEditor('myEditor',{initialFrameWidth:600});

    var editor = UM.getEditor('gdescription',{
            
            //默认的编辑区域高度
            initialFrameHeight:100,
            initialFrameWidth:500
            //更多其他参数，请参考umeditor.config.js中的配置项
        });
    var editor = UM.getEditor('gdescription1',{
            
            //默认的编辑区域高度
            initialFrameHeight:100,
            initialFrameWidth:500
            //更多其他参数，请参考umeditor.config.js中的配置项
        });
	</SCRIPT>						
	<script type="text/javascript">
	!function(){
		laydate.skin('molv');//切换皮肤，请查看skins下面皮肤库
		laydate({elem: '#demo'});//绑定元素
	}();

	//日期范围限制
	var start = {
	    elem: '#start',
	    format: 'YYYY-MM-DD',
	    min: laydate.now(), //设定最小日期为当前日期
	    max: '2099-06-16', //最大日期
	    istime: true,
	    istoday: false,
	    choose: function(datas){
	         end.min = datas; //开始日选好后，重置结束日的最小日期
	         end.start = datas //将结束日的初始值设定为开始日
	    }
	};

	var end = {
	    elem: '#end',
	    format: 'YYYY-MM-DD',
	    min: laydate.now(),
	    max: '2099-06-16',
	    istime: true,
	    istoday: false,
	    choose: function(datas){
	        start.max = datas; //结束日选好后，充值开始日的最大日期
	    }
	};
	//日期范围限制
	var start = {
	    elem: '#start_time',
	    format: 'YYYY-MM-DD',
	    min: laydate.now(), //设定最小日期为当前日期
	    max: '2099-06-16', //最大日期
	    istime: true,
	    istoday: false,
	    choose: function(datas){
	         end.min = datas; //开始日选好后，重置结束日的最小日期
	         end.start = datas //将结束日的初始值设定为开始日
	    }
	};

	var end = {
	    elem: '#end_time',
	    format: 'YYYY-MM-DD',
	    min: laydate.now(),
	    max: '2099-06-16',
	    istime: true,
	    istoday: false,
	    choose: function(datas){
	        start.max = datas; //结束日选好后，充值开始日的最大日期
	    }
	};
	laydate(start);
	laydate(end);

	//自定义日期格式
	laydate({
	    elem: '#test1',
	    format: 'YYYY年MM月DD日',
	    festival: true, //显示节日
	    choose: function(datas){ //选择日期完毕的回调
	        alert('得到：'+datas);
	    }
	});

	//日期范围限定在昨天到明天
	laydate({
	    elem: '#hello3',
	    min: laydate.now(-1), //-1代表昨天，-2代表前天，以此类推
	    max: laydate.now(+1) //+1代表明天，+2代表后天，以此类推
	});
	</script>
<!-- 包含底部 -->

<!-- 包含底部 -->
			
            <!-- 页面底部版权 -->
			<div class="row-fluid">
				<div id="footer" class="span12">
					Copyright &copy; 2014 <span class="label label-important">四重奏项目组</span> All Rights Reserved. 
				</div>
			</div>
		</div>
	</div>


	<!-- 加载相关JS文件 -->
    <script src="__PUBLIC__/admin/js/excanvas.min.js"></script>
    <script src="__PUBLIC__/admin/js/jquery.ui.custom.js"></script>
    <script src="__PUBLIC__/admin/js/jquery.uniform.js"></script>
    <script src="__PUBLIC__/admin/js/select2.min.js"></script>
    <script src="__PUBLIC__/admin/js/jquery.dataTables.min.js"></script>
    <script src="__PUBLIC__/admin/js/jquery.flot.min.js"></script>
    <script src="__PUBLIC__/admin/js/jquery.flot.resize.min.js"></script>
    <script src="__PUBLIC__/admin/js/jquery.peity.min.js"></script>
    <script src="__PUBLIC__/admin/js/unicorn.js"></script>
    <script src="__PUBLIC__/admin/js/unicorn.tables.js"></script>
    <script src="__PUBLIC__/admin/js/unicorn.dashboard.js"></script>

    <script>
        // 侧边菜单栏，高亮当前模块 样式设置
    
        // 去除之前的样式
        $("li[class='active']").removeClass("active");
        // 高亮当前样式
        $("li[id='<?php echo (strtolower(MODULE_NAME)); ?>']").addClass("active");
    </script>

</body>
</html>