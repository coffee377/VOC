<!DOCTYPE html>
<html>

<head lang="en">
    <meta charset="UTF-8">
    <title>蔻丁教育 - 中国iOS培训|Android培训|HTML5培训|UI培训|PHP培训|Java培训|大数据|VR培训开</title>
    <meta name="keywords" content="Android培训,安卓培训,安卓开发培训,Android开发培训,HTML5培训,UI培训,PHP培训,Java培训,JavaEE培训,大数据培训"/>
    <meta name="description"
          content="中国IT职业教育领先品牌,Android培训、HTML5培训、UI培训、PHP培训、Java培训、大数据培训、HTML5开发培训视频,寇丁教育长期坚持用“良心做教育”的理念。"/>
    <meta http-equiv=X-UA-Compatible content="IE=edge,chrome=1">
    <link rel="icon" href="#" type="image/x-icon"/>
    <link rel="stylesheet" href="${webRoot}/css/teacher/teacher.css"/>
    <script type="text/javascript" src="${webRoot}/js/jquery-2.1.0.js"></script>
<#include "common/base_css.ftl">
    <link rel="stylesheet" type="text/css" href="${webRoot}/css/style.css" media="screen"/>
    <style rel="stylesheet">
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
<#--<script src="Scripts/mobile_teachers.js"></script>-->
    <style>
        .t_b1 {
            background: url(${webRoot}/images/teacher/t_b1.jpg) no-repeat center top;
            height: 357px;
        }

        .t_b2 {
            background: url(${webRoot}/images/teacher/t_b2.jpg) no-repeat center top;
            height: 207px;
        }

        .teacher_list_w {
            padding-top: 35px;
            background: url(${webRoot}/images/teacher/t_bg1701.jpg) repeat center top;
        }

        .student_talk h3 {
            border-bottom: 1px solid #303030;
            padding-left: 44px;
            background: url(${webRoot}/images/teacher/teacher_icon.png) no-repeat 0 13px;
            color: #f50023;
            line-height: 50px;
            font-size: 16px;
            margin-bottom: 19px;
        }

        .t_sys a {
            display: block;
            height: 40px;
            width: 231px;
            border-radius: 40px;
            background: url(${webRoot}/images/teacher/t_btn.png) no-repeat;
            margin: 10px auto 0;
        }
    </style>

</head>

<body>
<#include "common/header.ftl">
</div>

<div class="t_banner">
    <div class="t_b1"></div>
    <div class="t_b2"></div>
</div>

<div class="teacher_list_nav">
<#--<ul class="clear base">
        <li>
            <a href="javascript:void(0);">Android讲师</a>
        </li>
        <li>
            <a href="javascript:void(0);">HTML5讲师</a>
        </li>
        <li>
            <a href="javascript:void(0);">UI讲师</a>
        </li>
        <li>
            <a href="javascript:void(0);">PHP讲师</a>
        </li>
        <li>
            <a href="javascript:void(0);">JavaEE讲师</a>
        </li>
        <li>
            <a href="javascript:void(0);">大数据讲师</a>
        </li>
    </ul>-->
</div>
<div class="teacher_list_w">
    <div class="teacher_list clear base" style="display:list-item;">
        <div class="teacher_ls_lt">
        <#if teacherPageBean??>
            <#list teacherPageBean.rows as item  >
            <ul>
                <li>
                    <img alt="" src="${webRoot}/${(item.teHeader)!}"/>
                    <dl>
                        <dt>${(item.teName)!}</dt>
                        <dd class="dd_1"><span>讲师语录：</span>${(item.teacherSays)!}</dd>
                        <dd class="dd_2">
                            <span>个人简介：</span> ${(item.teDescription)!}
                        </dd>
                        <dd class="dd_3">
                        </dd>
                    </dl>
                </li>
            </#list>
        </#if>
        </ul>
        </div>
        <div class="teacher_ls_rg">
            <div class="student_talk">
            <#--<div class="teacher_btn">
                <a target="_blank" onclick="window.open('#','_blank')" style="cursor:pointer;"><img src="${webRoot}/images/teacher/t_pic2.jpg" alt="" /></a>
                <a target="_blank" onclick="window.open('#','_blank')" style="cursor:pointer;"><img src="${webRoot}/images/teacher/t_pic3.jpg" alt="" /></a>
                <a target="_blank" onclick="window.open('#','_blank')" style="cursor:pointer;"><img src="${webRoot}/images/teacher/t_pic4.jpg" alt="" /></a>
                <a target="_blank" onclick="window.open('#','_blank')" style="cursor:pointer;"><img src="${webRoot}/images/teacher/t_pic5.jpg" alt="" /></a>
            </div>-->
                <div class="t_sys">
                    <h4>高端课程体系</h4>
                    <a href="#" class="t_sys_btn1" target="_blank"></a>
                    <a href="#" class="t_sys_btn2" target="_blank"></a>
                    <a href="#" class="t_sys_btn3" target="_blank"></a>
                    <a href="#" class="t_sys_btn4" target="_blank"></a>
                    <a href="#" class="t_sys_btn5" target="_blank"></a>
                    <a href="#" class="t_sys_btn6" target="_blank"></a>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="de">
    <div id="demo3">
    </div>
</div>
<#include "common/footer.ftl">
<#--<script src="${webRoot}/js/teacher/teacher1.js"></script>-->
<script src="${webRoot}/js/jquery.paginate.js" type="text/javascript"></script>
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
            location.href = "teacher.html?p=" + currentIndex /*+ "&s=" + $("#msg").val()*/;
        }
    });
    </#if>
</script>
</body>

</html>