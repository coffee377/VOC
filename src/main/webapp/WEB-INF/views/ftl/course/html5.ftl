<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>权威的HTML5培训课程，中国IT职业教育领先品牌-蔻丁教育</title>
	<meta http-equiv=X-UA-Compatible content="IE=edge,chrome=1">
	<meta name="renderer" content="webkit">
	<meta name="keywords" conetent="HTML5培训,HTML5课程,移动前端培训,前端培训,移动前端开发">
	<meta name="description"
		  content="蔻丁教育移动前端开发课程，融合了HTML5培训课程、CSS3基础课程和移动前端交互JavaScript+JQuery+Ajex课程。蔻丁教育拥有最完善的移动前端开发，提供最专业的移动前端培训课程。">
<#include "../common/base_css.ftl">
	<link rel="stylesheet" type="text/css" href="${webRoot}/css/course/reset.css">
	<link rel="stylesheet" type="text/css" href="${webRoot}/css/course/html5_20170105.css">
<#--  <link rel="icon" href="http://www.mobiletrain.org/favicon.ico" type="image/x-icon" />-->
	<link rel="stylesheet" href="${webRoot}/css/course/base_bottom.css"/>
	<style>
		.banner {
			height: 573px;
			background: url(${webRoot}/images/course/banner.jpg) no-repeat center top;
			position: relative;
		}

		.xinzi {
			background: url(${webRoot}/images/course/xz_bg.jpg) no-repeat center top;
			height: 929px;
		}

		.jiangshi {
			height: 1019px;
			background: url(${webRoot}/images/course/js_bg.jpg) no-repeat center top;
		}

		.table_Hd tr th:nth-child(6):after {
			content: "";
			width: 107px;
			height: 5px;
			position: absolute;
			background: url(${webRoot}/images/course/xz_after.png) no-repeat center top;
			left: -7px;
			top: -5px;
		}

		.kc_list1 li span:nth-child(1) {
			width: 74px;
			height: 74px;
			border-radius: 50%;
			border: 4px solid #d5d5d5;
			margin-bottom: 15px;
			background: url(${webRoot}/images/course/kc_list1_img1.png) no-repeat center;
		}

		.kc_list1 li:nth-child(2) span:nth-child(1) {
			background: url(${webRoot}/images/course/kc_list1_img2.png) no-repeat center;
		}

		.kc_list1 li:nth-child(3) span:nth-child(1) {
			background: url(${webRoot}/images/course/kc_list1_img3.png) no-repeat center;
		}

		.kc_list1 li:nth-child(4) span:nth-child(1) {
			background: url(${webRoot}/images/course/kc_list1_img4.png) no-repeat center;
		}

		.kc_list1 li:nth-child(5) span:nth-child(1) {
			background: url(${webRoot}/images/course/kc_list1_img5.png) no-repeat center;
		}

		.kc_list1 li:nth-child(6) span:nth-child(1) {
			background: url(${webRoot}/images/course/kc_list1_img6.png) no-repeat center;
		}

		.kc_list1 li.hover {
			width: 270px;
			height: 195px;
			padding-top: 25px;
			border: 0;
			color: #fff;
			margin-top: 0px;
			background: url(${webRoot}/images/course/kc_list1_bg.png) no-repeat center top;
		}

		.kc_list1 li.hover span:nth-child(1) {
			border: 4px solid #fff;
			background: url(${webRoot}/images/course/kc_list1_img1_hover.png) no-repeat center;
		}

		.kc_list1 li:nth-child(2).hover span:nth-child(1) {
			background: url(${webRoot}/images/course/kc_list1_img2_hover.png) no-repeat center;
		}

		.kc_list1 li:nth-child(3).hover span:nth-child(1) {
			background: url(${webRoot}/images/course/kc_list1_img3_hover.png) no-repeat center;
		}

		.kc_list1 li:nth-child(4).hover span:nth-child(1) {
			background: url(${webRoot}/images/course/kc_list1_img4_hover.png) no-repeat center;
		}

		.kc_list1 li:nth-child(5).hover span:nth-child(1) {
			background: url(${webRoot}/images/course/kc_list1_img5_hover.png) no-repeat center;
		}

		.kc_list1 li:nth-child(6).hover span:nth-child(1) {
			background: url(${webRoot}/images/course/kc_list1_img6_hover.png) no-repeat center;
		}

		.kc_wrap .kc_jieduan .kc_tubiao {
			display: block;
			width: 70px;
			height: 70px;
			border-radius: 50%;
			background: #1377a0 url(${webRoot}/images/course/kc_list1_img1_hover.png) no-repeat center;
			margin-right: 13px;
		}

		.kc_wrap .kc_jieduan:nth-child(2) .kc_tubiao {
			background: #1377a0 url(${webRoot}/images/course/kc_list1_img2_hover.png) no-repeat center;
		}

		.kc_wrap .kc_jieduan:nth-child(3) .kc_tubiao {
			background: #1377a0 url(${webRoot}/images/course/kc_list1_img3_hover.png) no-repeat center;
		}

		.kc_wrap .kc_jieduan:nth-child(4) .kc_tubiao {
			background: #1377a0 url(${webRoot}/images/course/kc_list1_img4_hover.png) no-repeat center;
		}

		.kc_wrap .kc_jieduan:nth-child(5) .kc_tubiao {
			background: #1377a0 url(${webRoot}/images/course/kc_list1_img5_hover.png) no-repeat center;
		}

		.kc_wrap .kc_jieduan:nth-child(6) .kc_tubiao {
			background: #1377a0 url(${webRoot}/images/course/kc_list1_img6_hover.png) no-repeat center;
		}

		.liangxin ul li:nth-child(1) p:nth-child(1) span:nth-child(1) {
			background: #fff url(${webRoot}/images/course/lx_img1.png) no-repeat center;
		}

		.liangxin ul li:nth-child(2) p:nth-child(1) span:nth-child(1) {
			background: #fff url(${webRoot}/images/course/lx_img2.png) no-repeat center;
		}

		.liangxin ul li:nth-child(3) p:nth-child(1) span:nth-child(1) {
			background: #fff url(${webRoot}/images/course/lx_img3.png) no-repeat center;
		}

		.liangxin ul li:nth-child(4) p:nth-child(1) span:nth-child(1) {
			background: #fff url(${webRoot}/images/course/lx_img4.png) no-repeat center;
		}

		.liangxin ul li:nth-child(5) p:nth-child(1) span:nth-child(1) {
			background: #fff url(${webRoot}/images/course/lx_img5.png) no-repeat center;
		}

		.liangxin ul li:nth-child(6) p:nth-child(1) span:nth-child(1) {
			background: #fff url(${webRoot}/images/course/lx_img6.png) no-repeat center;
		}

		.liangxin ul li:nth-child(7) p:nth-child(1) span:nth-child(1) {
			background: #fff url(${webRoot}/images/course/lx_img7.png) no-repeat center;
		}

		.liangxin ul li:nth-child(8) p:nth-child(1) span:nth-child(1) {
			background: #fff url(${webRoot}/images/course/lx_img8.png) no-repeat center;
		}

		.liangxin ul li:nth-child(1) p:nth-child(1) span:nth-child(2) {
			background: url(${webRoot}/images/course/lx_img1_hover.png) no-repeat center;
		}

		.liangxin ul li:nth-child(2) p:nth-child(1) span:nth-child(2) {
			background: url(${webRoot}/images/course/lx_img2_hover.png) no-repeat center;
		}

		.liangxin ul li:nth-child(3) p:nth-child(1) span:nth-child(2) {
			background: url(${webRoot}/images/course/lx_img3_hover.png) no-repeat center;
		}

		.liangxin ul li:nth-child(4) p:nth-child(1) span:nth-child(2) {
			background: url(${webRoot}/images/course/lx_img4_hover.png) no-repeat center;
		}

		.liangxin ul li:nth-child(5) p:nth-child(1) span:nth-child(2) {
			background: url(${webRoot}/images/course/lx_img5_hover.png) no-repeat center;
		}

		.liangxin ul li:nth-child(6) p:nth-child(1) span:nth-child(2) {
			background: url(${webRoot}/images/course/lx_img6_hover.png) no-repeat center;
		}

		.liangxin ul li:nth-child(7) p:nth-child(1) span:nth-child(2) {
			background: url(${webRoot}/images/course/lx_img7_hover.png) no-repeat center;
		}

		.liangxin ul li:nth-child(8) p:nth-child(1) span:nth-child(2) {
			background: url(${webRoot}/images/course/lx_img8_hover.png) no-repeat center;
		}

		.huanjing {
			height: 1032px;
			background: url(${webRoot}/images/course/hj_bg.jpg) no-repeat center top;
		}

		.zx_list li {
			width: 182px;
			float: left;
			margin: 0 109px;
			font-size: 20px;
			text-align: center;
			font-weight: 900;
			background: url(${webRoot}/images/course/zx_img1.png) no-repeat center top;

		}

		.zx_list li:nth-child(2) {
			background: url(${webRoot}/images/course/zx_img2.png) no-repeat center top;
		}

		.zx_list li:nth-child(3) {
			background: url(${webRoot}/images/course/zx_img3.png) no-repeat center top;
		}

		.zx_list li:nth-child(1):hover {
			background: url(${webRoot}/images/course/zx_img1_hover.png) no-repeat center top;
		}

		.zx_list li:nth-child(2):hover {
			background: url(${webRoot}/images/course/zx_img2_hover.png) no-repeat center top;
		}

		.zx_list li:nth-child(3):hover {
			background: url(${webRoot}/images/course/zx_img3_hover.png) no-repeat center top;
		}

		.xinzi {
			background: url(${webRoot}/images/course/xz_bg.jpg) no-repeat center top;
			height: 929px;
		}

		.table_Hd tr th:nth-child(6):after {
			content: "";
			width: 107px;
			height: 5px;
			position: absolute;
			background: url(${webRoot}/images/course/xz_after.png) no-repeat center top;
			left: -7px;
			top: -5px;
		}

		.jiangshi {
			height: 1019px;
			background: url(${webRoot}/images/course/js_bg.jpg) no-repeat center top;
		}

		.kc_list1 li span:nth-child(1) {
			width: 74px;
			height: 74px;
			border-radius: 50%;
			border: 4px solid #d5d5d5;
			margin-bottom: 15px;
			background: url(${webRoot}/images/course/kc_list1_img1.png) no-repeat center;
		}

		.kc_list1 li:nth-child(2) span:nth-child(1) {
			background: url(${webRoot}/images/course/kc_list1_img2.png) no-repeat center;
		}

		.kc_list1 li:nth-child(3) span:nth-child(1) {
			background: url(${webRoot}/images/course/kc_list1_img3.png) no-repeat center;
		}

		.kc_list1 li:nth-child(4) span:nth-child(1) {
			background: url(${webRoot}/images/course/kc_list1_img4.png) no-repeat center;
		}

		.kc_list1 li:nth-child(5) span:nth-child(1) {
			background: url(${webRoot}/images/course/kc_list1_img5.png) no-repeat center;
		}

		.kc_list1 li:nth-child(6) span:nth-child(1) {
			background: url(${webRoot}/images/course/kc_list1_img6.png) no-repeat center;
		}

		.kc_list1 li.hover span:nth-child(1) {
			border: 4px solid #fff;
			background: url(${webRoot}/images/course/kc_list1_img1_hover.png) no-repeat center;
		}

		.kc_list1 li:nth-child(2).hover span:nth-child(1) {
			background: url(${webRoot}/images/course/kc_list1_img2_hover.png) no-repeat center;
		}

		.kc_list1 li:nth-child(3).hover span:nth-child(1) {
			background: url(${webRoot}/images/course/kc_list1_img3_hover.png) no-repeat center;
		}

		.kc_list1 li:nth-child(4).hover span:nth-child(1) {
			background: url(${webRoot}/images/course/kc_list1_img4_hover.png) no-repeat center;
		}

		.kc_list1 li:nth-child(5).hover span:nth-child(1) {
			background: url(${webRoot}/images/course/kc_list1_img5_hover.png) no-repeat center;
		}

		.kc_list1 li:nth-child(6).hover span:nth-child(1) {
			background: url(${webRoot}/images/course/kc_list1_img6_hover.png) no-repeat center;
		}

		.kc_list1 li.hover {
			width: 270px;
			height: 195px;
			padding-top: 25px;
			border: 0;
			color: #fff;
			margin-top: 0px;
			background: url(${webRoot}/images/course/kc_list1_bg.png) no-repeat center top;
		}

		.kc_wrap .kc_jieduan .kc_tubiao {
			display: block;
			width: 70px;
			height: 70px;
			border-radius: 50%;
			background: #1377a0 url(${webRoot}/images/course/kc_list1_img1_hover.png) no-repeat center;
			margin-right: 13px;
		}

		.kc_wrap .kc_jieduan:nth-child(2) .kc_tubiao {
			background: #1377a0 url(${webRoot}/images/course/kc_list1_img2_hover.png) no-repeat center;
		}

		.kc_wrap .kc_jieduan:nth-child(3) .kc_tubiao {
			background: #1377a0 url(${webRoot}/images/course/kc_list1_img3_hover.png) no-repeat center;
		}

		.kc_wrap .kc_jieduan:nth-child(4) .kc_tubiao {
			background: #1377a0 url(${webRoot}/images/course/kc_list1_img4_hover.png) no-repeat center;
		}

		.kc_wrap .kc_jieduan:nth-child(5) .kc_tubiao {
			background: #1377a0 url(${webRoot}/images/course/kc_list1_img5_hover.png) no-repeat center;
		}

		.kc_wrap .kc_jieduan:nth-child(6) .kc_tubiao {
			background: #1377a0 url(${webRoot}/images/course/kc_list1_img6_hover.png) no-repeat center;
		}

		.liangxin ul li:nth-child(1) p:nth-child(1) span:nth-child(1) {
			background: #fff url(${webRoot}/images/course/lx_img1.png) no-repeat center;
		}

		.liangxin ul li:nth-child(2) p:nth-child(1) span:nth-child(1) {
			background: #fff url(${webRoot}/images/course/lx_img2.png) no-repeat center;
		}

		.liangxin ul li:nth-child(3) p:nth-child(1) span:nth-child(1) {
			background: #fff url(${webRoot}/images/course/lx_img3.png) no-repeat center;
		}

		.liangxin ul li:nth-child(4) p:nth-child(1) span:nth-child(1) {
			background: #fff url(${webRoot}/images/course/lx_img4.png) no-repeat center;
		}

		.liangxin ul li:nth-child(5) p:nth-child(1) span:nth-child(1) {
			background: #fff url(${webRoot}/images/course/lx_img5.png) no-repeat center;
		}

		.liangxin ul li:nth-child(6) p:nth-child(1) span:nth-child(1) {
			background: #fff url(${webRoot}/images/course/lx_img6.png) no-repeat center;
		}

		.liangxin ul li:nth-child(7) p:nth-child(1) span:nth-child(1) {
			background: #fff url(${webRoot}/images/course/lx_img7.png) no-repeat center;
		}

		.liangxin ul li:nth-child(8) p:nth-child(1) span:nth-child(1) {
			background: #fff url(${webRoot}/images/course/lx_img8.png) no-repeat center;
		}

		.liangxin ul li:nth-child(1) p:nth-child(1) span:nth-child(2) {
			background: url(${webRoot}/images/course/lx_img1_hover.png) no-repeat center;
		}

		.liangxin ul li:nth-child(2) p:nth-child(1) span:nth-child(2) {
			background: url(${webRoot}/images/course/lx_img2_hover.png) no-repeat center;
		}

		.liangxin ul li:nth-child(3) p:nth-child(1) span:nth-child(2) {
			background: url(${webRoot}/images/course/lx_img3_hover.png) no-repeat center;
		}

		.liangxin ul li:nth-child(4) p:nth-child(1) span:nth-child(2) {
			background: url(${webRoot}/images/course/lx_img4_hover.png) no-repeat center;
		}

		.liangxin ul li:nth-child(5) p:nth-child(1) span:nth-child(2) {
			background: url(${webRoot}/images/course/lx_img5_hover.png) no-repeat center;
		}

		.liangxin ul li:nth-child(6) p:nth-child(1) span:nth-child(2) {
			background: url(${webRoot}/images/course/lx_img6_hover.png) no-repeat center;
		}

		.liangxin ul li:nth-child(7) p:nth-child(1) span:nth-child(2) {
			background: url(${webRoot}/images/course/lx_img7_hover.png) no-repeat center;
		}

		.liangxin ul li:nth-child(8) p:nth-child(1) span:nth-child(2) {
			background: url(${webRoot}/images/course/lx_img8_hover.png) no-repeat center;
		}

		.huanjing {
			height: 1032px;
			background: url(${webRoot}/images/course/hj_bg.jpg) no-repeat center top;
		}

		.zx_list li:nth-child(2) {
			background: url(${webRoot}/images/course/zx_img2.png) no-repeat center top;
		}

		.zx_list li:nth-child(3) {
			background: url(${webRoot}/images/course/zx_img3.png) no-repeat center top;
		}

		.zx_list li:nth-child(1):hover {
			background: url(${webRoot}/images/course/zx_img1_hover.png) no-repeat center top;
		}

		.zx_list li:nth-child(2):hover {
			background: url(${webRoot}/images/course/zx_img2_hover.png) no-repeat center top;
		}

		.zx_list li:nth-child(3):hover {
			background: url(${webRoot}/images/course/zx_img3_hover.png) no-repeat center top;
		}

		.zx_list li {
			width: 182px;
			float: left;
			margin: 0 109px;
			font-size: 20px;
			text-align: center;
			font-weight: 900;
			background: url(${webRoot}/images/course/zx_img1.png) no-repeat center top;

		}

		.banner {
			height: 573px;
			background: url(${webRoot}/images/course/banner.jpg) no-repeat center top;
			position: relative;
		}
	</style>
