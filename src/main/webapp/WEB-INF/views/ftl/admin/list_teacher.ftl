<!doctype html>
<html class="no-js">
<head>
	<meta charset="utf-8">
	<title>教师</title>
	<link rel="stylesheet" href="${webRoot}/css/admin/amazeui.min.css"/>
	<link rel="stylesheet" href="${webRoot}/css/admin/admin.css">
	<script src="${webRoot}/js/admin/app.js"></script>
	<link rel="stylesheet" type="text/css" href="${webRoot}/css/style.css" media="screen"/>
	<script type="text/javascript" src="${webRoot}/js/jquery-2.1.0.js"></script>

	<script src="${webRoot}/js/jquery.paginate.js" type="text/javascript"></script>
	<link rel="stylesheet" type="text/css" href="${webRoot}/layui/css/layui.css">
	<script type="text/javascript" src="${webRoot}/layui/layui.js"></script>
	<style rel="stylesheet">
		tr th {
			width: 50px;
			height: 30px;
		}

		/*a img {
            border: none;
            outline: none;
        }*/

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
</head>

<body>
<div class="admin-biaogelist">
	<div class="listbiaoti am-cf">
		<ul class="am-icon-users"> 讲师列表</ul>
		<dl class="am-icon-home" style="float: right;">当前位置： 首页 > <a href="#">讲师列表</a></dl>
		<dl>
			<a href="Add.html" type="button" class="am-btn am-btn-danger am-round am-btn-xs am-icon-plus"> 添加讲师</a>
		</dl>
		<dl>
			<a type="button" class="deleteAll am-btn am-btn-danger am-round am-btn-xs am-icon-plus">多删</a>
		</dl>
		<!--这里打开的是新页面-->
	</div>
	<form class="am-form am-g">
		<table width="100%" class="am-table am-table-bordered am-table-radius am-table-striped">
			<thead>
			<tr class="am-success">
				<th class="table-check"><input type="checkbox"/></th>
				<th class="table-id">ID</th>
				<th class="table-title">讲师姓名</th>
				<th class="table-author am-hide-sm-only">讲师语录</th>
            <#--<th class="table-type">讲师描述</th>-->
            <#--<th class="table-author am-hide-sm-only">讲师图片</th>-->
				<th width="130px" class="table-set">操作</th>

			</tr>
			</thead>
			<tbody>
            <#if teacherPageBean?? >
                <#list teacherPageBean.rows as item>
				<tr>
					<td><input type="checkbox" class="ids" value="${(item.teId)!}"/></td>
					<td>${(item.teId)!}</td>
					<td>${(item.teName)!}</td>
					<td>${(item.teacherSays)!}</td>
                <#--<td>${(item.teDescription)!}</td>-->
                <#--<td>${(item.teHeader)!}</td>-->
					<td>
						<div class="am-btn-toolbar">
							<div class="am-btn-group am-btn-group-xs">
								<p value="${item.teId!}"
								   class="update am-btn am-btn-default am-btn-xs am-text-secondary am-round"
								   data-am-modal="{target: '#my-popups'}" title="修改"><span
										class="am-icon-pencil-square-o"></span></p>
								<p value="${item.teId!}"
								   class="delete am-btn am-btn-default am-btn-xs am-text-danger am-round"
								   title="删除"><span class="am-icon-trash-o"></span></p>
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

<script type="text/javascript">
    <#if teacherPageBean??>
	$("#demo3").paginate({
		count: ${teacherPageBean.pages},
		start: ${teacherPageBean.pageNumber},
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
			location.href = "tlist.html?p=" + currentIndex;
		}
	});
    </#if>
</script>
<script type="text/javascript">
	function removeByValue(arr, val) {
		for (var i = 0; i < arr.length; i++) {
			if (arr[i] == val) {
				arr.splice(i, 1);
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
					removeByValue(chk_value, $(this).val())
				} else {
					$(this).attr("checked", true);
					chk_value.push($(this).val())
				}
			});

			/*删除操作*/
			$(".delete").click(function () {
				var teid = $(this).attr("value");
				layer.confirm("确定要删除此条记录吗？", {icon: 3, title: '提示', offset: '200px'}, function (index) {
					var url = "${webRoot}/admin/teacher/delete/" + teid;
					$.ajax({
						url: url,   //请求的url地址
						type: "post",   //请求方式
						dataType: "json",    //返回格式为
						success: function (res) {   //请求成功时处理
							alert(JSON.stringify(res));
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

			/*多个删除*/
			$(".deleteAll").click(function () {
				layer.confirm("确定要删除多条记录吗？", {icon: 3, title: '提示', offset: '200px'}, function (index) {
					var str = chk_value.join(",");
					var url = "${webRoot}/admin/teacher/deletes/" + str;
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
			/*更新*/
			$(".update").click(function () {
				window.location.href = "insetTeacher.html?teid=" + $(this).attr("value");
			});
		});
	});
</script>
</body>
</html>