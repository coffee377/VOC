<!doctype html>
<html class="no-js">
<head>
	<meta charset="utf-8">
	<title>关于列表</title>
	<link rel="stylesheet" href="${webRoot}/css/admin/amazeui.min.css"/>
	<link rel="stylesheet" href="${webRoot}/css/admin/admin.css">
	<link rel="stylesheet" type="text/css" href="${webRoot}/layui/css/layui.css">
	<script type="text/javascript" src="${webRoot}/js/jquery-2.1.0.js"></script>
</head>

<body>
<div class=" admin-content">
	<div class="admin-biaogelist">
		<div class="listbiaoti am-cf">
			<ul class="am-icon-flag on"> 新闻列表</ul>

			<dl class="am-icon-home" style="float: right;">当前位置： 新闻管理 > <a href="#">新闻列表</a></dl>

			<dl>
				<a type="button" href="edit.html" class="am-btn am-btn-danger am-round am-btn-xs am-icon-plus"> 添加新闻</a>
			</dl>
			<!--这里打开的是新页面-->
		</div>


		<form class="am-form am-g">
			<table width="100%" class="am-table am-table-bordered am-table-radius am-table-striped am-table-hover">
				<thead>
				<tr class="am-success">
					<th class="table-check">
						<input type="checkbox"/>
					</th>
					<th class="table-id">ID</th>
					<th class="table-title">标题</th>
					<th class="table-type">类别</th>
					<th class="table-date am-hide-sm-only">描述</th>
					<th width="130px" class="table-set">操作</th>
				</tr>
				</thead>
				<tbody>
                <#if aboutPageBean??>
                    <#list aboutPageBean.rows as item>
					<tr>
						<td>
							<input value="${item.id!}" type="checkbox"/>
						</td>
						<td>${item.id!}</td>
						<td><a href="#">${item.title!}</a></td>
						<td>
                            <#if item.classify == 0>轮播</#if>
                            <#if item.classify == 1>新闻</#if>
                            <#if item.classify == 2>故事</#if>
                            <#if item.classify == 3>动态</#if>
                        </td>
						<td class="am-hide-sm-only">${item.description!}</td>
						<td>
							<div class="am-btn-toolbar">
								<div class="am-btn-group am-btn-group-xs">
									<p value="${item.id!}" class="update am-btn am-btn-default am-btn-xs am-text-secondary am-round"
									   data-am-modal="{target: '#my-popups'}" title="修改新闻">
										<span class="am-icon-pencil-square-o"></span>
									</p>
									<p value="${item.id!}" class="delete am-btn am-btn-default am-btn-xs am-text-danger am-round"
									   title="删除新闻">
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

        <#--<div class="am-btn-group am-btn-group-xs">-->
        <#--<button type="button" class="am-btn am-btn-default"><span class="am-icon-plus"></span> 删除</button>-->
        <#--<button type="button" class="am-btn am-btn-default"><span class="am-icon-save"></span> 上架</button>-->
        <#--<button type="button" class="am-btn am-btn-default"><span class="am-icon-save"></span> 下架</button>-->
        <#--<button type="button" class="am-btn am-btn-default"><span class="am-icon-save"></span> 移动</button>-->
        <#--<button type="button" class="am-btn am-btn-default"><span class="am-icon-plus"></span> 新增</button>-->
        <#--<button type="button" class="am-btn am-btn-default"><span class="am-icon-save"></span> 保存</button>-->
        <#--<button type="button" class="am-btn am-btn-default"><span class="am-icon-archive"></span> 移动</button>-->
        <#--<button type="button" class="am-btn am-btn-default"><span class="am-icon-trash-o"></span> 删除</button>-->
        <#--</div>-->

			<ul class="am-pagination am-fr">
            <#--<li class="am-disabled"><a href="#">«</a></li>-->
            <#--<li class="am-active"><a href="#">1</a></li>-->
            <#--<li><a href="#">2</a></li>-->
            <#--<li><a href="#">3</a></li>-->
            <#--<li><a href="#">4</a></li>-->
            <#--<li><a href="#">5</a></li>-->
            <#--<li><a href="#">»</a></li>-->
				<div id="page"></div>
			</ul>
        <#--<hr/>-->
			<div>
            <#if aboutPageBean??>
				第 ${aboutPageBean.pageNumber} 页 / 共 ${aboutPageBean.pages} 页 共 ${aboutPageBean.total} 条记录
            </#if>
			</div>

		</form>
	</div>

</div>


<!--[if lt IE 9]>
<!--<script src="http://libs.baidu.com/jquery/1.11.1/jquery.min.js"></script>-->
<!--<script src="http://cdn.staticfile.org/modernizr/2.8.3/modernizr.js"></script>-->
<#--<script src="${webRoot}/js/admin/polyfill/rem.min.js"></script>-->
<#--<script src="${webRoot}js/admin/polyfill/respond.min.js"></script>-->
<#--<script src="${webRoot}/js/admin/amazeui.legacy.js"></script>-->
<!--<![endif]-->

<!--[if (gte IE 9)|!(IE)]><!-->
<#--<script src="${webRoot}/js/admin/amazeui.min.js"></script>-->
<!--<![endif]-->

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
//						window.location.href = obj.cont.context.location.href + "?p=" + obj.curr;
//                        alert(JSON.stringify(obj.cont.context.location.href));
//						layer.msg('第 ' + obj.curr + ' 页');
					}
				},
//			hash: 'p', //自定义hash值
			});

			//删除操作
			$(".delete").click(function () {
				var id = $(this).attr("value");
				layer.confirm("确定要删除此条记录吗？", {icon: 3, title: '提示', offset: '200px'}, function (index) {
					var url = "${webRoot}/admin/about/delete/" + id;
					$.ajax({
						url: url,   //请求的url地址
						type: "post",   //请求方式
						dataType: "json",    //返回格式为
						success: function (res) {   //请求成功时处理
//                            alert(JSON.stringify(res));
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
//			    alert("edit.html?add=false&id=" + $(this).attr("value"));
//			    alert($(this).attr("value"));
				window.location.href = "edit.html?id=" + $(this).attr("value");
			})
		});
	})

</script>
</body>
</html>