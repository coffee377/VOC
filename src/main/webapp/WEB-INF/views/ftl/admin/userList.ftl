<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<link rel="shortcut icon" href="${webRoot}/favicon.ico">
	<link href="${webRoot}/css/font-awesome.min.css" rel="stylesheet">
	<link href="${webRoot}/css/bootstrap.min.css" rel="stylesheet">
	<link href="${webRoot}/css/bootstrap-theme.min.css" rel="stylesheet">
	<link href="${webRoot}/css/plugins/bootstrap-table/bootstrap-table.min.css" rel="stylesheet">
	<link href="${webRoot}/css/plugins/bootstrap-table/bootstrap-editable.css" rel="stylesheet">
	<link href="${webRoot}/layui/css/layui.css">

	<title>Bootstrap Table</title>
	<style>
		.example {
			padding: 20px;
			width: 100%;
		}
	</style>
</head>
<body>

<div class="example">

	<div id="toolbar" class="fixed-table-toolbar">
		<div class="btn-group pull-left">
			<button id="add" type="button" class="btn btn-default">
				<i class="glyphicon glyphicon-plus"></i>
			</button>
			<button id="edit" type="button" class="btn btn-default">
				<i class="glyphicon glyphicon-floppy-open"></i>
			</button>
			<button id="delete" type="button" class="btn btn-default">
				<i class="glyphicon glyphicon-trash"></i>
			</button>
		</div>
	</div>
	<table data-toggle="table" class="table table-responsive">
		<!--<thead>-->
		<!--<tr>-->
		<!--<th data-field="select" data-checkbox="true" data-halign="center">选择</th>-->
		<!--<th data-field="foodId" data-halign="center" data-width="50" data-visible="false">ID</th>-->
		<!--<th data-field="storeId" data-halign="center" data-width="100" data-visible="false">商家ID</th>-->
		<!--<th data-field="foodName" data-halign="center" data-width="100">食物名称</th>-->
		<!--<th data-field="foodImage" data-halign="center" data-width="150">食物图片</th>-->
		<!--<th data-field="foodPrice" data-halign="center" data-width="50">食物价格</th>-->
		<!--<th data-field="discount" data-halign="center" data-width="150">折扣</th>-->
		<!--</tr>-->
		<!--</thead>-->
	</table>

</div>


<!-- 全局js -->
<script src="${webRoot}/js/jquery-2.1.0.js"></script>
<script src="${webRoot}/js/bootstrap.min.js"></script>
<script src="${webRoot}/layui/layui.js"></script>


<!-- 自定义js -->

