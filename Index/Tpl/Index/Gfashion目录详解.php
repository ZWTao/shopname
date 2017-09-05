﻿<?php
/*
 	+----------------------------------------------------------------------
	| MSS.M V1.0 [ 模版商铺系统前台模版分析说明 ]
	+----------------------------------------------------------------------
	| Copyright (c) 2013-2014 四重奏项目组 All rights reserved.
	+----------------------------------------------------------------------
	| Licensed SunChi/LAMP兄弟连
	+----------------------------------------------------------------------
	| Author: SC
	| Date:   1/8/2014 10:02
	+----------------------------------------------------------------------
*/

Gfashion 源文件包完整目录树结构 (仅供前台设计参考)

Gfashion
|
|-------css 		页面相关 css 代码存放目录(不包含 bootstrap 框架部分)
|		|
|       |-------		flexslider.css 				内容滚动插件
|       |-------		innerpage.css 				包括:导航控件 商品布局 产品详细信息单页布局 商品购物车
|       |-------		isotope.css  				同位素过滤，是一个 jQuery 插件，实现动态网页布局
|       |-------		jquery.nouislider.css 		基于 jQuery 区域范围滑块
|       |-------		minified.css 				基本 css 文件[微型 jQuery 加载库(网站上线使用),高压缩]
|       |-------		owl.carousel.css 			核心猫头鹰旋转木马的 css 文件, 用于支持移动端触屏
|       |-------		owl.theme.css  				核心猫头鹰旋转木马演示
|       |------- 		PIE.htc 					在 IE 下支持 css3 呈现
|		|------- 		responsive.css 				响应式自适应网页布局(慎用)
|		|
|-------font 		专门为 Twitter Boostrap 设计的图标字体库(witter bootstact框架文件)
|		|
|		|-------		此处放置字体，字体处理文件
|		|
|-------fonts 		基于index外联功能页面(现该目录书下放置的均为默认提示页面)	
|		|
|		|-------		此处为页面功能扩展区域
|		|
|-------images 		商品图片存放目录
|		|
|		|-------		此处商品图片分类存放
|		|
|-------img 		站点搭建图片存放目录
|		|
|		|-------		此处不单单是图片，包含其他
|		|
|-------js 			页面相关 js 存放目录(不包含bootstarp框架部分)
|		|
|		|-------		modernizr.min.js 			开源 javascript 库，拥有富特性检测工功能，可以实现对 HTML5 文档进行更好的控制，
|		|											自动检测浏览器支持哪些 html5/css3 新特性并且自动分配类名
|		|-------		minified.js 				基本的 js 文件,客户端 JavaScript 库,短小精悍，一定范围内可媲美 jQuery 
|-------rev-slider	轮播设置区域
|		|
|		|-------		此处轮播的不只是图片，包括链接效果
|		|
|
|-------	about-us.html contact-us2.html index.html products.html  		进入付费版功能模块默认提示页面
|-------	cart.html 														购物车页面
|-------	contact-us.html 												联系我们页面
|-------	checkout.html 													结账页面(页面注册，设置个人信息一体)
|-------	components.html  												调整页面布局页面(此功能不可用) 
|-------	index.html index2.html											主页面(备选页面)
|-------	products.html 													商品列表页
|-------	product.html 													商品详细信息页
|-------	store-locator.html 												定位商店位置




Index 页面列表 (PHPer 对应嵌入代码即可)

Index 
|-------	index.html 			主页面
|-------	products.html   	商品列表页
|-------	product.html    	商品详细信息页面
|-------	cart.html       	购物车页面
|-------	chekout.html    	结账页面(注册一体化)
|-------	unfinished.html 	未完成页面



Gfashion 后续增加页面列表 (PHPer 对应嵌入代码即可)

Index 
|-------expand  		扩展页面
|		|
|		|-------	login.html 					登录页面
|		|-------	register.html				注册页面
|		|-------	personal-information.html 	个人基本信息
|		|-------	personal-address.html 		收货地址管理
|		|-------	personal-order.html 		订单管理页面
|		|-------	personal-goods.html 		已购买的商品页面
|		|-------	personal-footsprints.html   我的足迹
|		|-------	personal-collects.html 		我的收藏



dist 第三方插件库 bootstrap (仅供页面设计参考)
dist
|-------css 			css 文件夹
|		|
|		|-------	bootstarp.css 				基础 css 库
|		|-------	bootstarp.min.css 			压缩版基础 css 库 (供上线使用)
|		|-------	bootstrap-theme.css 		主题相关 css 库
|		|-------	bootstrap-theme.min.css 	压缩过的和主题相关 css 库
|		|
|-------js				js 文件夹
|		|
|		|-------	bootstarp.js 				基础基于 bootstarp js 库
|		|-------	bootstarp.min.js 			压缩版基础 js 库
|		|
|-------font 			字体图标文件
|		|
|-------|	