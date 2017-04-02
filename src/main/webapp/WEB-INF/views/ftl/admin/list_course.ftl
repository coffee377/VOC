<!doctype html>
<html class="no-js">
<head>
	<meta charset="utf-8">
	<title>课程列表</title>
	<link rel="stylesheet" href="${webRoot}/css/admin/amazeui.min.css"/>
	<link rel="stylesheet" href="${webRoot}/css/admin/admin.css">
	<link rel="stylesheet" type="text/css" href="${webRoot}/layui/css/layui.css">
	<script type="text/javascript" src="${webRoot}/js/jquery-2.1.0.js"></script>
	<style type="text/css">
		.center {
			text-align: center;
		}
	</style>
</head>

<body>
<div class=" admin-content">
	<div class="admin-biaogelist">
		<div class="listbiaoti am-cf">
			<ul class="am-icon-flag on"> 开班信息</ul>

			<dl class="am-icon-home" style="float: right;">当前位置： 综合管理 > <a href="#">开班信息</a></dl>

			<dl>
				<a type="button" href="edit.html" class="am-btn am-btn-danger am-round am-btn-xs am-icon-plus"> 添加班级</a>
			</dl>
		</div>

		<form class="am-form am-g">
			<table width="100%" class="am-table am-table-bordered am-table-radius am-table-striped am-table-hover">
				<thead>
				<tr class="am-success">
					<th class="table-check">
						<input type="checkbox"/>
					</th>
					<th class="table-id center">ID</th>
					<th class="table-title center">课程体系</th>
					<th class="table-type center">课程名称</th>
					<th class="table-date am-hide-sm-only center">开班日期</th>
					<th class="table-date am-hide-sm-only center">班级状态</th>
					<th class="table-date am-hide-sm-only center">班级人数</th>
					<th class="table-date am-hide-sm-only center">当前人数</th>
					<th width="130px" class="table-set center">操作</th>
				</tr>
				</thead>
				<tbody>
                <#if aboutPageBean??>
                    <#list aboutPageBean.rows as item>
					<tr>
						<td>
							<input value="${item.cId!}" type="checkbox"/>
						</td>
						<td>${(item.cId)!}</td>
						<td>${(item.csId)!}</td>
						<td>${(item.cName)!}</td>
						<td class="center">${item.beginsDate?string("yyyy-MM-dd")}</td>
						<td class="center">
                            <#if item.status??>
                                <#list ["禁用","开班","抢座","爆满"] as status>
                                    <#if item.status == status_index - 1>${status}</#if>
                                </#list>
                            </#if>
						</td>
						<td class="center">${(item.capacity)!}</td>
						<td class="am-hide-sm-only center">${(item.currentNum)!}</td>
						<td>
							<div class="am-btn-toolbar">
								<div class="am-btn-group am-btn-group-xs">
									<p value="${item.cId!}"
									   class="update am-btn am-btn-default am-btn-xs am-text-secondary am-round"
									   data-am-modal="{target: '#my-popups'}" title="修改班级信息">
										<span class="am-icon-pencil-square-o"></span>
									</p>
									<p value="${item.cId!}"
									   class="delete am-btn am-btn-default am-btn-xs am-text-danger am-round"
									   title="删除班级信息">
										<span class="am-icon-trash-o"></span>
									</p>
								</div>
							</div>
						</td>
					</tr>
                    </#list>
                </#if>
				</tbody>
			</table>

			<ul class="am-pagination am-fr">
				<div id="page"></div>
			</ul>
			<div>
            <#if aboutPageBean??>
				第 ${aboutPageBean.pageNumber} 页 / 共 ${aboutPageBean.pages} 页 共 ${aboutPageBean.total} 条记录
            </#if>
			</div>

		</form>
	</div>

</div>

<script type="text/javascript" src="${webRoot}/layui/layui.js"></script>
<script type="text/javascript">
	$(function () {
		layui.use(["laypage", "layer"], function () {
			var laypage = layui.laypage,
					layer = layui.layer;
			laypage({
				cont: $("#page"),
				pages: <#if aboutPageBean??> ${aboutPageBean.pages} </#if>,//总页数
				groups: 5, //连续显示分页数
				jump: function (obj, first) {
					if (!first) {
						window.location.href = "list.html?p=" + obj.curr;
					}
				}
			});

			//删除操作
			$(".delete").click(function () {
				var id = $(this).attr("value");
				layer.confirm("确定要删除此条记录吗？", {icon: 3, title: '提示', offset: '200px'}, function (index) {
					var url = "delete/" + id;
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

			//更新操作
			$(".update").click(function () {
				window.location.href = "edit.html?cId=" + $(this).attr("value");
			})
		});
	})

</script>
</body>
</html>