<#-- @ftlvariable name="webRoot" type="java.lang.String" -->
<#-- @ftlvariable name="sysName" type="java.lang.String" -->
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<link rel="stylesheet" type="text/css" href="${webRoot}/css/admin/login.css">
	<link rel="shortcut icon" type="image/x-icon" href="${webRoot}/favicon.ico">
	<script type="text/javascript" src="${webRoot}/js/jquery-2.1.0.js"></script>
	<title>登录</title>
</head>
<body>
<#-- 测试 -->
<div id="login-info">
	<div id="login-logo"></div>
	<div id="login">
		<div id="login-glass"></div>
		<div id="login-content">
			<div id="login-title">${sysName}</div>
			<form id="loginForm" action="" method="post">
				<div id="login-input-username" class="login-input tooltip">
					<input id="login-username" tabindex="1" name="username" type="text" placeholder="用户名" title="用户名"/>
				</div>
				<div id="login-input-password" class="login-input">
					<input id="login-password" tabindex="2" name="password" type="password" placeholder="密码"
						   title="密码"/>
				</div>
				<div style="color: #BB594D;font-size: 14px;height: 14px" title="演示账户">用户名：demo 密码：123456</div>
				<a id="login-btn" tabindex="3">登&nbsp;&nbsp;&nbsp;&nbsp;录</a>
				<div class="login-check">
					<div>
						<input id="login-auto" type="checkbox" name="autoLogin">
						<label for="login-auto">自动登录</label>
					</div>
					<div>
						<input id="login-remember" type="checkbox" name="rememberPwd">
						<label for="login-remember">记住密码</label>
					</div>
				</div>
				<div class="extra">
					<a id="register"></a>
					<a id="passwordRetake"></a>
				</div>
			</form>

		</div>
	</div>

</div>

</body>
<script type="text/javascript" src="${webRoot}/layui/lay/dest/layui.all.js"></script>
<script type="text/javascript" src="${webRoot}/js/admin/login.js"></script>
</html>