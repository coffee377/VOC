<!DOCTYPE html>
<html lang="en">
<meta charset="UTF-8">
<title>蔻丁教育 - Android培训|HTML5培训|UI培训|PHP培训|Java培训|大数据</title>
<meta name="keywords" content="Android培训,安卓培训,安卓开发培训,Android开发培训,HTML5培训,UI培训,PHP培训,Java培训,JavaEE培训,大数据培训"/>
<meta name="description"
      content="中国IT职业教育领先品牌,Android培训、HTML5培训、UI培训、PHP培训、Java培训、大数据培训、HTML5开发培训视频,寇丁教育长期坚持用“良心做教育”的理念。"/>
<meta http-equiv=X-UA-Compatible content="IE=edge,chrome=1">
<!--<link rel="stylesheet" href="css/base_index.css"/>
<link rel="stylesheet" href="css/base_bottom.css"/>-->
<#include "common/base_css.ftl">
<link rel="icon" href="#" type="image/x-icon"/>
<link rel="stylesheet" href="${webRoot}/css/xygy20161202.css">
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

    .pagesize{
        width: 500px;
        height:auto;
        position: relative;
        left: 900px;
        top:-70px;
    }

</style>
<style type="text/css">
    DIV.digg {
        PADDING-RIGHT: 3px;
        PADDING-LEFT: 3px;
        PADDING-BOTTOM: 3px;
        MARGIN: 3px;
        PADDING-TOP: 3px;
        TEXT-ALIGN: center
    }

    DIV.digg A {
        BORDER-RIGHT: #aaaadd 1px solid;
        PADDING-RIGHT: 5px;
        BORDER-TOP: #aaaadd 1px solid;
        PADDING-LEFT: 5px;
        PADDING-BOTTOM: 2px;
        MARGIN: 2px;
        BORDER-LEFT: #aaaadd 1px solid;
        COLOR: #808080;
        PADDING-TOP: 2px;
        BORDER-BOTTOM: #aaaadd 1px solid;
        TEXT-DECORATION: none
    }

    DIV.digg A:hover {
        BORDER-RIGHT: #808080 1px solid;
        BORDER-TOP: #808080 1px solid;
        BORDER-LEFT: #808080 1px solid;
        COLOR: #000;
        BORDER-BOTTOM: #808080 1px solid
    }

    DIV.digg A:active {
        BORDER-RIGHT: #808080 1px solid;
        BORDER-TOP: #808080 1px solid;
        BORDER-LEFT: #808080 1px solid;
        COLOR: #000;
        BORDER-BOTTOM: #808080 1px solid
    }

    DIV.digg SPAN.current {
        BORDER-RIGHT: #808080 1px solid;
        PADDING-RIGHT: 5px;
        BORDER-TOP: #808080 1px solid;
        PADDING-LEFT: 5px;
        FONT-WEIGHT: bold;
        PADDING-BOTTOM: 2px;
        MARGIN: 2px;
        BORDER-LEFT: #808080 1px solid;
        COLOR: #fff;
        PADDING-TOP: 2px;
        BORDER-BOTTOM: #808080 1px solid;
        BACKGROUND-COLOR: #808080
    }

    DIV.digg SPAN.disabled {
        BORDER-RIGHT: #eee 1px solid;
        PADDING-RIGHT: 5px;
        BORDER-TOP: #eee 1px solid;
        PADDING-LEFT: 5px;
        PADDING-BOTTOM: 2px;
        MARGIN: 2px;
        BORDER-LEFT: #eee 1px solid;
        COLOR: #ddd;
        PADDING-TOP: 2px;
        BORDER-BOTTOM: #eee 1px solid
    }
</style>
</head>
<body>
<#include "common/header.ftl">

<div class="banner">
</div>
<div class="base">
    <input type="hidden" value="#" id="url">
    <div class="tab_nr clear active">
        <div class="video_tab_r">
            <ul class="active">
                <li class="clear active">
                <#if recollectionPageBean??>
                    <#list recollectionPageBean.rows as item  >
                        <a href="${(item.reUil)!}" target="_blank" class="video_list">
                            <img src="${webRoot}/${(item.rePhoto)!}" alt="图片不存在！" height="300" width="422">
                            <h6>${(item.student.stuName)!}-${(item.course.beginsDate?string("yyyyMMdd"))!}期-${(item.course.cName)!}</h6>
                            <span>就业薪水：${(item.employment.monSalary)!}</span>
                            <img src="${webRoot}/images/studentsSays/video_ico2.png" height="70" width="68"
                                 class="video_btn">
                            <div>
                                <em></em>
                                <i>学员感言视频</i>
                                <p style="text-align: left">
                                ${(item.reDescription)!}</p>
                            </div>
                        </a>
                    </#list>
                </#if>
                </li>
            </ul>
            <div class="de">
                <div id="demo3"></div>
            </div>
        </div>
    </div>
