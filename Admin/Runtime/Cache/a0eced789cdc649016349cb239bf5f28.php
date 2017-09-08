<?php if (!defined('THINK_PATH')) exit();?>
<link type="text/css" rel="stylesheet" href="__PUBLIC__/ueditor/themes/default/css/umeditor.min.css">

<script>
      	window.UMEDITOR_HOME_URL = "__PUBLIC__/ueditor/";
</script>

<!-- <script type="text/javascript" src="__PUBLIC__/ueditor/jquery.js"></script> -->
<script type="text/javascript" src="__PUBLIC__/ueditor/umeditor.config.js"></script>
<script type="text/javascript" src="__PUBLIC__/ueditor/umeditor.js"></script> 
<script>
	$(function(){

			$("#add1").click(function(){
						$("#typevalue1").append('<div class="divvalue1" style="margin-left:200px;"><input  type="file"  name="pic[]" style="width:300px;"/><a href="javascript:void(0)" class="tip-top1">&nbsp;&nbsp;<i class="icon-remove"></i></a></div>');
				})

				//附加一个事件处理函数，即使这个元素是以后再添加进来的也有效
				$('.tip-top1').live('click', function(){
			 		$(this).parent().remove();
				});

  					$(".btn-default").click(function(){
					var tihuan = $(this).attr("tihuan");
				 	$.get("__URL__/respecial/id/"+tihuan,{id:tihuan},function(data){
				 		$("#userModal").html('');
				 		$("#userModal").html(data);
				 		$("#userModal").html(imagedata);
				 		$("#userModal").attr("style","display:block;");
  					});
  			// 		$(".btn-default").click(function(){
					// var tihuan = $(this).attr("tihuan");
				 // 	$.get("__URL__/delspecial/id/"+tihuan,{id:tihuan},function(data){
				 		
  			// 		});

				})
			
		})
	

</script>


<div class="modal-dialog modal-lg">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
				<h4 class="modal-title" id="myModalLabel" style="text-align:center;">特价旅行活动发布</h4>
			</div>
			<div class="modal-body" style="line-height:20px;">
			
			<form action="__URL__/replacespecial/id/<?php echo ($data["id"]); ?>"  method="post"  enctype="multipart/form-data" class="form-horizontal">
				<div>产品标题</div>
				<br>
				<div ><input type="text" name="title_name" value="<?php echo ($data["title_name"]); ?>" style="width:500px; height:30px; border:1px solid black;"></div>
				<br>
				<div>封面配图</div>
				<br>
				<div>
				<div id="preview1" style="width:100px; height: 100px;"><img src="__PUBLIC__/Uploads/special/<?php echo ($data["cover_picture"]); ?>" alt=""></div>
				<div style="text-align:center;vertical-align:middle;">图片需为375*375</div>
				<div><input type="file" name="cover_picture" onchange="preview1(this)"/></div>
				</div>
				<br>
				<div>主页标题</div>
				<br>
				<div ><input type="text" name="home_tilte" value="<?php echo ($data["home_tilte"]); ?>" style="width:500px; height:30px; border:1px solid black;"></div>
				<br>
				<div>主页价格</div>
				<br>
				<div ><input type="text" name="home_price" value="<?php echo ($data["home_price"]); ?>" style="width:500px; height:30px; border:1px solid black;"></div>
				<br>
				<div>主页项目简介</div>
				<br>
				<div ><input type="text" name="project_profile" value="<?php echo ($data["special_profile"]); ?>" style="width:500px; height:30px; border:1px solid black;"></div>
				<br>
				<div>价格</div>
				<br>
				<div ><input type="text" name="special_price" value="<?php echo ($data["special_price"]); ?>" style="width:500px; height:30px; border:1px solid black;"></div>
				<br>
				<div>出发城市</div>
				<br>
				<div ><input type="text" name="start_city" value="<?php echo ($data["start_city"]); ?>" style="width:500px; height:30px; border:1px solid black;"></div>
				<br>
				<div class="box">					
				<!-- <div class="demo1">
					<h3>出游日期</h3>
					<input class="inline laydate-icon" name="start_time" id="start" value="<?php echo (date('Y-m-d',$data["start_time"])); ?>">--
					<input class="inline laydate-icon" name="end_time" id="end" value="<?php echo (date('Y-m-d',$data["end_time"])); ?>">
					
				</div> -->
				</div>
				<br>
				<div>标签</div>
				<br>
				<div ><input type="text" value="<?php echo ($data["label_name"]); ?>" name="label_name" style="width:500px; height:30px; border:1px solid black;"></div>
				<br>
				<div>展示窗配图</div>
				<br>
				<div style="width:500px;border:1px solid black;">
		
				
				<div class="control-group" id="typevalue1">
						
						<div style="margin: 5px 5px;">
						<button id="add1" type="button" class="btn btn-primary">添加展示图片</button>
						</div>
						<div class="divvalue1" style="margin-left:200px;">
				
						<?php if(is_array($imagesdata)): foreach($imagesdata as $key=>$row): ?><img src="__PUBLIC__/Uploads/special/<?php echo ($row["pic"]); ?>" width="60" height="60"><?php endforeach; endif; ?>
					
							<input  type="file"  name="pic[]" style="width:300px;"/><a href="javascript:void(0)" class="tip-top1">&nbsp;&nbsp;<i class="icon-remove"></i></a>
						</div>
					</div>
               </div>
				<div style="font-size:16px;font-family:'黑体'; text-align: center;vertical-align:middle;"><br>&nbsp;&nbsp;添加新图片，封面图片大小保证620*420</div>
				<br>
				<div>版块内容</div>
				<br>
				<div >
					<textarea  id='gdescription' cols='70' value="<?php echo ($data["plate_content"]); ?>" rows='4' name="plate_content" placeholder='享受美好旅行，从现在开始；'></textarea></div>
			<div class="modal-footer" style="text-align:center;">
				<button type="submit" class="btn btn-primary" >保存</button>
			</div>
			</form>
		</div>
	</div>
</div>

<script>

 var editor = UM.getEditor('gdescription',{
            
            //默认的编辑区域高度
            initialFrameHeight:100,
            initialFrameWidth:500
            //更多其他参数，请参考umeditor.config.js中的配置项
        });

!function(){
		laydate.skin('molv');//切换皮肤，请查看skins下面皮肤库
		laydate({elem: '#demo1'});//绑定元素
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