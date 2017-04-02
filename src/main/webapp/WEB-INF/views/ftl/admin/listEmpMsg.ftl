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
	<meta http-equiv="Cache-Control" content="no-siteapp"/>
<#-- <link rel="icon" type="image/png" href="${webRoot}/assets/i/favicon.png">
 <link rel="apple-touch-icon-precomposed" href="assets/i/app-icon72x72@2x.png">-->
<#-- <meta name="apple-mobile-web-app-title" content="Amaze UI"/>-->
	<link rel="stylesheet" href="${webRoot}/css/admin/amazeui.min.css"/>
	<link rel="stylesheet" href="${webRoot}/css/admin/admin.css">
	<script type="text/javascript" src="${webRoot}/js/jquery-2.1.0.js"></script>
	<link rel="stylesheet" type="text/css" href="${webRoot}/css/style.css" media="screen"/>
	<link rel="stylesheet" type="text/css" href="${webRoot}/layui/css/layui.css">
	<script src="${webRoot}/js/jquery.paginate.js" type="text/javascript"></script>
</head>
<style>
	tr th {
		width: 50px;
		height: 30px;
	}

	a img {
		border: none;
		outline: none;
	}

	.content {
		margin-top: 100px;
		padding: 0px;
		bottom: 0px;
	}

	.about {
		width: 100%;
		height: 400px;
		background: transparent url(about.png) repeat-x top left;
		border-top: 2px solid #ccc;
		border-bottom: 2px solid #000;
	}

	.de {
		width: 580px;
		padding: 10px;
		margin: 10px auto;
		border: 1px solid #fff;
		background-color: #f7f7f7;
	}

	.pagedemo {
		border: 1px solid #CCC;
		width: 310px;
		margin: 2px;
		padding: 50px 10px;
		text-align: center;
		background-color: white;
	}

	.pagesize {
		width: 500px;
		height: auto;
		position: relative;
		left: 900px;
		top: -70px;
	}

</style>
<body>

<div class=" admin-content">

	<div class="admin-biaogelist">
		<div class="listbiaoti am-cf">
			<ul class="am-icon-users"> 就业管理</ul>
			<dl class="am-icon-home" style="float: right;">当前位置： 首页 > <a href="#">就业信息</a></dl>
			<dl>
				<a href="${webRoot}/admin/employ/add.html" class="am-btn am-btn-danger am-round am-btn-xs am-icon-plus">新增</a></a>
			</dl>
			<dl>
				<a type="button" id="deleteAll" class="am-btn am-btn-danger am-round am-btn-xs am-icon-plus">多删</a>
			</dl>
		</div>

		<form class="am-form am-g">
			<table width="100%" class="am-table am-table-bordered am-table-radius am-table-striped">
				<thead>
				<tr class="am-success">
					<th class="table-check"><input type="checkbox"/></th>

					<th>姓名</th>
					<th>学历</th>
					<th>目前状态</th>
					<th>专业</th>
					<th>入职企业</th>
					<th>月薪</th>
					<th>地点</th>
					<th>就业时间</th>
					<th>操作</th>

				</tr>
				</thead>
				<tbody>
                <#if empPageBean??>
                    <#list empPageBean.rows as item>
					<tr>
						<th class="table-check">
							<input type="checkbox" class="ids" value="${item.empId}"/>
						</th>

						<td>${item.stu.stuName}<input class="editId" type="hidden" value="${item.empId}"></td>
						<td>${(item.stu.eduBackground)!}</td>
						<td>${(item.stu.status)!}</td>
						<td>${(item.stu.major)!}</td>
						<td>${(item.enterprise)!}</td>
						<td>${(item.monSalary)!}</td>
						<td>${(item.address)!}</td>
						<td>
                            <#if item.hireDate??> ${item.hireDate?string("yyyy-MM-dd")} </#if>
						</td>

						<td>
							<div class="am-btn-toolbar">
								<div class="am-btn-group am-btn-group-xs">
									<p value="${item.empId}"
									   class="update am-btn am-btn-default am-btn-xs am-text-secondary am-round"
									   data-am-modal="{target: '#my-popups'}" title="修改"><span
											class="am-icon-pencil-square-o"></span></p>
									<p value="${item.empId}"
									   class="delete am-btn am-btn-default am-btn-xs am-text-danger am-round"
									   title="删除"><span
											class="am-icon-trash-o"></span></p>
								</div>
							</div>
						</td>
					</tr>
                    </#list>
                </#if>

				</tbody>
			</table>


			<div class="de">
				<div id="demo3">
				</div>
			</div>
		</form>
	</div>

