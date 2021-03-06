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
		})
</script>
<div id="content">
	<!-- 顶部右侧快捷操作按钮 开始 -->
		<div id="content-header">
			<h1>商品管理</h1>
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
			<a href="__URL__/lists" title="返回用户管理" class="tip-bottom"> 商品管理</a>
			<a href="#" class="current"> 添加</a>
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
							<h5>添加商品</h5>			
						</div>
						<!-- 组件内容区域 -->
						<div class="widget-content nopadding">
							<!-- 编辑表单 -->
							<form action="__URL__/inse"  method="post" enctype="multipart/form-data" class="form-horizontal">
								<div class="control-group">
									<label class="control-label">商品名称：</label>
									<div class="controls"><input type="text" name="gname" size="100"/></div>
								</div>
						
								<!-- <div class="control-group">
								<?php if(is_array($typedata)): foreach($typedata as $key=>$vo): ?><table border="1" bordercolor="#CCCCCC" style="float:left;margin-left:200px;">
									<tr>
										<td colspan="2" align="center"><?php echo ($vo["typename"]); ?></td>
									</tr>
									<tr>
										<td>规格值</td>
										<td>商品数量</td>
									</tr>
								
									<?php if(is_array($vo["typevalue"])): foreach($vo["typevalue"] as $key=>$row): ?><tr>
										<td>
										<?php echo ($row["typevalue"]); ?>:<input type="checkbox" name="gtype[]" value="<?php echo ($row["id"]); ?>"/>&nbsp;&nbsp;&nbsp;&nbsp;
										</td>
										<td>
										<input type="text" name="gcount[]" style="width:176px;"/>
										</td><?php endforeach; endif; ?>
									</tr>
									</table><?php endforeach; endif; ?>
								</div>
								 -->


							<div class="control-group">
								<label class="control-label">商品数量：</label>
								<div class="controls"><input type="text" name="gtotal" size="100"/></div>
							</div> 

							<div class="control-group">
							<label class="control-label">商品规格：</label>
								<?php if(is_array($typedata)): foreach($typedata as $key=>$vo): ?><table border="1" bordercolor="#CCCCCC" style="float:left;margin-left:20px;margin-top:10px;">
									<tr>
										<th align="center"><?php echo ($vo["typename"]); ?>:</th>
									
									<?php if(is_array($vo["typevalue"])): foreach($vo["typevalue"] as $key=>$row): ?><td>
										<?php echo ($row["typevalue"]); ?>:<input type="checkbox" name="gtype[]" value="<?php echo ($row["id"]); ?>"/>&nbsp;&nbsp;&nbsp;&nbsp;
										</td><?php endforeach; endif; ?>
									</tr>
									</table><?php endforeach; endif; ?>
							</div>

								
								<div class="control-group" style="margin-top:20px;">
									<label class="control-label">商品货号：</label>
									<div class="controls"><input type="text" name="gnum" /></div>
								</div>
								<div class="control-group">
									<label class="control-label">市场价格：</label>
									<div class="controls"><input type="text" name="mprice" /></div>
								</div>
								<div class="control-group">
									<label class="control-label">本商城价格：</label>
									<div class="controls"><input type="text" name="price" /></div>
								</div>
								
								<div class="control-group">
									<label class="control-label">所属分类：</label>
									<div class="controls">
											<select name="classid" style="width:200px;">
                                            <option value="0" >顶级分类</option>
					     				 	<?php if(is_array($data)): $i = 0; $__LIST__ = $data;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?><option value="<?php echo ($vo["id"]); ?>" <?php echo ($vo['id'] == $data['classid'] ? 'selected' : ''); ?> >
						                		<?php $__FOR_START_19900__=1;$__FOR_END_19900__=$vo["num"];for($i=$__FOR_START_19900__;$i < $__FOR_END_19900__;$i+=1){ ?><span style="color: #cdcdcd;">|-----&nbsp;</span><?php } echo ($vo["cname"]); ?>
						                	</option><?php endforeach; endif; else: echo "" ;endif; ?>
    									</select>
									</div>
								</div>
					
								<!-- <div class="control-group">
									<button id="add" type="button" class="btn btn-success">增加商品图片</button>
									<label class="control-label">商品图片：</label>
									<div class="controls"><input type="file" name="pic" /></div>
								</div>
											 -->
								<div class="control-group" id="typevalue">
									<label class="control-label">商品图片：</label>
									<div class="controls" >
									<button id="add" type="button" class="btn btn-primary">增加商品图片</button>
									</div>

									<div class="divvalue" style="margin-left:200px;">
										<input  type="file"  name="pic[]" style="width:300px;"/><a href="javascript:void(0)" class="tip-top">&nbsp;&nbsp;<i class="icon-remove"></i></a>
									</div>
								</div>

								<div class="control-group">
									<label class="control-label">是否上架：</label>
									<div class="controls">
											<select name="issell" style="width:60px;">
												<option value="1">是</option>
												<option value="2">否</option>
											</select>
									</div>
								</div>



								<div class="control-group">
									<label class="control-label">商品描述：</label>
									<div class="controls">
									<textarea id='gdescription' cols='70' rows='2' name="gdescription" placeholder='请输入相关商品描述'></textarea></div>
								</div>
								<!-- 提交提交按钮 -->
								<div class="form-actions">
									<button type="submit" class="btn btn-primary">添加</button>
								</div>
							</form>
						</div>
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
<SCRIPT type=text/javascript>

//var editor = UM.getEditor('myEditor',{initialFrameWidth:600});

    var editor = UM.getEditor('gdescription',{
            
            //默认的编辑区域高度
            initialFrameHeight:100,
            initialFrameWidth:725
            //更多其他参数，请参考umeditor.config.js中的配置项
        });

</SCRIPT>