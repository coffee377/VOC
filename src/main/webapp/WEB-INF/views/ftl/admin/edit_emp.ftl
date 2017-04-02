<!doctype html>
<html class="no-js">
<head>
    <meta charset="utf-8">
    <title>Amaze UI Admin index Examples</title>
    <link rel="stylesheet" href="${webRoot}/css/admin/amazeui.min.css"/>
    <link rel="stylesheet" href="${webRoot}/css/admin/admin.css">
	<link rel="stylesheet" href="${webRoot}/css/amazeui.datetimepicker.css"/>
	<style>
		.hidden{
			display: none;
		}
	</style>
</head>

<body>

<div class=" admin-content">
    <div class="admin-biaogelist">
        <div class="listbiaoti am-cf">
            <ul class="am-icon-flag on"> 栏目名称</ul>
            <dl class="am-icon-home" style="float: right;"> 当前位置： 首页 > <a href="#">编辑就业信息</a></dl>
        </div>

        <div class="fbneirong" >
            <form class="am-form" action="save" method="post">
                <div class="hidden am-form-group am-cf" >
                    <div class="zuo">就业序号：</div>
                    <div class="you">
                        <input type="text" name="empId" value="${(item.empId)!}" style="width:300px;height: 40px">
                    </div>
                </div>
                <div class="am-form-group am-cf" >
                    <div class="zuo">学生ID：</div>
                    <div class="you">
                        <input type="text" <#if (item.stuId)??> readOnly="true"</#if> name="stuId" value="${(item.stuId)!}" style="width:300px;height: 40px">

                    </div>
                </div>

                <div class="am-form-group am-cf" >
                    <div class="zuo">入职企业：</div>
                    <div class="you">
                        <input type="text" name="enterprise" value="${(item.enterprise)!}" style="width:300px;height: 40px">
                    </div>
                </div>

                <div class="am-form-group am-cf" >
                    <div class="zuo">月薪：</div>
                    <div class="you">
                        <input type="text" name="monSalary" value="${(item.monSalary)!}" style="width:300px;height: 40px">
                    </div>
                </div>

                <div class="am-form-group am-cf" >
                    <div class="zuo">地点：</div>
                    <div class="you">
                        <input type="text" name="address" value="${(item.address)!}" style="width:300px;height: 40px">
                    </div>
                </div>
				<div class="am-form-group am-cf">
					<div class="zuo">受雇日期：</div>
					<div class="you">
						<input type="text" name="times" id="datetimepicker"
							   value="<#if item.hireDate??>${item.hireDate?string("yyyy-MM-dd")}</#if>"
							   class="am-form-field" style="width:300px" readonly>
					</div>
				</div>

                <div class="am-form-group am-cf" >
                    <div class="zuo">就业方式：</div>
                    <div class="you">
                        <select name="empWay"  style="width: 300px;height: 40px;;padding: 0 5px">
                        <#if item.empWay??>
                            <option value="自主就业" <#if item.empWay == "自主就业">selected</#if>>自主就业</option>
                            <option value="推荐就业" <#if item.empWay == "推荐就业">selected</#if>>推荐就业</option>
                        <#else>
                            <option value="自主就业">自主就业</option>
                            <option value="推荐就业">推荐就业</option>
                        </#if>
                        </select>
                    </div>
                </div>

                <div class="am-form-group am-cf">
                    <div class="you" style="margin-left: 11%;">
                        <button type="submit" class="am-btn am-btn-success am-radius">发布</button>
                    </div>
                </div>
            </form>
        </div>

    </div>
</div>
<script type="text/javascript" src="${webRoot}/js/amazeui.datetimepicker.min.js"></script>
<script type="text/javascript" src="${webRoot}/js/amazeui.datetimepicker.zh-CN.js" charset="UTF-8"></script>
<script type="text/javascript">
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