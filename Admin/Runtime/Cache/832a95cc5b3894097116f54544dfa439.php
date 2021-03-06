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
              <!--   <li class="submenu" id="tmpl">
                    <a href="#"><i class="icon icon-bookmark"></i> <span>发布内容</span></a>
                    <ul>
                        <li><a href="__APP__/Release/banner">发布主页banner配图</a></li>
                         <li><a href="__APP__/Release/special">特价旅行活动发布</a></li>
                        <li><a href="__APP__/Release/project">旅行项目发布</a></li>
                        <li><a href="__APP__/Release/activity">热门活动发布</a></li>
                    </ul>
                </li> -->
                <li id="count"><a href=""><i class="icon icon-signal"></i> <span>报表统计</span></a></li>
                <li id="config"><a href="__APP__/Config/listsConfig"><i class="icon icon-cog"></i> <span>网站设置</span></a></li>
                    <!-- 基本信息、自定义导航、系统公告 ... -->
                <li id="friend"><a href="__APP__/Friend/lists"><i class="icon icon-heart"></i> <span>友情链接</span></a></li>
            </ul>
        </div>
        <!-- 侧边菜单栏结束 -->
<script type="text/javascript">
	$(function(){
	 	//地址省份province
		//获取市
		$("#province").change(function(){

			    var region_id = $(this).val();
			    var url = "__URL__/getcity/region_id/"+region_id;
				 $("#city").empty();
				 $("#area").empty();
			    var obj = $(this);
				 $.get(url,function(data){
	 				for(var i in data){
	 			
	 					$("#city").append('<option value="'+data[i].region_id+'">'+data[i].region_name+'</option>');
	 				}
						
				 },'json');
		})

		$("#city").change(function(){
			
			    var region_id = $(this).val();
			    var url = "__URL__/getarea/region_id/"+region_id;
			    var obj = $(this);
				 $.get(url,function(data){
	 				for(var i in data){
	 						
	 					$("#area").append('<option value="'+data[i].region_id+'">'+data[i].region_name+'</option>');
	 				}
						
				 },'json');
		})
	})
</script>

