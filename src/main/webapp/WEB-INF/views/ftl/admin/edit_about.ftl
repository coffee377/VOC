<!doctype html>
<html class="no-js">
<head>
	<meta charset="utf-8">
	<title>编辑新闻</title>
	<link rel="stylesheet" href="${webRoot}/css/admin/amazeui.min.css"/>
	<link rel="stylesheet" href="${webRoot}/css/admin/admin.css">
	<script src="${webRoot}/js/admin/jquery.min.js"></script>
	<style type="text/css">
		.hidden {
			display: none;
		}
	</style>
</head>

<body>


<div class="admin-biaogelist">
	<div class="fbneirong">
		<form class="am-form" action="edit" onsubmit="return check()" method="post" enctype="multipart/form-data">
			<div class="am-form-group am-cf hidden">
				<div class="zuo">ID ：</div>
				<div class="you">
					<input type="text" name="id" value="${(item.id)!}" style="width:600px;height: 40px">
				</div>
			</div>

			<div class="am-form-group am-cf">
				<div class="zuo">标题：</div>
				<div class="you">
					<input type="text" name="title" value="${(item.title)!}" style="width:600px;height: 40px">
				</div>
			</div>

			<div class="am-form-group am-cf">
				<div class="zuo">分类：</div>
				<div class="you">
					<select name="classify" style="width: 180px;height: 45px">
                    <#if item.classify??>
						<option value="0" <#if item.classify == 0>selected</#if>>轮播</option>
						<option value="1" <#if item.classify == 1>selected</#if>>新闻</option>
						<option value="2" <#if item.classify == 2>selected</#if>>故事</option>
						<option value="3" <#if item.classify == 3>selected</#if>>动态</option>
                    <#else>
						<option value="0">轮播</option>
						<option value="1">新闻</option>
						<option value="2">故事</option>
						<option value="3">动态</option>
                    </#if>
					</select>
				</div>
			</div>

			<div class="am-form-group am-cf">
				<div class="zuo">缩略图：</div>
				<div class="you">
					<input type="file" name="file">
				</div>
			</div>

			<div class="am-form-group am-cf">
				<div class="zuo">内容：</div>
				<div class="you">
					<script id="editor" name="content" type="text/plain" style="width:1000px;height:500px;">
                       ${(item.content)!}
                    </script>
				</div>

			</div>

			<div class="am-form-group am-cf">
				<div class="zuo">描述：</div>
				<div class="you">
					<textarea name="description" rows="2" style="width:1000px">${(item.description)!}</textarea>
				</div>
			</div>
			<div class="am-form-group am-cf">
				<div class="you" style="margin-left: 11%;">
					<button id="submit" type="submit" class="am-btn am-btn-success am-radius">提交</button>
				</div>
			</div>
		</form>
	</div>
</div>

<script type="text/javascript" charset="utf-8" src="${webRoot}/ueditor/ueditor.config.js"></script>
<script type="text/javascript" charset="utf-8" src="${webRoot}/ueditor/ueditor.all.min.js"> </script>
<script type="text/javascript" charset="utf-8" src="${webRoot}/ueditor/lang/zh-cn/zh-cn.js"></script>


<script type="text/javascript">
    <#-- 表单校验函数 待做 -->
	function check() {
		return true;
	}

	//实例化编辑器
	//建议使用工厂方法getEditor创建和引用编辑器实例，如果在某个闭包下引用该编辑器，直接调用UE.getEditor('editor')就能拿到相关的实例
	var ue = UE.getEditor('editor');
</script>

</body>
</html>