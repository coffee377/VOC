<!doctype html>
<html class="no-js">
<head>
	<meta charset="utf-8">
	<title>编辑新闻</title>
	<link rel="stylesheet" href="${webRoot}/css/admin/amazeui.min.css"/>
	<link rel="stylesheet" href="${webRoot}/css/amazeui.datetimepicker.css"/>
	<link rel="stylesheet" href="${webRoot}/css/admin/admin.css">
	<script type="text/javascript" src="${webRoot}/js/admin/jquery.min.js"></script>
	<script type="text/javascript" src="${webRoot}/js/amazeui.datetimepicker.min.js"></script>
	<script type="text/javascript" src="${webRoot}/js/amazeui.datetimepicker.zh-CN.js" charset="UTF-8"></script>


	<script src="${webRoot}/js/admin/app.js"></script>
	<style type="text/css">
		.hidden {
			display: none;
		}

		.nav {
            position: relative;
            left: -30px;
			top: -20px;
		}
	</style>
</head>

<body>

<div class=" admin-content">
	<div class="admin-biaogelist">
		<div class="fbneirong">
			<div class="listbiaoti am-cf nav">
				<ul class="am-icon-flag on"> 添加班级</ul>

				<dl class="am-icon-home" style="float: right;">当前位置： 综合管理 > <a href="#">添加班级</a></dl>

				<dl>
					<a type="button" href="list.html" class="am-btn am-btn-danger am-round am-btn-xs am-icon-plus">
						开班信息</a>
				</dl>
			</div>
			<form class="am-form" action="edit" onsubmit="return check()" method="post" enctype="multipart/form-data">
				<div class="am-form-group am-cf hidden">
					<div class="zuo">课程ID ：</div>
					<div class="you">
						<input type="text" name="cId" value="${(item.cId)!}" style="width:300px;height: 40px">
					</div>
				</div>

				<div class="am-form-group am-cf">
					<div class="zuo">课程体系：</div>
					<div class="you">
						<select name="csId" style="width: 300px;height: 40px;padding: 0 5px">
                        <#list courseSys as cs>
                            <#if item.csId??>
								<option value="${cs.csId}"
                                        <#if item.csId == cs.csId>selected</#if>>${cs.nickName}</option>
                            <#else>
								<option value="${cs.csId}">${cs.nickName}</option>
                            </#if>
                        </#list>
						</select>
					</div>
				</div>
				<div class="am-form-group am-cf">
					<div class="zuo">课程名称：</div>
					<div class="you">
						<input type="text" name="cName" value="${(item.cName)!}" style="width:300px;height: 40px">
					</div>
				</div>


				<div class="am-form-group am-cf">
					<div class="zuo">开班日期：</div>
					<div class="you">
						<input type="text" name="time" id="datetimepicker"
							   value="<#if item.beginsDate??>${item.beginsDate?string("yyyy-MM-dd")}</#if>"
							   class="am-form-field" style="width:300px" readonly>
					</div>
				</div>

				<div class="am-form-group am-cf">
					<div class="zuo">班级状态：</div>
					<div class="you">
						<select name="status" style="width: 300px;height: 40px;padding: 0 5px">
                        <#list ["禁用","开班","抢座","爆满"] as status>
							<#if item.status??>
								<option value="${status_index - 1}" <#if item.status == status_index - 1>selected</#if>>${status}</option>
							<#else>
								<option value="${status_index - 1}">${status}</option>
							</#if>
                        </#list>
						</select>
					</div>
				</div>

				<div class="am-form-group am-cf">
					<div class="zuo">班级人数：</div>
					<div class="you">
						<input type="text" name="capacity" value="${(item.capacity)!}" style="width:300px">
					</div>
				</div>
				<div class="am-form-group am-cf">
					<div class="zuo">当前人数：</div>
					<div class="you">
						<input type="text" name="currentNum" value="${(item.currentNum)!}" style="width:300px">
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
</div>
<script type="text/javascript">
    <#-- 表单校验函数 待做 -->
	function check() {
		return true;
	}
	/*时间控件*/
	$('#datetimepicker').datetimepicker({
		format: 'yyyy-mm-dd',
		maxView: 'month',
		minView: 'month',
		language: 'zh-CN',
		autoclose: true,
		todayBtn: true,
		todayHighlight: true
	});

</script>

</body>
</html>