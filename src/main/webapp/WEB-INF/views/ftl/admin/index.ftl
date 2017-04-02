<!doctype html>
<html>
<head>
	<meta charset="utf-8">
	<title>后台管理</title>
	<link rel="shortcut icon" type="image/x-icon" href="${webRoot}/favicon.ico">
	<link rel="stylesheet" href="${webRoot}/css/font-awesome.min.css"/>
	<link rel="stylesheet" href="${webRoot}/css/admin/amazeui.min.css"/>
	<link rel="stylesheet" href="${webRoot}/css/admin/admin.css">
	<script src="${webRoot}/js/admin/jquery.min.js"></script>
	<script src="${webRoot}/js/admin/app.js"></script>
	<style>
		#content {
			width: calc(100%);
			height: calc(100%);
			border: none;
		}

		.admin {
			/*border: 1px dashed red;*/
			margin: 10px 0 10px 10px;
			overflow: hidden;;
		}

		#frame-banner {
			padding: 0 0 0 20px;
			height: 50px;
			line-height: 50px;
			float: left;
			font-weight: 400;
			color: #2a3542;
			font-size: 24px;
		}

		#logintime {
			font: "FontAwesome", sans-serif;
			font-size: 16px;
			margin-left: 20px;
		}

		#exit:hover {
			cursor: pointer;
		}

	</style>
</head>

<body>
<header class="am-topbar admin-header">
<#--<div class="am-topbar-brand">-->
<#--<img src="${webRoot}/images/admin/logo.png">-->
<#--</div>-->

	<div id="frame-banner">
		<i class="fa fa-leaf"></i>
		<span> ${sysName}</span>
		<span id="logintime">
        <#if Session.USER??>
            <#if Session.USER.loginTime??>
				上次访问时间 ${Session.USER.loginTime?string("yyyy年MM月dd日 HH时mm分ss秒")}
            <#else >
            ${(Session.USER.loginTime)!"这是您第一次登录哟！"}
            </#if>
        <#else>
				您还没有通过权限验证……！
        </#if>
		</span>
	</div>

	<div class="am-collapse am-topbar-collapse" id="topbar-collapse">
		<ul class="am-nav am-nav-pills am-topbar-nav admin-header-list">
        <#-- 消息管理 -->
			<#--<li class="am-dropdown tognzhi" data-am-dropdown>-->
				<#--<button class="am-btn am-btn-primary am-dropdown-toggle am-btn-xs am-radius am-icon-bell-o"-->
						<#--data-am-dropdown-toggle>-->
					<#--消息管理-->
					<#--<span class="am-badge am-badge-danger am-round">6</span>-->
				<#--</button>-->
				<#--<ul class="am-dropdown-content">-->
					<#--<li class="am-dropdown-header">所有消息都在这里</li>-->
					<#--<li><a href="#">未激活会员 <span class="am-badge am-badge-danger am-round">556</span></a></li>-->
					<#--<li><a href="#">未激活代理 <span class="am-badge am-badge-danger am-round">69</span></a></a></li>-->
					<#--<li><a href="#">未处理汇款</a></li>-->
					<#--<li><a href="#">未发放提现</a></li>-->
					<#--<li><a href="#">未发货订单</a></li>-->
					<#--<li><a href="#">低库存产品</a></li>-->
					<#--<li><a href="#">信息反馈</a></li>-->
				<#--</ul>-->
			<#--</li>-->

        <#-- 快捷按钮 -->
			<li class="kuanjie">
            <#--<a href="#">会员管理</a>-->
				<#--<a href="#">奖金管理</a>-->
				<#--<a href="#">订单管理</a>-->
				<#--<a href="#">产品管理</a>-->
				<#--<a href="#">个人中心</a>-->
				<#--<a href="#">系统设置</a>-->
			</li>

        <#-- 查询 -->
			<#--<li class="soso">-->
				<#--<p>-->
					<#--<select data-am-selected="{btnWidth: 70, btnSize: 'sm', btnStyle: 'default'}">-->
						<#--<option value="b">全部</option>-->
						<#--<option value="o">产品</option>-->
						<#--<option value="o">会员</option>-->
					<#--</select>-->
				<#--</p>-->
				<#--<p class="ycfg"><input type="text" class="am-form-field am-input-sm" placeholder="请输入搜索关键字"/></p>-->
				<#--<p>-->
					<#--<button class="am-btn am-btn-xs am-btn-default am-xiao"><i class="am-icon-search"></i></button>-->
				<#--</p>-->
			<#--</li>-->

			<li>
				<a id="exit">
					<i class="fa fa-power-off"></i>
					<span class="nav_head_font">注销</span>
				</a>
			</li>
			<li class="am-hide-sm-only" style="float: right;">
				<a href="javascript:" id="admin-fullscreen">
					<span class="am-icon-arrows-alt"></span>
					<span class="admin-fullText">开启全屏</span>
				</a>
			</li>

		</ul>
	</div>
</header>

