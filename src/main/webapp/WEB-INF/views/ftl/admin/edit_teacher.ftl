<!doctype html>
<html class="no-js">
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>Amaze UI Admin index Examples</title>
	<meta name="description" content="这是一个 index 页面">
	<meta name="keywords" content="index">
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
	<meta name="renderer" content="webkit">
	<link rel="stylesheet" href="${webRoot}/css/admin/amazeui.min.css"/>
	<link rel="stylesheet" href="${webRoot}/css/admin/admin.css">
	<script src="${webRoot}/js/admin/jquery.min.js"></script>
	<script src="${webRoot}/js/admin/app.js"></script>
</head>

<body>
<div class="admin-biaogelist">
	<div class="listbiaoti am-cf">
		<ul class="am-icon-flag on"> 栏目名称</ul>
		<dl class="am-icon-home" style="float: right;"> 当前位置： 首页 > <a href="#">新增/更新列表</a></dl>
	</div>
	<div class="fbneirong">
		<form class="am-form" action="insertTeacher" method="post" enctype="multipart/form-data">
			<div class="am-form-group am-cf hidden" style="display: none">
				<div class="zuo">reID ：</div>
				<div class="you">
					<input type="text" name="teId" value="${(item.teId)!}" style="width:600px;height: 40px;">
				</div>
			</div>
			<div class="am-form-group am-cf">
				<div class="zuo">讲师姓名：</div>
				<div class="you">
					<input type="text" class="am-input-sm" id="doc-ipt-email-1" placeholder="请输入讲师姓名" name="teName"
						   value="${(item.teName)!}">
				</div>
			</div>
			<div class="am-form-group am-cf">
				<div class="zuo">讲师语录：</div>
				<div class="you">
					<input type="text" class="am-input-sm" id="doc-ipt-email-2" placeholder="请输入讲师语录" name="teacherSays"
						   value="${(item.teacherSays)!}">
				</div>
			</div>
			<div class="am-form-group am-cf">
				<div class="zuo">讲师描述：</div>
				<div class="you">
					<textarea class="" rows="2" id="doc-ta-1" name="teDescription">${(item.teDescription)!}</textarea>
				</div>
			</div>
			<div class="am-form-group am-cf">
				<div class="zuo">讲师图片：</div>
				<div class="you" style="height: 45px;">
					<input type="file" name="file" id="doc-ipt-file-1">
					<p class="am-form-help">请选择要上传的文件...</p>
				</div>
			</div>
			<div>
				&nbsp;
			</div>
			<div class="am-form-group am-cf">
				<div class="you" style="margin-left: 11%;">
					<button type="submit" class="am-btn am-btn-success am-radius">提交</button>
				</div>
			</div>
		</form>
	</div>

</div>


</body>
</html>