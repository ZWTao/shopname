<?php if (!defined('THINK_PATH')) exit();?><div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
				<h4 class="modal-title" id="myModalLabel" style="text-align:center;">更新的banner图片</h4>
			</div>
			
		<form action="__URL__/replacebanner/id/<?php echo ($data["id"]); ?>"  method="post" enctype="multipart/form-data" class="form-horizontal">
			
			<div class="modal-body"> </div>
			
				<table width="530px">
				<tr>
				<td colspan="2" id="preview"><img src="__PUBLIC__/Uploads/banners/<?php echo ($data["banner_url"]); ?>"></td>
				</tr>
				<tr>
				<td ><input type="file" name="banpic" onchange="preview(this)"/></td>
				<td style="width:320px;height:40px;"><input type="text" name="banner_name" value="<?php echo ($data["banner_name"]); ?>"></td>
				</tr>
				<tr>
				<td colspan="2" style="text-align:left;">指定指向路径</td>
				</tr>
				<tr>
				<td colspan="2" style="text-align:center;vertical-align:middle;"> <div><input type="text" name="loadurl" value="<?php echo ($data["point_url"]); ?>" style="width:430px;height:30px;"/></div></td>
				</tr>
				
				</table>
				</form>
			</div>
			<div class="modal-footer" style="text-align:center;">
				<button type="submit" class="btn btn-primary">保存</button>   
			</div>
		</div>