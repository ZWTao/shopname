<?php if (!defined('THINK_PATH')) exit();?><div class="modal-dialog modal-lg">
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
				<div class="demo1">
					<h3>出游日期</h3>
					<input class="inline laydate-icon" name="start_time" id="start" value="<?php echo (date('Y-m-d',$data["start_time"])); ?>">--
					<input class="inline laydate-icon" name="end_time" id="end" value="<?php echo (date('Y-m-d',$data["end_time"])); ?>">
					
				</div>
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
				
						<?php if(is_array($imagesdata)): foreach($imagesdata as $key=>$row): endforeach; endif; ?>
					
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