<div id="content">
	<!-- 顶部右侧快捷操作按钮 开始 -->
		<div id="content-header">
			<h1>用户管理</h1>
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
			<a href="__URL__/lists" title="返回用户管理" class="tip-bottom"> 用户管理</a>
			<a href="#" class="current"> 编辑会员资料</a>
		</div>
		<!-- 顶部面包屑导航 结束 -->
		<!-- 主体区域 -->
		<div class="container-fluid">
			<div class="row-fluid">
				<div class="span12">
					<!-- 组件盒子 开始 -->
					<div class="widget-box">
						<!-- 组件标题区域 -->
						<div class="widget-title">
							<span class="icon"><i class="icon-align-justify"></i></span>
							<h5>编辑会员资料</h5>
						</div>
						<!-- 组件内容区域 -->
						<div class="widget-content nopadding">
							<!-- 编辑表单 -->
							<form action="__URL__/edit" method="post" enctype="multipart/form-data" class="form-horizontal">
								<input type="hidden" name="id" value="<?php echo ($data["id"]); ?>">
								<div class="control-group">
									<label class="control-label">用户名：</label>
									<div class="controls"><input type="text" name="username" value="<?php echo ($data["username"]); ?>" readonly /></div>
								</div>
								<div class="control-group">
									<label class="control-label">密码：</label>
									<div class="controls"><input type="password" name="userpwd" /></div>
								</div>
								<div class="control-group">
									<label class="control-label">头像：</label>
									<div class="controls"><input type="file" name="headpic" /><a href="__PUBLIC__/Uploads/headpic/<?php echo ($data["headpic"]); ?>">&nbsp;&nbsp;<img src="__PUBLIC__/Uploads/headpic/<?php echo ($data["headpic"]); ?>" width="32" height="32" title="点击查看大图"></a></div>
								</div>
								<div class="control-group">
									<label class="control-label">邮箱：</label>
									<div class="controls"><input type="text" value="<?php echo ($data["email"]); ?>" readonly /></div>
								</div>
								<div class="control-group">
									<label class="control-label">用户权限：</label>
									<div class="controls">
										<select name="ustatus">
											<option value="1" <?php if($data["ustatus"] == 1): ?>selected<?php endif; ?>>正常登陆</option>
											<option value="2" <?php if($data["ustatus"] == 2): ?>selected<?php endif; ?>>尚未激活</option>
											<option value="3" <?php if($data["ustatus"] == 3): ?>selected<?php endif; ?>>限制登录</option>
										</select>
									</div>
								</div>
								<div class="control-group">
									<label class="control-label">性别：</label>
									<div class="controls">
										<select name="sex">
											<option value="3" <?php if($info["sex"] == 3): ?>selected<?php endif; ?>>保密</option>
											<option value="1" <?php if($info["sex"] == 1): ?>selected<?php endif; ?>>男</option>
											<option value="2" <?php if($info["sex"] == 2): ?>selected<?php endif; ?>>女</option>
										</select>
									</div>
								</div>
								<div class="control-group">
									<label class="control-label">生日：</label>
									<div class="controls">
										<select style="width:80px;" name="year">
											<?php $__FOR_START_32387__=1938;$__FOR_END_32387__=2014;for($i=$__FOR_START_32387__;$i < $__FOR_END_32387__;$i+=1){ ?><option <?php if($info['birthday'][0] == $i): ?>selected<?php endif; ?>><?php echo ($i); ?></option><?php } ?>
										</select>
										<select style="width:60px;" name="month">
											<?php $__FOR_START_12416__=1;$__FOR_END_12416__=12;for($i=$__FOR_START_12416__;$i < $__FOR_END_12416__;$i+=1){ ?><option <?php if($info['birthday'][1] == $i): ?>selected<?php endif; ?>><?php echo ($i); ?></option><?php } ?>
										</select>
										<select style="width:60px;" name="day">
											<?php $__FOR_START_8509__=1;$__FOR_END_8509__=31;for($i=$__FOR_START_8509__;$i < $__FOR_END_8509__;$i+=1){ ?><option <?php if($info['birthday'][2] == $i): ?>selected<?php endif; ?>><?php echo ($i); ?></option><?php } ?>
										</select>
									</div>
								</div>
								<div class="control-group">
									<label class="control-label">居住地</label>
									<div class="controls">
										<select id="province" style="width:100px;" name="province">
											<?php if(is_array($prodata)): foreach($prodata as $key=>$vo): ?><option value="<?php echo ($vo["region_id"]); ?>" <?php if($vo['region_name'] == $info['city'][0]): ?>selected<?php endif; ?>><?php echo ($vo["region_name"]); ?></option><?php endforeach; endif; ?>
										</select>&nbsp;&nbsp;
										<select id="city" style="width:100px;" name="city" >
											<option value="<?php echo ($info["city"]["1"]); ?>"><?php echo ($info["city"]["1"]); ?></option>
										</select>&nbsp;&nbsp;
										<select id="area" style="width:120px;" name="county">
											<option value="<?php echo ($info["city"]["2"]); ?>"><?php echo ($info["city"]["2"]); ?></option>
										</select>
									</div>
								</div>
								<div class="control-group">

									<label class="control-label">真实姓名：</label>
									<div class="controls"><input type="text" value="<?php echo ($info["realname"]); ?>" name="realname" /></div>
								</div>
								<div class="control-group">
									<label class="control-label">身份证号：</label>
									<div class="controls"><input type="text" value="<?php echo ($info["idcard"]); ?>" name="idcard" /></div>
								</div>
								<div class="control-group">
									<label class="control-label">联系电话：</label>
									<div class="controls"><input type="text" value="<?php echo ($info["cellphone"]); ?>" name="cellphone" /></div>
								</div>

								<!-- 提交提交按钮 -->
								<div class="form-actions">
									<button type="submit" class="btn btn-primary">保存</button>
								</div>
							</form>
						</div>
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