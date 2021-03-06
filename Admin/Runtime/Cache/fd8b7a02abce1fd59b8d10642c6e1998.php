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
        
<link rel="stylesheet" type="text/css" href="__PUBLIC__/css/apage.css"/>
<div id="content">
        	<!-- 顶部右侧快捷操作按钮 开始 -->
		<div id="content-header">
			<h1>订单管理</h1>
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
			<a href="__URL__/lists" title="返回订单管理" class="tip-bottom"> 订单管理</a>
			<a href="#" class="current"> 订单列表</a>
		</div>
		<!-- 顶部面包屑导航 结束 -->
		<!-- 主体区域 -->
		<div class="container-fluid">
			<div class="row-fluid">
				<div class="span12">
					<!-- 组件盒子 开始 -->
					<form action="__URL__/caozuo" method="post" onsubmit="return confirm('确定删除!!!')">
					<div class="widget-box">
						<!-- 组件标题区域 -->
						<div class="widget-title">
							<h5>订单列表</h5>
						 	<input style="margin-top:5px;" type="submit" name="submitd" value="批量删除">
						</div>
						<!-- 组件内容区域 -->
						<div class="widget-content nopadding">
							<table class="table table-bordered data-table">
								<!-- 表头字段区域 -->
								<thead>
									<tr>	
										<th width="50"></th>
										<th>订单号</th>
										<th>收货人</th>
										<th>下单时间</th>
										<th>配送方式</th>
										<th>运费</th>	
										<th>应付金额</th>
										<th>订单状态</th>
										<th>操作</th>
									</tr>
								</thead>
								<!-- 表格主体数据区域 -->
								<tbody>
								<?php if(is_array($data)): foreach($data as $key=>$row): ?><tr>
										<td><input type="checkbox" name="all[]" value="<?php echo ($row["id"]); ?>"/></td>
										<td><?php echo ($row["ordernum"]); ?></td>
										<td><?php echo ($row["rname"]); ?></td>
										<td><?php echo (date("m-d H:i",$row["addtime"])); ?></td>
										<td><?php echo ($row["dilivery"]); ?></td>
										<td><?php echo ($row["transcosts"]); ?></td>
										<td><?php echo ($row["realprice"]); ?></td>
										
										<td>
											<?php if($row["orderstatus"] == 1): ?><font color="green">已确认</font>
													<?php else: ?><font color="red">未确认</font><?php endif; ?>
											<?php if($row["paystatus"] == 1): ?><font color="green">已付款</font>
													<?php else: ?><font color="red">未付款</font><?php endif; ?>
											<?php if($row["sendstatus"] == 1): ?><font color="green">已发货</font>
													<?php elseif($row["sendstatus"] == 2): ?><font color="red">未发货</font>
													<?php elseif($row["sendstatus"] == 3): ?>
													<font color="green">完成交易</font><?php endif; ?>
										</td>
										<td class="taskOptions">
										 <a href="__URL__/showsp/id/<?php echo ($row["id"]); ?>" class="tip-top" data-original-title="查看"><i class="icon-search"></i></a>&nbsp;&nbsp;&nbsp;

									    	<a href="__URL__/upda/id/<?php echo ($row["id"]); ?>" class="tip-top" data-original-title="编辑"><i class="icon-pencil"></i></a>&nbsp;&nbsp;&nbsp;

									    	<a href="__URL__/del/id/<?php echo ($row["id"]); ?>" class="tip-top" data-original-title="删除" onclick="return confirm('确定要删除!!!');"><i class="icon-remove"></i></a>&nbsp;&nbsp;
										</td>
									</tr><?php endforeach; endif; ?>
								</tbody>
							</table>  
						</div>
					</div>
					</form>
					<!-- 组件盒子 结束 -->
				</div>
			</div>

			 <!-- 提交提交按钮 -->
        

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