</head>
<body>
<div id="header">
<#include "../common/header.ftl">
</div>
<div id="cont">
	<div class="banner">
		<a href="http://tb.53kf.com/code/client/10132404/3" target="_blank"></a>
	</div>
<#--<div class="kaiban section">-->
<#--<div class="base">-->
<#--<h2 class="biaoti">开班时间表  免费试听任你选</h2>-->
<#---->
<#--<div class="kb_wrap">-->
<#--<ul>-->
<#--<li>-->
<#--<div class="chengshi0 chengshi active">-->
<#--<span>【京】</span>-->
<#--<span>HTML5培训高端班</span>-->
<#--<span>03.20</span>-->
<#--<span onclick="window.open('http://tb.53kf.com/code/client/10132404/3','_blank')" class="qiangzuo">抢座</span>-->
<#--</div>-->
<#--<div class="chengshi0 chengshi active">-->
<#--<span>【京】</span>-->
<#--<span>HTML5培训就业班</span>-->
<#--<span>03.20</span>-->
<#--<span onclick="window.open('http://tb.53kf.com/code/client/10132404/3','_blank')" class="qiangzuo">抢座</span>-->
<#--</div>-->
<#--<div class="chengshi0 chengshi active">-->
<#--<span>【京】</span>-->
<#--<span>HTML5培训就业班</span>-->
<#--<span>03.13</span>-->
<#--<span onclick="window.open('http://tb.53kf.com/code/client/10132404/3','_blank')" class="qiangzuo">抢座</span>-->
<#--</div>-->
<#--<div class="chengshi1 chengshi">-->
<#--<span>【深】</span>-->
<#--<span>HTML5培训就业班</span>-->
<#--<span>04.17</span>-->
<#--<span onclick="window.open('http://tb.53kf.com/code/client/10132404/3','_blank')" class="qiangzuo">抢座</span>-->
<#--</div>-->
<#--<div class="chengshi1 chengshi">-->
<#--<span>【深】</span>-->
<#--<span>HTML5培训就业班</span>-->
<#--<span>03.27</span>-->
<#--<span onclick="window.open('http://tb.53kf.com/code/client/10132404/3','_blank')" class="qiangzuo">抢座</span>-->
<#--</div>-->
<#--<div class="chengshi1 chengshi">-->
<#--<span>【深】</span>-->
<#--<span>HTML5培训就业班</span>-->
<#--<span>03.13</span>-->
<#--<span onclick="window.open('http://tb.53kf.com/code/client/10132404/3','_blank')" class="baoman">爆满</span>-->
<#--</div>-->

