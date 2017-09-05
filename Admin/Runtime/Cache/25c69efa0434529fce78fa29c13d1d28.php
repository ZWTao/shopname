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
                <li id="count"><a href=""><i class="icon icon-signal"></i> <span>报表统计</span></a></li>
                <li id="config"><a href="__APP__/Config/listsConfig"><i class="icon icon-cog"></i> <span>网站设置</span></a></li>
                    <!-- 基本信息、自定义导航、系统公告 ... -->
                <li id="friend"><a href="__APP__/Friend/lists"><i class="icon icon-heart"></i> <span>友情链接</span></a></li>
            </ul>
        </div>
        <!-- 侧边菜单栏结束 -->


<div id="content">
	<!-- 顶部右侧快捷操作按钮 开始 -->
		<div id="content-header">
			<h1>banner配图</h1>
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
			<a href="__URL__/banner" title="返回banner配图" class="tip-bottom"> 发布内容</a>
			<a href="#" class="current">发布主页banner配图</a>
		</div>
		<!-- 顶部面包屑导航 结束 -->
		<!-- 主体区域 -->
		<div class="container-fluid">
			<!-- <div class="row-fluid">
				<div class="span3 offset9" >
					<button class="btn"> 添加替换banner</button>
				</div>
			</div> -->
<div class="row-fluid">
<div class="span12">
	<!-- 组件盒子 开始 -->
	<div class="widget-box">
		<!-- 组件标题区域 -->
		<div class="widget-title"><h4>替换/添加banner图</h4></div>
		<!-- 组件内容区域 -->
		<div class="widget-content nopadding">
			<table class="table table-bordered data-table" height="275px">
				<!-- 表头字段区域 -->
				<thead>
				</thead>
				<!-- 表格主体数据区域 -->
				<tbody>
				
					<tr ><?php if(is_array($data)): foreach($data as $key=>$vo): ?><td style="font-size:26px;font-family:'黑体';text-align:center;vertical-align:middle;"><img src="__PUBLIC__/Uploads/banners/<?php echo ($vo["banner_url"]); ?>" width="420"></td>
						<td style="font-size:26px;font-family:'黑体';text-align:center;vertical-align:middle;"><?php echo (date("Y-m-d",$vo["upload_time"])); ?></td>
						<td style="font-size:26px;font-family:'黑体';text-align:right;vertical-align:middle;"><div><button type="button" class="btn btn-default" <a href="__URL__/rebanner/id/<?php echo ($vo["id"]); ?>" data-toggle="modal" data-target="#replaceModal">替换</button></div></td>
						<td style="font-size:26px;font-family:'黑体';vertical-align:middle;"><div><button type="button" class="btn btn-default"><a href="__URL__/delbanner/id/<?php echo ($vo["id"]); ?>"></a>删除</button></div></td><?php endforeach; endif; ?>
					</tr>
					
					<tr>
						<td style="text-align:center;vertical-align:middle;font-size:175px;font-family:'宋体';" data-toggle="modal" data-target="#myModal">+</td>
						<td colspan="3" style="font-size:26px;font-family:'黑体';vertical-align:middle;">&nbsp;&nbsp;添加新图片，封面图片大小保证1920*440</td>
					</tr>

				
				</tbody>
			</table> 
			<!--添加banner的模态框-->
			<div class="col-md-offset-3 col-md-5">
			<div class="row checkbox">
				<div class="col-md-12">
					<label>
		 				<form action="__URL__/insbanner"  method="post"  enctype="multipart/form-data" class="form-horizontal">
						<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" >
							<div class="modal-dialog">
								<div class="modal-content">
									<div class="modal-header">
										<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
										<h4 class="modal-title" id="myModalLabel" style="text-align:center;">添加banner图片</h4>
									</div>
									<div class="modal-body">
										<table  width="530px">
										<tr >
										<td colspan="2" id="preview"></td>
										</tr>
										<tr>
										
										<td ><input type="file" name="banpic" onchange="preview(this)"/></td>
										<td style="width:320px;height:40px;"><input type="text" name="banner_name"></td>
										</tr>
										<tr>
										<td colspan="2" style="text-align:left;">指定指向路径</td>
										</tr>
										<tr>
										<td colspan="2" style="text-align:center;vertical-align:middle;"> <div><input type="text" name="loadurl" style="width:430px;height:30px;"/></div></td>
										</tr>
										</table>
									</div>
									<div class="modal-footer" style="text-align:center;">
										<button type="submit" class="btn btn-primary">保存</button>   
									</div>
								</div>
							</div>
						</div>
						</form>
					</label>
				</div>
			</div>
		</div> <span id="tip"> </span>
			<!--添加banner的模态框-->
			<!--更新的banner配图的模态框-->
			<div class="col-md-offset-3 col-md-5">
			<div class="row checkbox">
				<div class="col-md-12">
					<label>
					<form action="__URL__/replacebanner/id/<?php echo ($vo["id"]); ?>"  method="post" enctype="multipart/form-data" class="form-horizontal">
						<div class="modal fade" id="replaceModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" >
							<div class="modal-dialog">
								<div class="modal-content">
									<div class="modal-header">
										<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
										<h4 class="modal-title" id="myModalLabel" style="text-align:center;">更新的banner图片</h4>
									</div>
									<?php if(is_array($data)): foreach($data as $key=>$vo): ?><div class="modal-body"> </div>
										<table width="530px">
										<tr>
										<td colspan="2" id="preview"><img src="__PUBLIC__/Uploads/banners/<?php echo ($vo["banner_url"]); ?>"></td>
										</tr>
										<tr>
										<td ><input type="file" name="banpic" onchange="preview(this)"/></td>
										<td style="width:320px;height:40px;"><input type="text" name="banner_name" value="<?php echo ($vo["banner_name"]); ?>"></td>
										</tr>
										<tr>
										<td colspan="2" style="text-align:left;">指定指向路径</td>
										</tr>
										<tr>
										<td colspan="2" style="text-align:center;vertical-align:middle;"> <div><input type="text" name="loadurl" value="<?php echo ($vo["point_url"]); ?>" style="width:430px;height:30px;"/></div></td>
										</tr><?php endforeach; endif; ?>
										</table>
									</div>
									<div class="modal-footer" style="text-align:center;">
										<button type="submit" class="btn btn-primary">保存</button>   
									</div>
								</div>
							</div>
						</div>
						</form>
					</label>
				</div>
			</div>
		</div> <span id="tip"> </span>
			<!--更新的banner配图的模态框-->
		</div>
	</div>
	<!-- 组件盒子 结束 -->

</div>
</div>



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
<!--<script>
/*ajax请求要改变的banner配图*/
			$("#tihaun").click(function(){

					var tihaun = $(this).attr("tihaun");
					var url = "__URL__/replacebanner/id/"+tihaun;
					var obj = $(this);

		})

</script>-->