<script>

    $(function () {
        var editFoodId;
        $("table").bootstrapTable({
            height: "500",	//表格高度
            striped: false,//隔行变色
            undefinedText: "",//当数据为 undefined 时显示的字符
            cache: false,   //是否使用缓存，默认为true，所以一般情况下需要设置一下这个属性
            pagination: true,//在表格底部显示分页条
            sortable: true,   //是否启用排序
            sortOrder: "asc",   //排序方式
            sidePagination: "server",
            search: true,//是否启用搜索框
            searchOnEnterKey: true,
//            clickToSelect: true,//设置true 将在点击行时，自动选择rediobox 和 checkbox

            columns: [
                {field: '', title: '选择', width: 50, halign: 'center', checkbox: true},
                {field: 'userId', title: '用户ID', width: 60, halign: 'center', align: 'center', visible: false},
                {
                    field: 'username', title: '用户名', width: 100, halign: 'center', align: 'left',
//                    formatter: function (value, row, index) {
//                        return '<a class="username">' + value + '</a>'
//                    }
                },
                {
                    field: 'password', title: '密码', width: 150, halign: 'center', align: 'left', visible: false,
//                    formatter: function (value, row, index) {
//                        return '<a class="password">' + value + '</a>'
//                    }
                },
                {
                    field: 'realName', title: '真实姓名', width: 60, halign: 'center', align: 'center',
//                    formatter: function (value, row, index) {
//                        return '<a class="realName">' + value + '</a>'
//                    }
                },
                {
                    field: 'sex', title: '性别', width: 60, halign: 'center', align: 'center',
//                    formatter: function (value, row, index) {
//                        return '<a class="sex">' + value + '</a>'
//                    }
                }
            ],
            url: "user/list.json",//请求后台的URL	user/list.json
            method: "post",
            pageNumber: 1,   //初始化加载第一页，默认第一页
            pageSize: 5,   //每页的记录行数
            queryParams: function (params) {
                return {
                    p: params.offset / params.limit + 1,//页码
                    s: params.limit,//页面大小
                    searchText: $('.form-control').val()//初始化搜索文字
//                        sortName: "",//定义排序列,通过url方式获取数据填写字段名，否则填写下标
//                        sortOrder: ""//定义排序方式 'asc' 或者 'desc
                };
            },
            pageList: [5, 10, 20], //可供选择的每页的行数
            selectItemName: "userId",
            uniqueId: "userId",  //每一行的唯一标识，一般为主键列
            showColumns: true,//是否显示 内容列下拉框
            showRefresh: true,
            showPaginationSwitch: true,
            maintainSelected: true,//设置为 true 在点击分页按钮或搜索按钮时，将记住checkbox的选择项

            paginationPreText: "<i class='fa fa-chevron-left'></i>",
            paginationNextText: "<i class='fa fa-chevron-right'></i>",
            toolbar: "#toolbar",
            onClickRow: function (row) {
                editFoodId = row.userId
            },
            onLoadSuccess: function (data) {
//                var $table = $('table');
//                $(".foodName").editable({
//                    type: 'text',
//                    validate: function (value) {
//                        if (!value) return '食物名称不能为空!';
//                        if (!/^[\u4E00-\u9FA5]+$/.test(value)) {
//                            return '只允许输入汉字!'
//                        }
//                    },
//                    success: function (response, newValue) {
//                        $table.bootstrapTable('updateByUniqueId', {id: editFoodId, row: {foodName: newValue}});
//                    }
//                });
//                $(".foodImage").editable();
//                $(".foodPrice").editable({
//                    type: 'text',
//                    validate: function (value) {
//                        if (!value) return '价格不能为空!';
//                        if (!/^\d+(\.\d+)?$/.test(value)) {
//                            return '必须为小数或整数，请重新输入！'
//                        }
//                    },
//                    success: function (response, newValue) {
//                        $table.bootstrapTable('updateByUniqueId', {id: editFoodId, row: {foodPrice: Number(newValue)}});
//                    }
//                });
//                $(".discount").editable({
//                    type: 'text',
//                    validate: function (value) {
//                        if (!value) return '折扣不能为空!';
//                        if (!/(^0\.[1-9]\d*$)|(^1$)/.test(value)) {
//                            return '折扣率介于0于1之间！'
//                        }
//                    },
//                    success: function (response, newValue) {
//                        $table.bootstrapTable('updateByUniqueId', {id: editFoodId, row: {discount: Number(newValue)}});
//                    }
//                });
            }


        });


        $("#add").click(function () {
            layui.use('layer', 'laypage');
            var layer = layui.layer;
            layer.open({
                type: 2,
                title: '添加菜单信息',
                shade: 0.8,
                shadeClose: true,
                area: ['500px', '550px'],
                content: 'editMenu.html'
            });
        });

        $("#edit").click(function () {
            layui.use('layer');
            var layer = layui.layer;
            var $table = $('table');
            var $data = $table.bootstrapTable('getSelections');
//            alert(JSON.stringify($data))
            if ($data.length == 0) {
                layer.tips('请选择修改后的数据行进行提交', $(this), {
                    tips: [1, '#3595CC'],
                    time: 2000
                });
                return;
            }
            $.ajax({
                url: "store/updateFood.do",
                data: JSON.stringify($data),
                dataType: "json",
                contentType: "application/json; charset=utf-8",
                type: "post",
                success: function (data) {
                    $table.bootstrapTable('refresh');
                }
            });
        });

        $("#delete").click(function () {
            layui.use('layer');
            var layer = layui.layer;
            var $table = $('table');
            var $data = $table.bootstrapTable('getSelections');
            if ($data.length == 0) {
                layer.tips('请选择需要删除的数据', $(this), {
                    tips: [2, '#3595CC'],
                    time: 4000
                });
                return;
            }
            layer.confirm("确定要删除选择的记录吗？", {icon: 3, title: '提示', offset: '200px', btn: ['确定', '取消']},
                function (index) {
                    $.each($data, function (index, value) {
                        $table.bootstrapTable('removeByUniqueId', value.foodId);
                    });

                    $.ajax({
                        url: "store/deleteFood.do",
                        data: JSON.stringify($data),
                        dataType: "json",
                        contentType: "application/json; charset=utf-8",
                        type: "post",
                        success: function (data) {
                            $table.bootstrapTable('refresh');
                        }
                    });
                    layer.close(index);
                });

        });
    })

</script>

<!-- Bootstrap table -->
<script src="${webRoot}/js/plugins/bootstrap-table/bootstrap-table.min.js"></script>
<script src="${webRoot}/js/plugins/bootstrap-table/bootstrap-table-zh-CN.min.js"></script>
<script src="${webRoot}/js/plugins/bootstrap-table/bootstrap-editable.js"></script>

</body>
</html>