<#--</li>-->
<#--<li>-->
<#--<div class="chengshi2 chengshi">-->
<#--<span>【沪】</span>-->
<#--<span>HTML5培训就业班</span>-->
<#--<span>04.10</span>-->
<#--<span onclick="window.open('http://tb.53kf.com/code/client/10132404/3','_blank')" class="qiangzuo">抢座</span>-->
<#--</div>-->
<#--<div class="chengshi2 chengshi">-->
<#--<span>【沪】</span>-->
<#--<span>HTML5培训就业班</span>-->
<#--<span>03.06</span>-->
<#--<span onclick="window.open('http://tb.53kf.com/code/client/10132404/3','_blank')" class="kaiban">开班</span>-->
<#--</div>-->
<#--<div class="chengshi3 chengshi">-->
<#--<span>【郑】</span>-->
<#--<span>HTML5培训就业班</span>-->
<#--<span>04.17</span>-->
<#--<span onclick="window.open('http://tb.53kf.com/code/client/10132404/3','_blank')" class="qiangzuo">抢座</span>-->
<#--</div>-->
<#--<div class="chengshi3 chengshi">-->
<#--<span>【郑】</span>-->
<#--<span>HTML5培训就业班</span>-->
<#--<span>03.13</span>-->
<#--<span onclick="window.open('http://tb.53kf.com/code/client/10132404/3','_blank')" class="baoman">爆满</span>-->
<#--</div>-->
<#--<div class="chengshi4 chengshi">-->
<#--<span>【广】</span>-->
<#--<span>HTML5培训就业班</span>-->
<#--<span>04.17</span>-->
<#--<span onclick="window.open('http://tb.53kf.com/code/client/10132404/3','_blank')" class="qiangzuo">抢座</span>-->
<#--</div>-->
<#--<div class="chengshi4 chengshi">-->
<#--<span>【广】</span>-->
<#--<span>HTML5培训就业班</span>-->
<#--<span>03.20</span>-->
<#--<span onclick="window.open('http://tb.53kf.com/code/client/10132404/3','_blank')" class="qiangzuo">抢座</span>-->
<#--</div>-->