</div>

<script type="text/javascript" src="${webRoot}/layui/layui.js"></script>
<script type="text/javascript">

    <#if empPageBean??>
	$("#demo3").paginate({
		count: ${empPageBean.pages},
		start: ${empPageBean.pageNumber},
		display: 10,
		border: true,
		border_color: '#fff',
		text_color: '#fff',
		background_color: 'gray',
		border_hover_color: '#ccc',
		text_hover_color: '#000',
		background_hover_color: '#fff',
		images: false,
		mouse: 'press',
		onChange: function (currentIndex) {
			location.href = "${webRoot}/admin/employ/list.html?p=" + currentIndex;
		}
	});
    </#if>
</script>
<script>
	function removeByValue(arr, val) {
		for(var i=0; i<arr.length; i++) {
			if(arr[i] == val) {
				arr.splice(i,1);
				break;
			}
		}
	}

	$(function () {
		var chk_value = [];

		layui.use(["laypage", "layer"], function () {

			$(".ids").click(function () {
				if ($(this).attr("checked")) {
					$(this).removeAttr("checked");
					removeByValue(chk_value,$(this).val())
				} else {
					$(this).attr("checked", true);
					chk_value.push($(this).val())
				}
			});

			//删除单个
			$(".delete").click(function () {
				var id = $(this).attr("value");
				layer.confirm("确定要删除此条记录吗？", {icon: 3, title: '提示', offset: '200px'}, function (index) {
					var url = "${webRoot}/admin/employ/delete/" + id;
					$.ajax({
						url: url,   //请求的url地址
						type: "post",   //请求方式
						dataType: "json",    //返回格式为
						success: function (res) {   //请求成功时处理
							if (res.status > 0) {
								//刷新页面
								window.location.reload();
							}
						},
						error: function (XMLHttpRequest, textStatus, errorThrown) {
							alert(XMLHttpRequest.status);
							alert(XMLHttpRequest.readyState);
							alert(textStatus);
							alert(errorThrown);
						}
					});
					layer.close(index);
				});
			});

			//删除多个
			$("#deleteAll").click(function () {
				if (chk_value.length > 0) {
					layer.confirm("确定要删除选中的记录吗？", {icon: 3, title: '提示', offset: '200px'}, function (index) {
						var str = chk_value.join(",");
						var url = "${webRoot}/admin/employ/deletemany/" + str;
						$.ajax({
							url: url,   //请求的url地址
							type: "post",   //请求方式
							dataType: "json",    //返回格式为
							success: function (res) {   //请求成功时处理
								if (res.status > 0) {
									//刷新页面
									window.location.reload();
								}
							},
							error: function (XMLHttpRequest, textStatus, errorThrown) {
								alert(XMLHttpRequest.status);
								alert(XMLHttpRequest.readyState);
								alert(textStatus);
								alert(errorThrown);
							}
						});
						layer.close(index);
					});
				} else {
					layer.tips("请选择需要删除的记录！", $(this), {
						tips: [2, '#3595CC'],
						time: 5000
					})
				}

			});
			//更新操作
			$(".update").click(function () {
				window.location.href = "add.html?id=" + $(this).attr("value");
			})


		});

	});


</script>

</body>
</html>