<!doctype html>
<html class="no-js">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Amaze UI Admin index Examples</title>
    <link rel="stylesheet" href="${webRoot}/css/admin/amazeui.min.css"/>
    <link rel="stylesheet" href="${webRoot}/css/admin/admin.css">
    <script src="${webRoot}/js/admin/jquery.min.js"></script>
    <script src="${webRoot}/js/admin/app.js"></script>
</head>
<!--[if lte IE 9]><p class="browsehappy">升级你的浏览器吧！ <a href="http://se.360.cn/" target="_blank">升级浏览器</a>以获得更好的体验！</p>
<![endif]-->
</head>
<body>
<div class="admin-biaogelist">
    <div class="listbiaoti am-cf">
        <ul class="am-icon-flag on"> 栏目名称</ul>
        <dl class="am-icon-home" style="float: right;"> 当前位置： 首页 > <a href="#">商品列表</a></dl>
    </div>
    <div class="fbneirong">
        <form class="am-form" action="insettest" method="post" enctype="multipart/form-data">

            <div class="am-form-group am-cf hidden" style="display: none">
                <div class="zuo">reID ：</div>
                <div class="you">
                    <input type="text" name="reId" value="${(item.reId)!}" style="width:600px;height: 40px">
                </div>
            </div>
            <div class="am-form-group am-cf "  style="display: none">
                <div class="zuo">empID2：</div>
                <div class="you">
                    <input type="text" name="empId" value="${(item.empId)!}" style="width:600px;height: 40px">
                </div>
            </div>

            <div class="am-form-group am-cf">
                <div class="zuo">视频地址：</div>
                <div class="you">
                    <input type="text" class="am-input-sm" id="doc-ipt-email-1" placeholder="请输入视频地址" name="reUil" value="${(item.reUil)!}"/>
                </div>
            </div>
            <div class="am-form-group am-cf">
                <div class="zuo">视频学生描述：</div>
                <div class="you">
                    <textarea class="" rows="2" id="doc-ta-1" name="reDescription" >${(item.reDescription)!}</textarea>
                </div>
            </div>
            <div class="am-form-group am-cf">
                <div class="zuo">视频图片：</div>
                <div class="you" style="height: 45px;">
                    <input type="file" id="doc-ipt-file-1" name="file">
                    <p class="am-form-help">请选择要上传的文件...</p>
                </div>
            </div>
			<div class="am-form-group am-cf" >
				<div class="zuo">学生ID：</div>
				<div class="you">
					<input type="text" <#if (item.stuId)??> readOnly="true"</#if> name="stuId" value="${(item.stuId)!}" style="width:300px;height: 40px">

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
    <div class="foods">
        <dl>
            <a href="" title="返回头部" class="am-icon-btn am-icon-arrow-up"></a>
        </dl>
    </div>
</div>
<!--[if lt IE 9]>
<!--<script src="http://libs.baidu.com/jquery/1.11.1/jquery.min.js"></script>
<script src="http://cdn.staticfile.org/modernizr/2.8.3/modernizr.js"></script>-->
<script src="${webRoot}/js/admin/polyfill/rem.min.js"></script>
<script src="${webRoot}/js/admin/polyfill/respond.min.js"></script>
<script src="${webRoot}/js/admin/amazeui.legacy.js"></script>
<![endif]-->

<!--[if (gte IE 9)|!(IE)]><!-->
<script src="${webRoot}/js/admin/amazeui.min.js"></script>
<!--<![endif]-->

</body>
</html>