<#--</li>-->
<#--<li>-->
<#--<div class="chengshi5 chengshi">-->
<#--<span>【连】</span>-->
<#--<span>HTML5培训就业班</span>-->
<#--<span>04.24</span>-->
<#--<span onclick="window.open('http://tb.53kf.com/code/client/10132404/3','_blank')" class="qiangzuo">抢座</span>-->
<#--</div>-->
<#--<div class="chengshi5 chengshi">-->
<#--<span>【连】</span>-->
<#--<span>HTML5培训就业班</span>-->
<#--<span>03.20</span>-->
<#--<span onclick="window.open('http://tb.53kf.com/code/client/10132404/3','_blank')" class="qiangzuo">抢座</span>-->
<#--</div>-->
<#--<div class="chengshi6 chengshi">-->
<#--<span>【武】</span>-->
<#--<span>HTML5培训就业班</span>-->
<#--<span>04.17</span>-->
<#--<span onclick="window.open('http://tb.53kf.com/code/client/10132404/3','_blank')" class="qiangzuo">抢座</span>-->
<#--</div>-->
<#--<div class="chengshi6 chengshi">-->
<#--<span>【武】</span>-->
<#--<span>HTML5培训就业班</span>-->
<#--<span>03.13</span>-->
<#--<span onclick="window.open('http://tb.53kf.com/code/client/10132404/3','_blank')" class="qiangzuo">抢座</span>-->
<#--</div>-->
<#--<div class="chengshi7 chengshi">-->
<#--<span>【成】</span>-->
<#--<span>HTML5培训就业班</span>-->
<#--<span>04.17</span>-->
<#--<span onclick="window.open('http://tb.53kf.com/code/client/10132404/3','_blank')" class="qiangzuo">抢座</span>-->
<#--</div>-->
<#--<div class="chengshi7 chengshi">-->
<#--<span>【成】</span>-->
<#--<span>HTML5培训就业班</span>-->
<#--<span>03.20</span>-->
<#--<span onclick="window.open('http://tb.53kf.com/code/client/10132404/3','_blank')" class="qiangzuo">抢座</span>-->
<#--</div>-->

<#--</li>-->
<#--<li>-->
<#--<div class="chengshi8 chengshi">-->
<#--<span>【西】</span>-->
<#--<span>HTML5培训就业班</span>-->
<#--<span>04.17</span>-->
<#--<span onclick="window.open('http://tb.53kf.com/code/client/10132404/3','_blank')" class="qiangzuo">抢座</span>-->
<#--</div>-->
<#--<div class="chengshi8 chengshi">-->
<#--<span>【西】</span>-->
<#--<span>HTML5培训就业班</span>-->
<#--<span>03.20</span>-->
<#--<span onclick="window.open('http://tb.53kf.com/code/client/10132404/3','_blank')" class="qiangzuo">抢座</span>-->
<#--</div>-->
<#--<div class="chengshi9 chengshi">-->
<#--<span>【杭】</span>-->
<#--<span>HTML5培训就业班</span>-->
<#--<span>04.17</span>-->
<#--<span onclick="window.open('http://tb.53kf.com/code/client/10132404/3','_blank')" class="qiangzuo">抢座</span>-->
<#--</div>-->
<#--<div class="chengshi9 chengshi">-->
<#--<span>【杭】</span>-->
<#--<span>HTML5培训就业班</span>-->
<#--<span>03.13</span>-->
<#--<span onclick="window.open('http://tb.53kf.com/code/client/10132404/3','_blank')" class="baoman">爆满</span>-->
<#--</div>-->
<#--<div class="chengshi10 chengshi">-->
<#--<span>【青】</span>-->
<#--<span>HTML5培训就业班</span>-->
<#--<span>04.24</span>-->
<#--<span onclick="window.open('http://tb.53kf.com/code/client/10132404/3','_blank')" class="qiangzuo">抢座</span>-->
<#--</div>-->
<#--<div class="chengshi10 chengshi">-->
<#--<span>【青】</span>-->
<#--<span>HTML5培训就业班</span>-->
<#--<span>03.20</span>-->
<#--<span onclick="window.open('http://tb.53kf.com/code/client/10132404/3','_blank')" class="qiangzuo">抢座</span>-->
<#--</div>-->
<#--</li>-->


<#--</ul>-->