<div class="am-cf admin-main">
<#-- 导航菜单 -->
	<div class="nav-navicon admin-main admin-sidebar">
		<div class="sideMenu am-icon-dashboard" style="color:#aeb2b7; margin: 10px 0 0 0;">

        <#if Session.USER??>
			欢迎系统管理员：${(Session.USER.realName)!}
        <#else >
			请登录……
        </#if>

		</div>
		<div class="sideMenu">
			<h3 class="am-icon-flag"><em></em> <a href="#">新闻管理</a></h3>
			<ul>
				<li>
					<a href="about/list.html" target="rightFrame">新闻列表</a>
				</li>
				<li>
					<a href="about/edit.html" target="rightFrame">添加新闻</a>
				</li>
            <#--<li class="func" dataType='html' dataLink='msn.htm' iconImg='images/msn.gif'>添加新商品</li>-->
			</ul>
			<h3 class="am-icon-cart-plus"><em></em> <a href="#">综合管理</a></h3>
			<ul>
				<li>
					<a href="course_sys/courseSysList.html" target="rightFrame">课程体系</a>
				</li>
				<li>
					<a href="course/list.html" target="rightFrame">开班信息</a>
				</li>
				<li>
					<a href="course/edit.html" target="rightFrame">添加班级</a>
				</li>
			</ul>
			<h3 class="am-icon-flag"><em></em> <a href="#">讲师管理</a></h3>
			<ul>
				<li>
					<a href="teacher/tlist.html" target="rightFrame">讲师列表</a>
				</li>

            <#--<li class="func" dataType='html' dataLink='msn.htm' iconImg='images/msn.gif'>添加新商品</li>-->
			</ul>
			<h3 class="am-icon-users"><em></em> <a href="#">学生管理</a></h3>
			<ul>
				<li>学生列表</li>
				<li>添加学生</li>
				<li>
					<a href="testimonials/test.html" target="rightFrame">学生感言</a>
				</li>
			</ul>
			<h3 class="am-icon-volume-up"><em></em> <a href="#">就业管理</a></h3>
			<ul>
				<li><a href="employ/list.html" target="rightFrame">就业信息列表</a></li>
				<li><a href="employ/add.html" target="rightFrame">添加就业信息</a></li>

			</ul>
        <#--<h3 class="am-icon-gears"><em></em> <a href="#">系统设置</a></h3>-->
        <#--<ul>-->
        <#--<li>数据备份</li>-->
        <#--<li>邮件/短信管理</li>-->
        <#--<li>上传/下载</li>-->
        <#--<li>权限</li>-->
        <#--<li>网站设置</li>-->
        <#--<li>第三方支付</li>-->
        <#--<li>提现 /转账 出入账汇率</li>-->
        <#--<li>平台设置</li>-->
        <#--<li>声音文件</li>-->
        <#--</ul>-->
		</div>
		<!-- sideMenu End -->

		<script type="text/javascript">
			jQuery(".sideMenu").slide({
				titCell: "h3", //鼠标触发对象
				targetCell: "ul", //与titCell一一对应，第n个titCell控制第n个targetCell的显示隐藏
				effect: "slideDown", //targetCell下拉效果
				delayTime: 300, //效果时间
				triggerTime: 150, //鼠标延迟触发时间（默认150）
				defaultPlay: true,//默认是否执行效果（默认true）
				returnDefault: true //鼠标从.sideMen移走后返回默认状态（默认false）
			});
		</script>
	</div>

	<div class="admin-content">
		<div class="daohang">
			<ul>
				<li>
					<button type="button" class="am-btn am-btn-default am-radius am-btn-xs"> 首页</button>
				</li>
			</ul>
		</div>

		<div class="admin">
			<iframe id="content" name="rightFrame" src="${webRoot}/admin/course/list.html"></iframe>
		</div>

	</div>


</div>

<!--[if lt IE 9]>
<!--<script src="http://libs.baidu.com/jquery/1.11.1/jquery.min.js"></script>-->
<!--<script src="http://cdn.staticfile.org/modernizr/2.8.3/modernizr.js"></script>-->
<script src="${webRoot}/js/admin/polyfill/rem.min.js"></script>
<script src="${webRoot}/js/admin/polyfill/respond.min.js"></script>
<script src="${webRoot}/js/admin/amazeui.legacy.js"></script>
<!--<![endif]-->

<!--[if (gte IE 9)|!(IE)]><!-->
<script src="${webRoot}/js/admin/amazeui.min.js"></script>
<!--<![endif]-->
<script type="text/javascript" src="${webRoot}/layui/layui.js"></script>
<script>
	$(function () {
		layui.use(["layer"], function () {
			var layer = layui.layer;

			$("#exit").click(function () {
				layer.confirm("确定要退出系统吗？", {icon: 3, title: '提示', offset: '200px'}, function (index) {
					window.location.href = "${webRoot}/user/doLogout";
					layer.close(index);
				});
			});
		});
	})
</script>
</body>
</html>