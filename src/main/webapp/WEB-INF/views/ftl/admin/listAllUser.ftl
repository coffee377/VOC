<!DOCTYPE html>
<html lang="en">

<head>
	<meta charset="UTF-8">
	<link rel="shortcut icon" type="image/x-icon" href="${webRoot}/favicon.ico">
	<title>${title!}</title>
</head>
<body>
freemarker 模板……用户数据列表……
<#--${Session.USER}-->
<br>
<table>
	<tr>
		<td>用户ID</td>
		<td>用户名</td>
		<td>角色</td>
		<td>真实姓名</td>
		<td>密码</td>
		<td>手机</td>
		<td>邮箱</td>
		<td>上次登录时间</td>
		<td>图像</td>
	</tr>

<#list users as item>
	<tr>
		<td>${(item.userId)!}</td>
		<td>${(item.username)!}</td>
		<td>${(item.roleId)!}</td>
		<td>${(item.realName)!}</td>
		<td>${(item.password)!}</td>
		<td>${(item.phone)!}</td>
		<td>${(item.email)!}</td>
		<td>${(item.loginTime?string("yyyy-MM-dd HH:mm:ss"))!}</td>
		<td>${(item.headPic)!}</td>
	</tr>
</#list>
</table>

</body>
</html>