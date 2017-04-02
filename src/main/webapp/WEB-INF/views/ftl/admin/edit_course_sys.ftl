<!doctype html>
<html class="no-js">
<head>
    <meta charset="utf-8">
    <title>编辑新闻</title>
    <link rel="stylesheet" href="${webRoot}/css/admin/amazeui.min.css"/>
    <link rel="stylesheet" href="${webRoot}/css/admin/admin.css">
    <script src="${webRoot}/js/admin/jquery.min.js"></script>
    <script src="${webRoot}/js/admin/app.js"></script>
    <style type="text/css">
        .hidden {
            display: none;
        }
    </style>
</head>

<body>


<div class="admin-biaogelist">
    <div class="fbneirong">
        <form class="am-form" action="edit" onsubmit="return check()" method="post" >
            <div class="am-form-group am-cf hidden">
                <div class="zuo">ID ：</div>
                <div class="you">
                    <input type="text" name="csId" value="${(item.csId)!}" style="width:600px;height: 40px">
                </div>
            </div>

            <div class="am-form-group am-cf">
                <div class="zuo">课程体系名：</div>
                <div class="you">
                    <input type="text" name="csName" value="${(item.csName)!}" style="width:300px;height: 40px">
                </div>
            </div>

            <div class="am-form-group am-cf">
                <div class="zuo">课程体系别名（中文名）:</div>
                <div class="you">
                    <input type="text" name="nickName" value="${(item.nickName)!}" style="width:300px;height: 40px">
                </div>
            </div>

            <#--<div class="am-form-group am-cf">-->
                <#--<div class="zuo">别名（中文名）：</div>-->
                <#--&lt;#&ndash;<div class="you">&ndash;&gt;-->
                    <#--&lt;#&ndash;<select name="classify" style="width: 80px;height: 45px">&ndash;&gt;-->
                    <#--&lt;#&ndash;<#if item.classify??>&ndash;&gt;-->
                        <#--&lt;#&ndash;<option value="0" <#if item.classify == 0>selected</#if>>轮播</option>&ndash;&gt;-->
                        <#--&lt;#&ndash;<option value="1" <#if item.classify == 1>selected</#if>>新闻</option>&ndash;&gt;-->
                        <#--&lt;#&ndash;<option value="2" <#if item.classify == 2>selected</#if>>故事</option>&ndash;&gt;-->
                        <#--&lt;#&ndash;<option value="3" <#if item.classify == 3>selected</#if>>动态</option>&ndash;&gt;-->
                    <#--&lt;#&ndash;<#else>&ndash;&gt;-->
                        <#--&lt;#&ndash;<option value="0">轮播</option>&ndash;&gt;-->
                        <#--&lt;#&ndash;<option value="1">新闻</option>&ndash;&gt;-->
                        <#--&lt;#&ndash;<option value="2">故事</option>&ndash;&gt;-->
                        <#--&lt;#&ndash;<option value="3">动态</option>&ndash;&gt;-->
                        <#---->
                    <#--&lt;#&ndash;</select>&ndash;&gt;-->
                <#--</div>-->
            <#--</div>-->

            <#--<div class="am-form-group am-cf">-->
                <#--<div class="zuo">缩略图：</div>-->
                <#--<div class="you">-->
                    <#--<input type="file" name="file">-->
                <#--</div>-->
            <#--</div>-->

            <#--<div class="am-form-group am-cf">-->
                <#--<div class="zuo">内容：</div>-->
                <#--<div class="you">-->
                    <#--<textarea name="content" rows="2" style="width:600px">${(item.content)!}</textarea>-->
                <#--</div>-->
            <#--</div>-->

            <div class="am-form-group am-cf">
                <div class="zuo">描述：</div>
                <div class="you">
                    <textarea name="description" rows="2" style="width:600px">${(item.description)!}</textarea>
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


<!--[if lt IE 9]>
<!--<script src="http://libs.baidu.com/jquery/1.11.1/jquery.min.js"></script>-->
<!--<script src="http://cdn.staticfile.org/modernizr/2.8.3/modernizr.js"></script>-->
<script src="${webRoot}/js/admin/polyfill/rem.min.js"></script>
<script src="${webRoot}/js/admin/polyfill/respond.min.js"></script>
<script src="${webRoot}/js/admin/amazeui.legacy.js"></script>
<!--<![endif]-->

<!--[if (gte IE 9)|!(IE)]><!-->
<script src="${webRoot}/js/admin/amazeui.min.js"></script>
<!--<![endif]-->
<#-- 表单校验函数 待做 -->
<script type="text/javascript">
    function check() {
        return true;
    }
</script>

</body>
</html>