</div>
<div class="main3">
    <div class="base">
        <h3><span>我思，我感，</span>故我在</h3>
        <p>你只羡慕我的高薪，却没看到我的艰辛<br/> 你有你的考研，我有我的编程语言
            <br/> 你否定我看似艰辛不稳定的现在，我决定我骄傲潇洒有成就感的未来
            <br/> 你嘲笑我不如盖茨和乔布斯，不配去创造，我可怜你总是啃老
            <br/> 你可以轻视我的年少轻狂，我会证明这是谁的时代
            <br/> 编程注定是漫长的旅行，路上少不了纠结和质疑，但那又怎样
            <br/> 哪怕Bug无数，也要用代码畅写人生
            <br/> 我是蔻丁学员，我为蔻丁代言！
        </p>
    </div>
</div>
<div class="main4">
    <div class="base">
        <h3><span>蔻丁</span>不只是一家培训机构 而是通往未来职场的门</h3>
        <ul>
            <li class="fl">
                <a href="#" target="_blank"><span></span><span>了解完整课程体系</span></a>
            </li>
            <li class="fl">
                <a href="#" target="_blank"><span></span><span>了解更多学员感悟</span></a>
            </li>
            <li class="fl">
                <a href="#" target="_blank"><span></span><span>查看学员任职名企</span></a>
            </li>
            <li class="fl">
                <a href="#" target="_blank"><span></span><span>查看往期就业薪资</span></a>
            </li>
            <li class="fl">
                <a href="#" target="_blank"><span></span><span>为什么人人称赞</span></a>
            </li>
            <li class="fl">
                <a href="#" target="_blank"><span></span><span>更多高薪“内幕”</span></a>
            </li>
        </ul>
    </div>
</div>
<div class="bottom_part2">

</div>
<div class="bottom_part3">

</div>
<#include "common/footer.ftl">
<script type="text/javascript" src="${webRoot}/js/jquery-2.1.0.js"></script>
<script src="${webRoot}/js/jquery.paginate.js" type="text/javascript"></script>
<script src="${webRoot}/js/xygy20161202.js"></script>
<script type="text/javascript">
    <#if recollectionPageBean??>
    $("#demo3").paginate({
        count: ${recollectionPageBean.pages},
        start: ${recollectionPageBean.pageNumber},
        display: 5,
        border: true,
        border_color: '#fff',
        text_color: '#000',
        background_color: 'white',
        border_hover_color: '#ccc',
        text_hover_color: '#000',
        background_hover_color: '#fff',
//        images: false,
//        mouse: 'press',
        onChange: function (currentIndex) {
            location.href = "testimonials.html?p=" + currentIndex;
        }
    });
    </#if>
</script>
<script>
    $(function () {
        var url = $('#url').val();
        var h_ = $('.video_tab_r').height();
        $('.video_time').height(h_ + 72);
        if (h_ < 440) {
            $('.video_time').height(650)
        }
        $(".video_tab span").each(function (big_index) {
            $(this).click(function () {
                var subject = $(this).attr('id');
                setTimeout(location.href = url + '?subject=' + subject + '#vtab', 60);
            })
        })
        $(".video_time i").each(function (i_index) {
            $(this).click(function () {
                var year = $(this).text();
                var subject = $('.video_tab').children("span[class='active']").attr('id');
                setTimeout(location.href = url + '?subject=' + subject + '&year=' + year + '#vtab', 30);
            })
        })
        $(".video_time span").each(function (span_index) {
            $(this).click(function () {
                var month_ = $(this).text();
                var month = parseInt(month_);
                var subject = $('.video_tab').children("span[class='active']").attr('id');
                var year = $('.video_time').children('li').children("i[class='active']").text();
                setTimeout(location.href = url + '?subject=' + subject + '&year=' + year + '&month=' + month + '#vtab', 30);
            })
        })

    })
</script>
</body>
</html>