<#--</div>-->
<#--</div>-->
<#--</div>-->
	<!-- 就业前景 -->
	<div class="qianjing section">
		<div class="base">
			<h2 class="biaoti">看数据——HTML5的市场前景到底如何</h2>
			<div class="qj_main">
				<div class="fl">
					<img src="${webRoot}/images/course/qj_img1.png">
					<a href="http://t.ibangkf.com/i/chat-chushiwei.html?l=chushiwei&page=http%3A%2F%2Flocalhost%3A8181%2Fdemo%2Fcourse%2Fandroid.html&auth_key=1489485930-0-0-e4d4730a00b2bd880471ab3f1e9d98fd"
					   , target="_blank" class="btn">了解市场走向</a>
				</div>
				<div class="fr">
					<img src="${webRoot}/images/course/qj_img2.jpg">
					<a href="http://t.ibangkf.com/i/chat-chushiwei.html?l=chushiwei&page=http%3A%2F%2Flocalhost%3A8181%2Fdemo%2Fcourse%2Fandroid.html&auth_key=1489485930-0-0-e4d4730a00b2bd880471ab3f1e9d98fd"
					   target="_blank" class="btn">获取更多数据</a>
				</div>
			</div>
		</div>
	</div>
	<!-- 就业薪资 -->
	<div class="xinzi section">
		<div class="base">
			<h2 class="biaoti">蔻丁HTML5学员就业薪资表 高薪榜单期待下一个有你</h2>
			<div class="jyxb_con_list" style="display: block;">
				<table cellspacing="0" cellpadding="0" width="1200" class="table_Hd">
					<tbody>
					<tr>
						<th width="10%">姓名</th>
						<th width="10%">学历</th>
						<th width="10%">目前状态</th>
						<th width="15%">专业</th>
						<th width="25%">入职企业</th>
						<th width="8%">月薪</th>
						<th width="10%">地点</th>
						<th width="12%">就业时间</th>
					</tr>
					</tbody>
				</table>
				<div class="scrollWrap" id="scrollWrap">
					<table width="1200">
                    <#if htlist??>
                        <#list htlist as item>
							<tr class="fontColorRed">
								<td width="10%">${(item.stu.stuName)!}</td>
								<td width="10%">${(item.stu.eduBackground)!}</td>
								<td width="10%">${(item.stu.status)!}</td>
								<td width="15%">${(item.stu.major)!}</td>
								<td width="25%">${(item.enterprise)!}</td>
								<td width="8%">${(item.monSalary)!}</td>
								<td width="10%">${(item.address)!}</td>
								<td width="12%">
                                    <#if (item.hireDate)??> ${(item.hireDate)?date} </#if>
								</td>
							</tr>
                        <#--<tr class="fontColorRed"><td>何*燕</td><td>本科</td><td>在读</td><td>信息工程系</td><td>保密</td><td>12000</td><td>上海</td><td>2017.02.28</td></tr>-->
                        </#list>
                    </#if>
					</table>
				</div>
				<i>数据来源于蔻丁内部统计 </i>
			</div>
			<a href="http://t.ibangkf.com/i/chat-chushiwei.html?l=chushiwei&page=http%3A%2F%2Flocalhost%3A8181%2Fdemo%2Fcourse%2Fandroid.html&auth_key=1489485930-0-0-e4d4730a00b2bd880471ab3f1e9d98fd"
			   target="_blank" class="btn">报名免费试听</a>
			<a href="http://t.ibangkf.com/i/chat-chushiwei.html?l=chushiwei&page=http%3A%2F%2Flocalhost%3A8181%2Fdemo%2Fcourse%2Fandroid.html&auth_key=1489485930-0-0-e4d4730a00b2bd880471ab3f1e9d98fd"
			   target="_blank" class="btn">查看往期就业薪资</a>
		</div>
	</div>
	<!-- 讲师阵容 -->
	<div class="jiangshi section">
		<div class="base">
			<h2 class="biaoti">专业教学团队 打造实战型精英</h2>
			<img src="${webRoot}/images/course/js_img1.png">
			<ul class="js_list">
				<li>
					<img src="${webRoot}/images/course/wangmingyue.png">
					<span>王老师</span>
					<p>
						蔻丁HTML5教学总监，蔻丁UI教学总监，蔻丁北科校区校长。原中科院计算所专家，曾任北京市高校师资培训中心特邀讲师,多年担任北京市属高校师资培训工作。11年的UI、WEB前端开发教育培训经验...<a
							href="http://www.mobiletrain.org/teacher/" target="_blank">[详细]</a></p>
				</li>
				<li>
					<img src="${webRoot}/images/course/dupeng.png">
					<span>杜老师</span>
					<p>拥有10年WEB前端开发经验，6年教学经验。HTML5梦工厂特约讲师，是中国首批从事教育培训的HTML5讲师，开发过日均千万的PV项目。曾被邀请录讲名师课程，录有：《逐...<a
							href="http://www.mobiletrain.org/teacher/" target="_blank">[详细]</a></p>
				</li>
				<li>
					<img src="${webRoot}/images/course/lurongtao.png">
					<span>陆老师</span>
					<p>
						10年以上Web前端开发经验，曾在运营大型门户网站、电商网站及研发电子政务平台的公司就职。有3年以上教学经验，出品《Web前端经典时尚案例》，《DOM探索之旅》，《Avalon探索之旅》...<a
							href="http://www.mobiletrain.org/teacher/" target="_blank">[详细]</a></p>
				</li>
				<li>
					<img src="${webRoot}/images/course/haohonglin.png">
					<span>郝老师</span>
					<p>
						蔻丁HTML5学科高级讲师，3年软件开发经验，2012年开始从事手机移动端的开发。同时负责过多个web端与移动端的项目开发，有着丰富经验的项目开发经验，授课风趣幽默，注重理论基础与实际项目相结合...<a
							href="http://www.mobiletrain.org/teacher/" target="_blank">[详细]</a></p>
				</li>
				<li>
					<img src="${webRoot}/images/course/wuxunxun.png">
					<span>吴老师</span>
					<p>蔻丁教育HTML5讲师，年轻，有活力。曾任苏州某上市公司前端项目主管，指导并开发多个电子商务平台；在教学上及时根据行业动态正确调整教学方法，使学生能够更快的和社会接轨。授课思路清晰，...<a
							href="http://www.mobiletrain.org/teacher/" target="_blank">[详细]</a></p>
				</li>
				<li>
					<img src="${webRoot}/images/course/yintao.png">
					<span>尹老师</span>
					<p>
						从事5年的JavaWeb开发，有3年的互联网平台研发经验，2011年参与开发了大型海运电子商务平台。担任过程序员，产品设计，teamleader，2015年参与开发了ifootball安卓端社交APP。3年的教学工...<a
							href="http://www.mobiletrain.org/teacher/" target="_blank">[详细]</a></p>
				</li>
				<li>
					<img src="${webRoot}/images/course/chenyanqiu.png">
					<span>陈老师</span>
					<p>蔻丁HTML5讲师，性格开朗，为人细心，做事认真，有较强的责任心，多年的前端项目开发经验。常以幽默的语言活跃课堂气氛。授课思路清晰，以贴切的案例，形象的演示一些难以理解的内容，让学员轻易掌...<a
							href="http://www.mobiletrain.org/teacher/" target="_blank">[详细]</a></p>
				</li>
				<li>
					<img src="${webRoot}/images/course/renwei.png">
					<span>马老师</span>
					<p>蔻丁移动前端开发（HTML5）专业讲师，7年前端及移动端开发实践经验。曾参与负责多个大型项目的前端开发，在多年的实践中总结了实际工作中所需要的技能及技巧，平易近人，细心辅导，不厌其烦，讲课...<a
							href="http://www.mobiletrain.org/teacher/" target="_blank">[详细]</a></p>
				</li>
				<li>
					<img src="${webRoot}/images/course/shaoyizhi.png">
					<span>邵老师</span>
					<p>
						蔻丁HTML5学科高级讲师，三年多web前端开发经验，熟练使用HTML5，jquery，CSS3，js等技术开发多个web和移动端App应用，曾在IBM中国和网易等资深互联网公司任职，并且担任前端的team
						leader ...<a href="http://www.mobiletrain.org/teacher/" target="_blank">[详细]</a></p>
				</li>
				<li>
					<img src="${webRoot}/images/course/wangyuejiao.png">
					<span>王老师</span>
					<p>三年多工作经验，专注于WEB前端静态页面与动态效果开发，熟练使用WEB前端技术，CSS3,HTML5, jQuery,原生js等基本技术;对jQuery Mobile, jQuery UI ,
					   jQuery EasyUI等流行前端框架的实...<a href="http://www.mobiletrain.org/teacher/" target="_blank">[详细]</a>
					</p>
				</li>
			</ul>
			<a href="http://t.ibangkf.com/i/chat-chushiwei.html?l=chushiwei&page=http%3A%2F%2Flocalhost%3A8181%2Fdemo%2Fcourse%2Fandroid.html&auth_key=1489485930-0-0-e4d4730a00b2bd880471ab3f1e9d98fd"
			   target="_blank" class="btn">点击找找你喜欢的讲师</a>
		</div>
	</div>
	<!-- 课程大纲 -->
	<div class="kecheng section">
		<div class="base">
			<h2 class="biaoti">蔻丁HTML5课程大纲立体升级<span>企业导向 项目实战 前沿科技</span></h2>
			<ul class="kc_list1">
				<li class="hover">
					<span></span>
					<span>第一阶段</span>
					<span>前端页面重构</span>
				</li>
				<li>
					<span></span>
					<span>第二阶段</span>
					<span>JavaScript高级程序设计</span>
				</li>
				<li>
					<span></span>
					<span>第三阶段</span>
					<span>PC端全栈项目开发</span>
				</li>
				<li>
					<span></span>
					<span>第四阶段</span>
					<span>移动端项目开发</span>
				</li>
				<li>
					<span></span>
					<span>第五阶段</span>
					<span>混合（Hybrid,<br/>ReactNative）开发</span>
				</li>
				<li>
					<span></span>
					<span>第六阶段</span>
					<span>WebApp后端系统开发</span>
				</li>
			</ul>
			<div class="kc_wrap">
				<div class="kc_jieduan">
					<span class="kc_tubiao fl"></span>
					<h3 class="fl"><i>第一阶段</i>前端页面重构</h3>
					<ul>
						<li>
							<h2><em>01</em><i>PC端网站布局</i></h2>
							<div class="con_list">
								<img src="${webRoot}/images/course/01.jpg">
								<p>- 前端开发环境介绍（DreamWeaver、
								   Notepad++、HBuilder)</p>
								<p>- HTML基础，CSS基础，CSS核心属性</p>
								<p>- CSS样式层叠，继承，盒模型</p>
								<p>- 容器，溢出及元素类型</p>
								<p>- 浏览器兼容与宽高自适应</p>
								<p>- 定位，锚点与透明</p>
								<p>- 图片整合</p>
								<p>- 表格，CSS属性与滤镜</p>
								<p>- CSS优化</p>
							</div>
						</li>
						<li>
							<h2><em>02</em><i>HTML5+CSS3基础</i></h2>
							<div class="con_list">
								<img src="${webRoot}/images/course/02.jpg" height="169" width="325">
								<p>- HTML5新增的元素与属性</p>
								<p>- 表单域增强元素</p>
								<p>- CSS3选择器</p>
								<p>- 文字字体相关样式</p>
								<p>- CSS3位移与变形处理</p>
								<p>- CSS3 2D转换与过度动画</p>
								<p>- CSS3 3D转换与关键帧动画</p>
								<p>- 弹性盒模型</p>
								<p>- 媒体查询</p>
								<p>- 响应式设计</p>
							</div>
						</li>
						<li>
							<h2><em>03</em><i>WebApp页面布局</i></h2>
							<div class="con_list">
								<img src="${webRoot}/images/course/03.jpg" height="169" width="325">
								<p>- 移动端页面设计规范</p>
								<p>- 移动端切图</p>
								<p>- 文字流式/控件弹性/图片等比例/特殊设计的100%布局</p>
								<p>- 等比缩放布局</p>
								<p>- viewport/meta</p>
								<p>- rem/vw的使用</p>
								<p>- flexbox详解</p>
								<p>- 移动 web特别样式处理（reset, 1px border, 高清图片）</p>
							</div>
						</li>

					</ul>
				</div>
				<div class="kc_jieduan">
					<span class="kc_tubiao fl"></span>
					<h3 class="fl"><i>第二阶段</i>JavaScript高级程序设计</h3>
					<ul>
						<li>
							<h2><em>04</em><i>原生 JavaScript交互功能开发</i></h2>
							<div class="con_list">
								<img src="${webRoot}/images/course/04.jpg" height="169" width="325">
								<p>基本语法</p>
								<p>- 循环语句</p>
								<p>- 函数与数组</p>
								<p>- String与 Date</p>
								<p>- BOM与 DOM</p>
								<p>- 事件</p>
								<p>- 拖拽效果</p>
								<p>- cookie存储</p>
								<p>- 正则表达式</p>
								<p>- Ajax</p>
								<p>- 面向对象基础</p>
								<p>- 运动与游戏开发</p>
							</div>
						</li>
						<li>
							<h2><em>05</em><i>面向对象进阶与 ES5/ES6应用</i></h2>
							<div class="con_list">
								<img src="${webRoot}/images/course/05.jpg" height="169" width="325">
								<p>- Promise/A+</p>
								<p>- 设计模式（观察者模式等）</p>
								<p>- 原型链</p>
								<p>- 构造函数</p>
								<p>- 执行上下文栈与执行上下文</p>
								<p>- 变量对象与活动对象</p>
								<p>- 作用域链</p>
								<p>- 闭包</p>
								<p>- this</p>
								<p>- ES5</p>
								<p>- ES6</p>
							</div>
						</li>
						<li>
							<h2><em>06</em><i>JavaScript工具库自主研发</i></h2>
							<div class="con_list">
								<img src="${webRoot}/images/course/06.jpg" height="169" width="325">
								<p>- DOM库</p>
								<p>- 事件库</p>
								<p>- AJAX库</p>
								<p>- 原型和继承库</p>
							</div>
						</li>
						<li>
							<h2><em>07</em><i>jQuery经典交互特效开发</i></h2>
							<div class="con_list">
								<img src="${webRoot}/images/course/07.jpg" height="169" width="325">
								<p>- jQuery框架介绍</p>
								<p>- jQuery插件扩展原理及自定制设计</p>
								<p>- 时间轴特效</p>
								<p>- tab页面切换效果</p>
								<p>- 网页定位导航特效</p>
								<p>- 滑动门特效</p>
								<p>- 焦点图轮播特效</p>
								<p>- 导航条菜单效果</p>
								<p>- 瀑布流特效</p>
								<p>- 弹出层效果</p>
								<p>- 倒计时效果</p>
								<p>- 抽奖效果</p>
							</div>
						</li>
					</ul>

				</div>
				<div class="kc_jieduan">
					<span class="kc_tubiao fl"></span>
					<h3 class="fl"><i>第三阶段</i>PC端全栈项目开发</h3>
					<ul class="clear">
						<li>
							<h2><em>08</em><i>HTTP协议、Ajax进阶与后端开发</i></h2>
							<div class="con_list">
								<img src="${webRoot}/images/course/08.jpg" height="169" width="325">
								<p>- HTTP(s)协议详解</p>
								<p>- Ajax进阶、跨域与 Defered</p>
								<p>- PHP基础</p>
								<p>- MySQL基础</p>
								<p>- Apache与 Nginx 环境搭建与配置</p>
								<p>- 接口的定义</p>
								<p>- Mock数据</p>
								<p>- Restful</p>
								<p>- 前后端联调</p>
								<p>- 前端安全(XSS,CSRF,JSON注入)</p>
							</div>
						</li>
						<li>
							<h2><em>09</em><i>前端工程化与模块化应用</i></h2>
							<div class="con_list">
								<img src="${webRoot}/images/course/09.jpg" height="169" width="325">
								<p>- Gulp</p>
								<p>- Webpack</p>
								<p>- NPM</p>
								<p>- Git/SVN</p>
								<p>- CommonJS</p>
								<p>- AMD</p>
								<p>- CMD</p>
								<p>- ES6模块化</p>
							</div>
						</li>
						<li>
							<h2><em>10</em><i>PC端网站开发</i></h2>
							<div class="con_list">
								<img src="${webRoot}/images/course/10.jpg" height="169" width="325">
								<p>- 大首页、列表页与详情页</p>
								<p>- 展示与交互特效</p>
								<p>- 搜索</p>
								<p>- 登录与注册</p>
								<p>- 购物车</p>
							</div>
						</li>
						<li>
							<h2><em>11</em><i>AngularJS</i></h2>
							<div class="con_list">
								<img src="${webRoot}/images/course/11.jpg" height="169" width="325">
								<p>- 基础知识（ng-app,Modules,<br/>Controller,$apply,$watch）</p>
								<p>- 指令(ng-repeat,ng-class,ng-show,ng-hide)</p>
								<p>- 过滤器(date,limitTo,filter)</p>
								<p>- 表单(NgModelController，表单验证)</p>
								<p>- 服务（自定义服务，Angular提供的服务：$log,$timeout,$q,$http）</p>
								<p>- 其他（Controller as 语法，安全的依赖注入方法）</p>
								<p>- directive（指令，组件）</p>
								<p>- ng-router</p>
								<p>- 标准项目结构设计</p>
							</div>
						</li>
						<li>
							<h2><em>12</em><i>PC端管理信息系统前端开发</i></h2>
							<div class="con_list">
								<img src="${webRoot}/images/course/12.jpg" height="169" width="325">
								<p>- jQueryUI 与 jQuery EasyUI</p>
								<p>- Bootstrap框架(ACE)</p>
								<p>- Highcharts/Echarts</p>
								<p>- ArtTemplate</p>
								<p>- velocity</p>
								<p>- smarty</p>
								<p>- 云平台系统前端</p>
							</div>
						</li>
					</ul>

				</div>
				<div class="kc_jieduan">
					<span class="kc_tubiao fl"></span>
					<h3 class="fl"><i>第四阶段</i>移动端项目开发</h3>
					<ul class="clear">
						<li>
							<h2><em>13</em><i>Touch端</i></h2>
							<div class="con_list">
								<img src="${webRoot}/images/course/13.jpg" height="169" width="325">
								<p>- Canvas 基础知识</p>
								<p>- 绘制矩形、圆弧、线段、曲线、渐变与图像</p>
								<p>- Canvas 图表绘制案例</p>
								<p>- localStorage、sessionStorage 与离线缓存</p>
								<p>- animate.css</p>
								<p>- Yo/Mui</p>
								<p>- touch.js</p>
								<p>- zepto.js</p>
								<p>- swiper</p>
								<p>- iScroll</p>
							</div>
						</li>
						<li>
							<h2><em>14</em><i>微信场景</i></h2>
							<div class="con_list">
								<img src="${webRoot}/images/course/14.jpg" height="169" width="325">
								<p>- WeUI
								<p>- Swiper animate 在微信场景项目中的使用</p>
								<p>- 常见的页面布局</p>
								<p>- 常见的交互与动画</p>
								<p>- 实战项目</p>
							</div>
						</li>
						<li>
							<h2><em>15</em><i>应用 Vue.js开发 WebApp</i></h2>
							<div class="con_list">
								<img src="${webRoot}/images/course/15.jpg" height="169" width="325">
								<p>- Vue.js基础</p>
								<p>- 模块化</p>
								<p>- 单文件组件</p>
								<p>- 路由</p>
								<p>- 与服务器通信</p>
								<p>- 状态管理</p>
								<p>- 单元测试</p>
								<p>- 生产发布</p>
							</div>
						</li>
						<li>
							<h2><em>16</em><i>应用 Ionic开发 WebApp</i></h2>
							<div class="con_list">
								<img src="${webRoot}/images/course/16.jpg" height="169" width="325">
								<p>- css components
								<p>- ionic基于 angularJS扩展的交互指令介绍</p>
								<p>- blank模板的安装</p>
								<p>- 头部与尾部</p>
								<p>- 内容区域</p>
								<p>- 列表</p>
								<p>- 区域滚动</p>
								<p>- 下拉刷新与上拉加载</p>
								<p>- 页签导航</p>
								<p>- 背景层与旋转 SVG图标</p>
								<p>- loading 效果</p>
								<p>- actionsheet 效果</p>
								<p>- 弹出窗口</p>
								<p>- 弹出浮动层</p>
								<p>- 底部满屏滑动窗口</p>
								<p>- ionic 自带的 swiper滑动</p>
								<p>- 基于 swiper组件的 swiper滑动</p>
								<p>- 页面导航切换</p>
								<p>- 侧边栏菜单</p>
							</div>
						</li>
						<li>
							<h2><em>17</em><i>应用 React.js开发 WebApp</i></h2>
							<div class="con_list">
								<img src="${webRoot}/images/course/17.jpg" height="169" width="325">
								<p>- ReactJS基础</p>
								<p>- JSX语法</p>
								<p>- 组件</p>
								<p>- flux架构</p>
								<p>- 配置模块化开发环境</p>
								<p>- 动画效果</p>
								<p>- 数据双向绑定</p>
							</div>
						</li>
					</ul>

				</div>
				<div class="kc_jieduan">
					<span class="kc_tubiao fl"></span>
					<h3 class="fl"><i>第五阶段</i>混合（Hybrid,ReactNative）开发</h3>
					<ul class="clear">
						<li>
							<h2><em>18</em><i>微信小程序开发</i></h2>
							<div class="con_list">
								<img src="${webRoot}/images/course/18.jpg" height="169" width="325">
								<p>- 微信小程序简介及从技术上和产品上的分析</p>
								<p>- 构建第一个应用：创建项目、创建小程序实例与创建页面</p>
								<p>- 框架、组件、API及工具详解</p>
								<p>- 微信小程序项目开发</p>
							</div>
						</li>
						<li>
							<h2><em>19</em><i>React Native</i></h2>
							<div class="con_list">
								<img src="${webRoot}/images/course/19.jpg" height="169" width="325">
								<p>- React Native介绍</p>
								<p>- BS架构程序介绍</p>
								<p>- 原生组件</p>
								<p>- 异步执行与加载</p>
								<p>- 触摸事件处理</p>
								<p>- 弹性盒(Flexbox)和样式</p>
								<p>- 兼容通用标准和扩展性</p>
								<p>- React Native项目开发</p>
							</div>
						</li>
						<li>
							<h2><em>20</em><i>各类混合应用开发</i></h2>
							<div class="con_list">
								<img src="${webRoot}/images/course/20.jpg" height="169" width="325">
								<p>- Cordova/Phone gap</p>
								<p>- 嵌入客户端(iOS、Android)</p>
								<p>- 微信服务号接口(JSSDK)开发</p>
								<p>- HTML5+</p>
							</div>
						</li>
					</ul>

				</div>
				<div class="kc_jieduan">
					<span class="kc_tubiao fl"></span>
					<h3 class="fl"><i>第六阶段</i>WebApp后端系统开发</h3>
					<ul>
						<li><h2><i>WebApp后端系统开发</i></h2></li>
						<li>
							<div class="con_list">
								<img src="${webRoot}/images/course/21.jpg" height="169" width="325">
								<p>一、NodeJS基础与NodeJS核心模块</p>
								<p>- NodeJS介绍</p>
								<p>- NodeJS环境搭建与入门</p>
								<p>- ES6在 NodeJS中的应用</p>
								<p>- CommonJS模块</p>
								<p>- fs与 path模块</p>
								<p>- stream</p>
								<p>- socket.io</p>
								<p>- http模块 API</p>
								<p>- URL模块</p>
								<p>- 数据的本地存储</p>
							</div>
						</li>
						<li>
							<div class="con_list">
								<img src="${webRoot}/images/course/22.jpg" height="169" width="325">
								<p>二、Express</p>
								<p>- express api</p>
								<p>- express 中间件</p>
								<p>- ejs/jade</p>
							</div>
						</li>
						<li>
							<div class="con_list">
								<img src="${webRoot}/images/course/23.jpg" height="169" width="325">
								<p>三、noSQL数据库</p>
								<p>- mongodb 与 mongoose</p>
								<p>- 框架中间件</p>
								<p>- 项目实战导入</p>
							</div>
						</li>
					</ul>

				</div>
			</div>
			<a href="http://t.ibangkf.com/i/chat-chushiwei.html?l=chushiwei&page=http%3A%2F%2Flocalhost%3A8181%2Fdemo%2Fcourse%2Fandroid.html&auth_key=1489485930-0-0-e4d4730a00b2bd880471ab3f1e9d98fd"
			   target="_blank" class="btn">点击获取完整课程大纲体系</a>
			<a href="http://t.ibangkf.com/i/chat-chushiwei.html?l=chushiwei&page=http%3A%2F%2Flocalhost%3A8181%2Fdemo%2Fcourse%2Fandroid.html&auth_key=1489485930-0-0-e4d4730a00b2bd880471ab3f1e9d98fd"
			   target="_blank" class="btn">免费学习视频任你听</a>
		</div>
	</div>
	<!-- 良心教育 -->
	<div class="liangxin section">
		<div class="base">
			<h2 class="biaoti">良心做教育 真心育人才 蔻丁用心呵护你一切</h2>
			<a href="http://t.ibangkf.com/i/chat-chushiwei.html?l=chushiwei&page=http%3A%2F%2Flocalhost%3A8181%2Fdemo%2Fcourse%2Fandroid.html&auth_key=1489485930-0-0-e4d4730a00b2bd880471ab3f1e9d98fd"
			   target="_blank" class="btn">点击咨询详情</a>
			<ul>
				<li>
					<a href="http://t.ibangkf.com/i/chat-chushiwei.html?l=chushiwei&page=http%3A%2F%2Flocalhost%3A8181%2Fdemo%2Fcourse%2Fandroid.html&auth_key=1489485930-0-0-e4d4730a00b2bd880471ab3f1e9d98fd"
					   target="_blank">
						<p><span></span><span></span></p>
						<p>0学费入学</p>
						<p>与百度达成合作，<br/>蔻丁学员可享受0学费入学专属优惠</p>
					</a></li>
				<li>
					<a href="http://t.ibangkf.com/i/chat-chushiwei.html?l=chushiwei&page=http%3A%2F%2Flocalhost%3A8181%2Fdemo%2Fcourse%2Fandroid.html&auth_key=1489485930-0-0-e4d4730a00b2bd880471ab3f1e9d98fd"
					   target="_blank">
						<p><span></span><span></span></p>
						<p>2周免费试听</p>
						<p>推出“两周免费试听，不满意不缴费”<br/>政策，让学员了解更真实的蔻丁、<br/>了解自己是否适合学JavaEE</p>
					</a></li>
				<li>
					<a href="http://t.ibangkf.com/i/chat-chushiwei.html?l=chushiwei&page=http%3A%2F%2Flocalhost%3A8181%2Fdemo%2Fcourse%2Fandroid.html&auth_key=1489485930-0-0-e4d4730a00b2bd880471ab3f1e9d98fd"
					   target="_blank">
						<p><span></span><span></span></p>
						<p>签订就业协议</p>
						<p>签订《就业培训协议》，在<br/>协议里写出明确薪水</p>
					</a></li>
				<li>
					<a href="http://t.ibangkf.com/i/chat-chushiwei.html?l=chushiwei&page=http%3A%2F%2Flocalhost%3A8181%2Fdemo%2Fcourse%2Fandroid.html&auth_key=1489485930-0-0-e4d4730a00b2bd880471ab3f1e9d98fd"
					   target="_blank">
						<p><span></span><span></span></p>
						<p>高成本项目实战</p>
						<p>紧跟企业需求，投入高教学成本，让<br/>每一名学员都拿得出成熟作品</p>
					</a></li>
				<li>
					<a href="http://t.ibangkf.com/i/chat-chushiwei.html?l=chushiwei&page=http%3A%2F%2Flocalhost%3A8181%2Fdemo%2Fcourse%2Fandroid.html&auth_key=1489485930-0-0-e4d4730a00b2bd880471ab3f1e9d98fd"
					   target="_blank">
						<p><span></span><span></span></p>
						<p>就业保障</p>
						<p>每年至少12场名企双选会<br/>5000多家合作企业为学员提供满意岗位</p>
					</a></li>
				<li>
					<a href="http://t.ibangkf.com/i/chat-chushiwei.html?l=chushiwei&page=http%3A%2F%2Flocalhost%3A8181%2Fdemo%2Fcourse%2Fandroid.html&auth_key=1489485930-0-0-e4d4730a00b2bd880471ab3f1e9d98fd"
					   target="_blank">
						<p><span></span><span></span></p>
						<p>就业服务</p>
						<p>就业指导课，1对1就业服务<br/>1年就业跟踪，随时提供就业服务</p>
					</a></li>
				<li>
					<a href="hhttp://t.ibangkf.com/i/chat-chushiwei.html?l=chushiwei&page=http%3A%2F%2Flocalhost%3A8181%2Fdemo%2Fcourse%2Fandroid.html&auth_key=1489485930-0-0-e4d4730a00b2bd880471ab3f1e9d98fd"
					   target="_blank">
						<p><span></span><span></span></p>
						<p>创业平台</p>
						<p>毕业学员创业平台资源，人脉就是财<br/>富，在蔻丁很容易找到合伙人，随时接<br/>项目，随时可创业</p>
					</a></li>
				<li>
					<a href="http://t.ibangkf.com/i/chat-chushiwei.html?l=chushiwei&page=http%3A%2F%2Flocalhost%3A8181%2Fdemo%2Fcourse%2Fandroid.html&auth_key=1489485930-0-0-e4d4730a00b2bd880471ab3f1e9d98fd"
					   target="_blank">
						<p><span></span><span></span></p>
						<p>360度全方位服务</p>
						<p>校友联盟会、大型单身party、技术讲<br/>座、人生职业规划，拓宽视野、解决<br/>单身</p>
					</a></li>
			</ul>
		</div>
	</div>
	<!-- 校园环境 -->
	<div class="huanjing section">
		<div class="base">
			<div class="hj_wrap">
				<ul class="hj_list">
					<li><img src="${webRoot}/images/course/hj_img1.jpg"></li>
					<li><img src="${webRoot}/images/course/hj_img2.jpg"></li>
					<li><img src="${webRoot}/images/course/hj_img3.jpg"></li>
					<li><img src="${webRoot}/images/course/hj_img4.jpg"></li>
					<li><img src="${webRoot}/images/course/hj_img5.jpg"></li>
					<li><img src="${webRoot}/images/course/hj_img6.jpg"></li>

				</ul>

			</div>
			<span class="prevbtn"></span>
			<span class="nextbtn"></span>
		</div>
	</div>
	<!-- 疑难咨询 -->
	<div class="zixun section">
		<ul class="base zx_list">
			<li>
				<a href="http://t.ibangkf.com/i/chat-chushiwei.html?l=chushiwei&page=http%3A%2F%2Flocalhost%3A8181%2Fdemo%2Fcourse%2Fandroid.html&auth_key=1489485930-0-0-e4d4730a00b2bd880471ab3f1e9d98fd"
				   target="_blank">有疑问点击咨询</a></li>
			<li>
				<a href="http://t.ibangkf.com/i/chat-chushiwei.html?l=chushiwei&page=http%3A%2F%2Flocalhost%3A8181%2Fdemo%2Fcourse%2Fandroid.html&auth_key=1489485930-0-0-e4d4730a00b2bd880471ab3f1e9d98fd"
				   target="_blank">报名抢座开始学习</a></li>
			<li>
				<a href="http://t.ibangkf.com/i/chat-chushiwei.html?l=chushiwei&page=http%3A%2F%2Flocalhost%3A8181%2Fdemo%2Fcourse%2Fandroid.html&auth_key=1489485930-0-0-e4d4730a00b2bd880471ab3f1e9d98fd"
				   target="_blank">查看免费教程视频</a></li>
		</ul>
	</div>
	<!-- 底部 -->
	<div class="bottom_161228">


	</div>
	<!-- js引用 -->
	<script type="text/javascript" src="${webRoot}/js/course/jquery-1.11.3.min.js"></script>
	<script type="text/javascript" src="${webRoot}/js/course/html5_20170105.js"></script>

</div>
<div id="footer">
<#include "../common/footer.ftl">
</div>
</body>
</html>