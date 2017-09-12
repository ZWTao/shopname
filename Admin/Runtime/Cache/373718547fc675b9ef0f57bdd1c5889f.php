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
							<h4 class="modal-title" id="myModalLabel" style="text-align:center;">旅行项目内容替换</h4>
						</div>
						<div class="modal-body" style="line-height:20px;">
						<form action="__URL__/replaceproject/<?php echo ($data["id"]); ?>"  method="post"  enctype="multipart/form-data" class="form-horizontal">
							<div>产品标题</div>
							<br>
							<div ><input type="text" name="project_title" value="<?php echo ($data["project_title"]); ?>" style="width:500px; height:30px; border:1px solid black;"></div>
							<br>
							<div>封面配图</div>
							<br>
							<div>
							<div id="preview" style="width:100px; height: 100px;"><img src="__PUBLIC__/Uploads/project/<?php echo ($data["project_imageurl"]); ?>" width="100"></div>
							<div style="text-align:center;vertical-align:middle;">图片需为375*375</div>
							<div><input type="file" value="<?php echo ($data["project_imageurl"]); ?>" name="project_imageurl" onchange="preview(this)"/></div>
							</div>
							<br>
							<div>封面显示文字</div>
							<br>
							<div ><input type="text" value="<?php echo ($data["cover_word"]); ?>" name="cover_word" style="width:500px; height:30px; border:1px solid black;"></div>
							<br>
							<div>价格</div>
							<br>
							<div ><input type="text" value="<?php echo ($data["project_price"]); ?>" name="project_price" style="width:500px; height:30px; border:1px solid black;"></div>
							<br>
							<div>出发城市</div>
							<br>
							<div ><input type="text" value="<?php echo ($data["project_startcity"]); ?>" name="project_startcity" style="width:500px; height:30px; border:1px solid black;"></div>
							<br>
							<div class="box">					
							<div class="demo1">
								<h3>出游日期</h3>
								<input class="inline laydate-icon" name="start_time" id="start" value="<?php echo (date('Y-m-d',$data["prostart_time"])); ?>">--
								<input class="inline laydate-icon" name="end_time" id="end" value="<?php echo (date('Y-m-d',$data["proend_time"])); ?>">
								
							</div>
							</div>
							<br>
							<div>标签</div>
							<br>
							<div ><input type="text" value="<?php echo ($data["project_lable"]); ?>" name="project_lable" style="width:500px; height:30px; border:1px solid black;"></div>
							<br>
							<div>展示窗配图</div>
							<br>
							<div style="width:500px;border:1px solid black;">
							<div class="control-group" id="typevalue">
									
									<div style="margin: 5px 5px;">
									<button id="add" type="button" class="btn btn-primary">添加展示图片</button>
									</div>
						<?php if(is_array($imagesdata)): foreach($imagesdata as $key=>$row): ?><img src="__PUBLIC__/Uploads/project/<?php echo ($row["pic"]); ?>" width="60" height="60"><?php endforeach; endif; ?>
									<div class="divvalue" style="margin-left:200px;">
										<input  type="file"  name="pic[]" style="width:300px;"/><a href="javascript:void(0)" class="tip-top">&nbsp;&nbsp;<i class="icon-remove"></i></a>
									</div>
								</div>
	                       </div>
							<div style="font-size:16px;font-family:'黑体'; text-align:center;vertical-align:middle;"><br>&nbsp;&nbsp;添加新图片，封面图片大小保证620*420</div>
							<br>
							<div>版块内容</div>
							<br>
							<div >
								<textarea  id='gdescription' cols='70' rows='4' value="<?php echo ($data["project_content"]); ?>" name="gdescription" placeholder='享受美好旅行，从现在开始；'></textarea></div>
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


</script>