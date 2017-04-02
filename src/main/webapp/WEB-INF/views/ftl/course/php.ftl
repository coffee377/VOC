<!doctype html>
<html>
<head>
    <meta charset="utf-8">
    <title>蔻丁PHP学院-中国PHP培训|PHP开发培训开拓者</title>
    <meta name="description" content="蔻丁PHP学院，率先采用双框架教学，通过大数据+千万级访问模式教学。蔻丁教育拥有最完善的PHP开发培训体系，提供最专业的PHP开发培训课程。" />
    <meta name="keywords" content="php培训,php开发培训,php学习,php网站开发" />
    <meta http-equiv="X-UA-Compatible" content="IE=10">
    <meta name="renderer" content="webkit">
    <#include "../common/base_css.ftl">
    <link href="${webRoot}/css/course/php_160604.css" type="text/css" rel="stylesheet">
    <link href="${webRoot}/css/course/animate.css" type="text/css" rel="stylesheet">
    <#--<link rel="stylesheet" href="${webRoot}/css/course/base_index.css">-->

</head>
<style>
    .banner_bg{background: url(${webRoot}/images/course/banner.jpg) no-repeat center top;overflow:hidden; height:800px;
        -webkit-animation:scale_b 5s infinite alternate;-ms-animation:fadeIn_b 8s infinite alternate;-moz-animation:fadeIn_b 8s infinite alternate;-o-animation:fadeIn_b 8s infinite alternate;animation:scale_b 8s infinite alternate;}
    .con1{background: url(${webRoot}/images/course/con1_bg.jpg) no-repeat center bottom; padding-bottom:200px;}
    .con1 h6{background: url(${webRoot}/images/course/con1_prc1.png) no-repeat center top;margin-bottom:70px;}
    .con1_prc3{width:452px; height:421px; background: url(${webRoot}/images/course/con1_prc3.png) no-repeat top;}
    .con2{background:#f7f7f7 url(${webRoot}/images/course/con2_bg.jpg) no-repeat center 271px; height:970px; margin-bottom:60px;}
    .con2 h6{background: url(${webRoot}/images/course/con2_prc1.png) no-repeat center top; margin-bottom:40px;}
    .con3{background: url(${webRoot}/images/course/con3_bg.jpg) no-repeat center top;padding-top:75px; height:925px;}
    .con3 h6{background: url(${webRoot}/images/course/con3_prc1.png) no-repeat center top; margin-bottom:30px; color:#fff;}
    .xinzi{
        background: url(${webRoot}/images/course/xinzi_bg.jpg) no-repeat center top;
    }
    .xinzi .base h6{
        height:133px;
        background: url(${webRoot}/images/course/xinzi_biaoti_bg.png) no-repeat center top;
        margin-bottom: 70px;
        padding-top: 20px;
    }
    .table_Hd tr th:nth-child(6):after{
        position: absolute;
        content:"";
        display: block;
        width:149px;
        height:5px;
        background: url(${webRoot}/images/course/table_hd_bg.png) no-repeat 0 0px;
        left:-8px;
        top:-5px;
    }
    .mingqi{
        background: url(${webRoot}/images/course/mingqi_bg.jpg) no-repeat center;
        padding:70px 0px;
    }
    .mingqi .base h6{
        color:#fff;
        height:133px;
        padding-top: 20px;
        background: url(${webRoot}/images/course/mingqi_biaoti_bg.png) no-repeat center top;
        margin-bottom: 50px;
    }
    .mq_right{
        height:442px;
        float: right;
        margin-right: 75px;
        width:230px;
        background: url(${webRoot}/images/course/mq_right_bg.png) no-repeat center;
        padding:78px 0 0 28px;
    }
    .con4{padding-top:80px; background:#e7ecf0 url(${webRoot}/images/course/con4_bg.jpg) no-repeat center bottom; padding-bottom:120px;}
    .con4 h6{background: url(${webRoot}/images/course/con4_prc1.png) no-repeat center top; height:158px; line-height: 215px; padding-bottom:40px;}
    .con4_big_tab li{position: absolute;width:175px; height:225px; top:40px;cursor:pointer; background: url(${webRoot}/images/course/ico2.png) no-repeat; padding-top:50px;}
    .con4_little_tab .con4_active:before{content:"";position: absolute;
        width: 33px;
        height: 45px;background: url(${webRoot}/images/course/ico1.png) no-repeat; top:-10px;left:216px;}
    .con5{
        background:url(${webRoot}/images/course/con5_bg.png) no-repeat center bottom;
        padding:110px 0 50px 0;
        margin-bottom:85px;
    }
    .lxjy h3,.skj h3{
        height:75px;
        width:1200px;
        margin:0 auto 40px;
        background:url(${webRoot}/images/course/lxjy_title.png) no-repeat center top;
        font-size: 52px;
        font-weight: bolder;
        padding-top: 65px;
        text-align: center;
    }
    .top1 .youhui:hover a{
        background:url(${webRoot}/images/course/lxjy_bg.png) no-repeat 0px -115px;
    }
    .top1 .youhui2 a{
        background:url(${webRoot}/images/course/lxjy_bg.png) no-repeat -131px 0px;
    }
    .top1 .youhui2:hover  a{
        background:url(${webRoot}/images/course/lxjy_bg.png) no-repeat -131px -115px;
    }
    .top2 .youhui a{
        background:url(${webRoot}/images/course/lxjy_bg.png) no-repeat -253px 0px;
    }
    .top2 .youhui:hover a{
        background:url(${webRoot}/images/course/lxjy_bg.png) no-repeat -253px -115px;
    }
    .top2 .youhui2 a{
        background:url(${webRoot}/images/course/lxjy_bg.png) no-repeat -415px 0px;
    }
    .top2 .youhui2:hover a{
        background:url(${webRoot}/images/course/lxjy_bg.png) no-repeat -415px -115px;
    }
    .top .youhui a{
        display: block;
        width:85px;
        height:85px;
        float: left;
        margin-top:50px;
        background:url(${webRoot}/images/course/lxjy_bg.png) no-repeat 0px 0px;
    }
    .top1 .youhui a{
        background:url(${webRoot}/images/course/lxjy_bg.png) no-repeat 0px 0px;
    }
    .lxjy_center{
        display: block;
        width:155px;
        height:155px;
        position: absolute;
        left:530px;
        top:330px;
        background: url(${webRoot}/images/course/jiangbei.png) no-repeat center top;
        animation: myfirst 6s 1;
        -moz-animation: myfirst 6s 1;
        -webkit-animation: myfirst 6s 1;
        -o-animation: myfirst 6s 1;
    }
    .skj h3{
        margin-bottom: 0px;
        background:url(${webRoot}/images/course/skj_title.png) no-repeat center top;
    }
    .Mrli{
        width:1200px;
        height:700px;
        background:url(${webRoot}/images/course/skj_bg.png) no-repeat 311px bottom;
        position: relative;
    }
    .yun{
        width:180px;
        height:90px;
        background: url(${webRoot}/images/course/yun.png) no-repeat center top;
        left:135px;
        top:70px;
    }
    .lilaoshi{
        width:420px;
        height:667px;
        background: url(${webRoot}/images/course/lilaoshi.png) no-repeat center top;
        left:360px;
        top:30px;
    }
    .jianjie:after{
        content: "";
        display: block;
        position: absolute;
        width:340px;
        height:75px;
        bottom:-78px;
        right:0;
        background: url(${webRoot}/images/course/sanjiao.png) no-repeat ;
    }
    .con7{padding:88px 0; background: url(${webRoot}/images/course/con7_bg.jpg) no-repeat center top;}
    .a_team_name{background:url(${webRoot}/images/course/a_team_bg.png) no-repeat;width:162px;height: 162px;position: absolute;left:-136px;top:50px;font-weight: bold;color:#fff;font-size: 32px;text-align: center;line-height: 162px;}
    .con8{background: url(${webRoot}/images/course/con8_bg.jpg) no-repeat center top; padding:75px 0 290px;}
    .con8 h6{ background: url(${webRoot}/images/course/con8_prc1.png) no-repeat center top; line-height: 185px; margin-bottom:35px;}
    .con9{padding:80px 0 0px; text-align: center; background: url(${webRoot}/images/course/con9_bg.jpg) no-repeat center top; color:#fff;}
    .con9 h6{background: url(${webRoot}/images/course/con9_prc1.png) no-repeat center top; margin-bottom:40px; color:#fff; line-height: 180px;}
    .con10{padding:75px 0 75px; background: url(${webRoot}/images/course/con10_bg.jpg) no-repeat center top;}
    .con10 h6{background: url(${webRoot}/images/course/con10_prc1.png) no-repeat center top; margin-bottom:60px;}
   /* .bottom{padding:500px 0 90px;background: url(${webRoot}/images/course/bottom_bg.jpg) no-repeat center top;}*/
   /* .bottom_php{padding:500px 0 90px;background: url(${webRoot}/images/course/bottom_bg.jpg) no-repeat center top;}*/

</style>
<body>
<div id="header">
    <#include "../common/header.ftl">
</div>
<div id="cont">
    <div class="a_banner">
        <div class="a_banner_pic">
            <ul>
                <li>
                    <a href="http://t.ibangkf.com/i/chat-chushiwei.html?l=chushiwei&page=http%3A%2F%2Flocalhost%3A8181%2Fdemo%2Fcourse%2Fandroid.html&auth_key=1489485930-0-0-e4d4730a00b2bd880471ab3f1e9d98fd" target="_block">
                        <img src="${webRoot}/images/course/001.jpg">
                    </a>
                </li>
                <li>
                    <a href="http://t.ibangkf.com/i/chat-chushiwei.html?l=chushiwei&page=http%3A%2F%2Flocalhost%3A8181%2Fdemo%2Fcourse%2Fandroid.html&auth_key=1489485930-0-0-e4d4730a00b2bd880471ab3f1e9d98fd" target="_block">
                        <img src="${webRoot}/images/course/003.jpg">
                    </a>
                </li>
            </ul>
            <a href="javascript:void(0);" class="a_prev">‹</a>
            <a href="javascript:void(0);" class="a_next">›</a>
            <div class="a_change_btn"></div>
        </div>
    </div>
    <div class="con1" title="PHP开发培训必修课-蔻丁PHP培训">
        <div class="base" title="PHP必须要知道">
            <h6>关于PHP 你必须要知道</h6>
            <div class="con1_content clear">
                <div class="con1_left wow lightSpeedIn" data-wow-duration="1s">
                    <p>它们都在使用</p>
                    <img src="${webRoot}/images/course/con1_prc2.jpg" height="424" width="671">
                </div>
                <div class="con1_right wow lightSpeedIn" data-wow-duration="1s">
                    <p>它们都在急招</p>
                    <div class="con1_prc3" title="PHP市场需求">
                   <span class="clear">
                       <i>智联<br />招聘</i><em>PHP相关招聘岗位43081个</em>
                   </span>
                        <span class="clear">
                       <i>前程<br />无忧</i><em>PHP相关招聘岗位46008个</em>
                   </span>
                        <span class="clear">
                       <i class="con1_ts">猎聘网</i><em>PHP相关招聘岗位6013个</em>
                   </span>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="con2" title="PHP市场需求与营销-蔻丁PHP培训">
        <div class="base">
            <h6>为何巨头企业、招聘网站独爱PHP？</h6>
            <p>绝非有意青睐 而是真的离不开</p>
            <div class="con2_list">
                <i class="wow flipInX" data-wow-delay="0.2s">免费微信管理系统<br />（引擎、小猪CMS、<br />微易）</i>
                <i class="wow flipInX" data-wow-delay="0.4s">免费的社交论坛系<br />统（Discuz、<br />PHPWind）</i>
                <i class="wow flipInX" data-wow-delay="0.5s">免费的OA、免费的<br />资料管理、客户关系<br />管理系统等</i>
                <i class="wow flipInX" data-wow-delay="0.6s">免费的商城系统<br />（ShopEX、ShopNC）</i>
                <i class="wow flipInX" data-wow-delay="0.8s">免费的网站内容管<br />理系统（PHPCMS、<br />DedeCMS、<br />帝国CMS）</i>
                <em><img src="${webRoot}/images/course/con2_word.png" height="161" width="444"></em>
            </div>
        </div>
    </div>
    <div class="con3" title="PHP开发人才需求-蔻丁PHP学院">
        <div class="base">
            <h6>广阔的发展空间 需要新型PHP开发人才</h6>
            <p>顾名思义</p>
            <div class="scrollWrap">
                <table width="500">
                    <tr><td>新型PHP开发人才对应传统PHP开发人才</td></tr>
                    <tr><td>要知道，虽然PHP开发者就业市场广阔</td></tr>
                    <tr><td>但国内PHP精英群体相对来说却并不多</td></tr>
                    <tr><td>一则因为国内高校并未开设PHP相关课程</td></tr>
                    <tr><td>想要迈入行业只能自学或培训</td></tr>
                    <tr><td>二来许多培训机构为节约教学成本只按老套教学</td></tr>
                    <tr><td>多数学员只能学到PHP+Node或PHP+GO</td></tr>
                    <tr><td>这个时代如此教学</td></tr>
                    <tr><td>面临的只能是被淘汰</td></tr>
                    <tr></tr>
                    <tr></tr>
                </table>
            </div>
            <i>......</i>
            <em>PHP培训行业迫切需要强有力的整改</em>
        </div>
    </div>
    <!-- 新增就业薪资   20170108 -->
    <#--<div class="xinzi">-->
        <#--<div class="base">-->
            <#--<h6>蔻丁PHP学员就业薪资表 看明星学员玩转高薪</h6>-->
            <#--<div class="tab">-->
                <#--<table cellspacing="0" cellpadding="0" width="1200" class="table_Hd">-->
                    <#--<tbody><tr>-->
                        <#--<th width="10%">姓名</th>-->
                        <#--<th width="10%">学历</th>-->
                        <#--<th width="10%">目前状态</th>-->
                        <#--<th width="15%">专业</th>-->
                        <#--<th width="25%">入职企业</th>-->
                        <#--<th width="10%">月薪</th>-->
                        <#--<th width="10%">地点</th>-->
                    <#--</tr>-->
                    <#--</tbody>-->
                <#--</table>-->
                <#--<div class="scrollWrap1" id="scrollWrap1">-->
                    <#--<table width="1200">-->
                        <#--<#if phplist??>-->
                            <#--<#list phplist as item>-->
                                <#--<tr class="fontColorRed"><td width="10%">${(item.stu.stuName)!}</td><td width="10%">${(item.stu.eduBackground)!}</td><td width="10%">${(item.stu.status)!}</td><td width="15%">${(item.stu.major)!}</td><td width="25%">${(item.enterprise)!}</td><td width="10%">${(item.monSalary)!}</td><td width="10%">${(item.address)!}</td></tr>-->
                            <#--</#list>-->
                        <#--</#if>-->
                    <#--</table>-->
                <#--</div>-->
                <#--<i>数据来源于蔻丁内部统计  </i>-->
                <#--<div class="btn_box">-->
                    <#--<a href="http://t.ibangkf.com/i/chat-chushiwei.html?l=chushiwei&page=http%3A%2F%2Flocalhost%3A8181%2Fdemo%2Fcourse%2Fandroid.html&auth_key=1489485930-0-0-e4d4730a00b2bd880471ab3f1e9d98fd" target="_blank">报名免费试听</a>-->
                    <#--<a href="http://t.ibangkf.com/i/chat-chushiwei.html?l=chushiwei&page=http%3A%2F%2Flocalhost%3A8181%2Fdemo%2Fcourse%2Fandroid.html&auth_key=1489485930-0-0-e4d4730a00b2bd880471ab3f1e9d98fd"  target="_blank">查看更多高薪集结</a>-->
                <#--</div>-->
            <#--</div>-->

        <#--</div>-->
    <#--</div>-->
    <!-- 新增入职名企   20170108 -->
    <div class="mingqi">
        <div class="base">
            <h6>入职名企 争霸开发 激荡移动互联网山河</h6>
            <div class="mingqi_box">
                <div class="mq_left">
                    <img src="${webRoot}/images/course/mingqi_img1.jpg" >
                </div>
                <div class="mq_right">
                    <img src="${webRoot}/images/course/mq_right_img1.jpg">
                </div>
            </div>


        </div>
    </div>

    <div class="con4"  title="PHP+大数据集群课-蔻丁PHP培训">
        <div class="base" title="大数据+大并发集群课程介绍">
            <h6>大数据+大并发集群才是大势所趋</h6>
            <p>（来自百度、阿里、新浪、美团的技术官每三个月优化一次课程系统）<br />（实力授课  绝不吝啬）</p>
            <div class="con4_content">
                <div class="con4_big_tab">
                    <ul>
                        <li class="wow rollIn">
                            <span>01</span>
                            <i class="con4_bigactive">基础课</i>
                            <em>强化训练，不仅会用框<br />架，更要自己开发框架</em>
                        </li>
                        <li class="wow rollIn" data-wow-delay="0.2s">
                            <span>02</span>
                            <i>高级课</i>
                            <em>持续学习，紧贴BAT等<br />大公司要求实施</em>
                        </li>
                        <li class="wow rollIn" data-wow-delay="0.4s">
                            <span>03</span>
                            <i>大数据<br />集群课</i>
                            <em>大数据、集群让数据<br />更先进</em>
                        </li>
                        <li class="wow rollIn" data-wow-delay="0.6s">
                            <span>04</span>
                            <i>项目实战</i>
                            <em>优选前沿项目实训<br />学员必须独立完成3个<br />企业级项目</em>
                        </li>
                    </ul>
                </div>
                <div class="con4_big_tab_content1" title="PHP课程体系-蔻丁PHP培训|PHP开发培训开拓者">
                    <div class="con4_big_tab_content2 clear" style="display:block;" title="PHP开发培训初级课">
                        <h5>初级课</h5>
                        <div class="con4_little_tab">
                            <span class="con4_active" title="HTML基础">HTML基础</span>
                            <span title="PHP基本语法">PHP基本语法</span>
                            <span title="PHP基础应用">PHP基础应用</span>
                            <span title="PHP基础项目实战">PHP基础项目实战</span>
                        </div>
                        <ul class="con4_little_content">
                            <li style="display:block;">
                                <span>B/S和C/S介绍</span><span>HTML的作用</span><span>全局标签</span><span>绝对路径与相对路径</span><span>常见标签</span><span>字符集</span><span>frame标签</span><span>表单标签</span><span>布制指定的网页</span><span>css声明类型</span><span>常见的各种属性</span><span>圆角属性:border-radius的使用</span><span>阴影属性:box-shadow的用法</span><span>背景属性扩展:多背景应用</span><span>新的颜色表示方式:HSLA色轮模式</span><span>浮动</span><span>完成自己的初级课页面实战</span>
                            </li>
                            <li>
                                <span>PHP7 环境安装</span>
                                <span>变量</span>
                                <span>PHP数据类型</span>
                                <span>PHP的类型转化</span>
                                <span>PHP常量</span>
                                <span>预定义常量</span>
                                <span>PHP的注释</span>
                                <span>预定义变量</span>
                                <span>运算符</span>
                                <span>运算符优先级</span>
                                <span>自动类型转换</span>
                                <span>流程控制-if..else</span>
                                <span>流程控制-switch...case</span>
                                <span>流程控制-while、do..while、for循环</span>
                                <span>goto、break、continue语法</span>
                                <span>函数的定义</span>
                                <span>自定义函数</span>
                                <span>函数</span>
                                <span>函数的工作原理和结构化编程</span>
                                <span>PHP变量的范围</span>
                                <span>函数中参数的传递方式</span>
                                <span>函数值传递和引用传递的区别</span>
                                <span>PHP中变量函数</span>
                                <span>内部函数</span>
                                <span>包含函数与defined组合使用</span>
                                <span>自定义常用函数库</span>
                                <span>数学函数和字符串常用函数</span>
                                <span>PHP数组定义</span>
                                <span>PHP数组常用函数</span>
                            </li>
                            <li>
                                <span>时间处理</span>
                                <span>异常处理</span>
                                <span>MySQL数据库</span>
                                <span>MySQLi连接数据库</span>
                                <span>文件处理</span>
                                <span>文件上传</span>
                                <span>正则表达示</span>
                                <span>GD2</span>
                                <span>session & cookie</span>
                                <span>时间处理</span>
                                <span>异常处理</span>
                                <span>文件处理</span>
                                <span>文件上传</span>
                            </li>
                            <li>
                                <span>项目简介</span>
                                <span>项目功能演示</span>
                                <span>项目模块划分</span>
                                <span>项目中的一些常见问题实现与解决</span>
                                <span>后台登录</span>
                                <span>搜索分页</span>
                                <span>小吧主权限管理</span>
                                <span>评论管理</span>
                                <span>积分管理</span>
                                <span>项目验收</span>
                            </li>
                        </ul>
                    </div>
                    <div class="con4_big_tab_content2 clear" title="PHP开发培训高级课">
                        <h5>高级课</h5>
                        <div class="con4_little_tab">
                            <span class="con4_active" title="面向对象基础">面向对象基础</span>
                            <span title="面向对象应用和扩展">面向对象应用和扩展</span>
                            <span title="前端学习">前端知识学习</span>
                            <span title="大型框架和高级项目实战">大型框架和高级项目实战</span>
                            <span title="微信公众号开发和常用接口使用">微信公众号开发和常用接口使用</span>
                        </div>
                        <ul class="con4_little_content">
                            <li style="display:block;">
                                <span>面向对象概述</span>
                                <span>对象和类之间的关系</span>
                                <span>类的声明、成员属性、成员方法</span>
                                <span>创建对象</span>
                                <span>对象保护</span>
                                <span>对象中常用的魔术方法</span>
                                <span>类的继承</span>
                                <span>final关键字的应用</span>
                                <span>static和const关键字的使用</span>
                                <span>克隆对象</span>
                                <span>类中通用的方法__toString()</span>
                                <span>通过__call()方法处理错误调用</span>
                                <span>自动加载类</span>
                                <span>trait、匿名类、遍历对象、类型约束</span>
                                <span>抽象类和接口</span>
                                <span>与类有关的系统函数</span>
                                <span>命名空间</span>
                                <span>namespace关键字__NAMESPACE__常量</span>
                                <span>使用命名空间：别名/导入</span>
                                <span>全局空间</span>
                            </li>
                            <li>
                                <span>文件上传类</span>
                                <span>图片处理类</span>
                                <span>PDO数据库操作类</span>
                                <span>数据库操作类</span>
                                <span>模板引擎类</span>
                                <span>验证码类</span>
                                <span>分页类</span>
                                <span>异常处理类和自定义异常处理类</span>
                                <span>单例</span>
                                <span>工厂</span>
                                <span>观察者</span>
                                <span>多态</span>
                                <span>适配器</span>
                                <span>DI 依赖注入</span>
                                <span>IoC控制反转</span>
                                <span>MVC自己组合自己的框架</span>
                                <span>composer自己搭建框架</span>
                                <span>用自己写的框架完成一个博客系统</span>
                            </li>
                            <li>
                                <span>JavaScript基本语法</span>
                                <span>BOM和DOM操作</span>
                                <span>jQuery操作</span>
                                <span>H5常用标签和CSS3常用属性</span>
                                <span>第三个项目页面和后台准备</span>
                                <span>ajax分页、验证等</span>
                                <span>BootStrap</span>
                            </li>
                            <li>
                                <span>框架基础</span>
                                <span>框架手机API讲解</span>
                                <span>框架ORM</span>
                                <span>框架模板引擎</span>
                                <span>框架分页和常用功能</span>
                                <span>框架的权限认证</span>
                                <span>需求演示</span>
                                <span>项目需求讲解</span>
                                <span>项目模块划分</span>
                                <span>项目拆解</span>
                            </li>
                            <li>
                                <span>PHP开发微信</span>
                                <span>微信jssdk</span>
                                <span>微信支付</span>
                                <span>微信公众号小项目</span>
                                <span>短信发送</span>
                                <span>邮件发送</span>
                                <span>人脸识别</span>
                                <span>语言识别</span>
                            </li>
                        </ul>
                    </div>
                    <div class="con4_big_tab_content2 clear" title="PHP开发培训大数据集群课">
                        <h5>大数据集群课</h5>
                        <div class="con4_little_tab">
                            <span class="con4_active" title="Linux基础">Linux基础</span>
                            <span title="大并发架构">大并发架构</span>
                        </div>
                        <ul class="con4_little_content">
                            <li style="display:block;">
                                <span>文件处理命令</span><span>权限管理命令</span><span>帮助命令</span><span>文件搜索命令</span><span>压缩解压命令</span><span>命令使用技巧</span><span>VIM使用</span><span>软件包管理</span><span>用户和用户组管理</span><span>服务和进程</span><span>基本网络设置</span><span>git常用命令</span><span>LNMP环境搭建</span>
                            </li>
                            <li>
                                <span>架构演进</span>
                                <span>Memcached</span>
                                <span>Redis</span>
                                <span>MongoDB</span>
                                <span>Redis队列</span>
                                <span>秒杀</span>
                                <span>大数据Hadoop架设</span>
                                <span>Sphinx全文索引</span>
                                <span>MySQL主从</span>
                                <span>MySQL数据库优化</span>
                                <span>nginx负载均衡</span>
                            </li>
                        </ul>
                    </div>
                    <div class="con4_big_tab_content2 con4_ts clear" title="PHP开发培训项目实战">
                        <h5>项目实战</h5>
                        <ul class="clear con4_ts_ul">
                            <li><img src="${webRoot}/images/course/con4_prc1.jpg" alt=""></li>
                            <li><img src="${webRoot}/images/course/con4_prc2.jpg" alt=""></li>
                            <li><img src="${webRoot}/images/course/con4_prc3.jpg" alt=""></li>
                            <li><img src="${webRoot}/images/course/con4_prc4.jpg" alt=""></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="con5">
        <div class="base lxjy" title="蔻丁优势-蔻丁PHP培训|PHP开发培训">
            <h3>蔻丁之道 良心为本 • 卓绝教学 无私育人</h3>
            <div class="top top1" title="蔻丁优惠">
                <div class="youhui" onClick="window.open('http://t.ibangkf.com/i/chat-chushiwei.html?l=chushiwei&page=http%3A%2F%2Flocalhost%3A8181%2Fdemo%2Fcourse%2Fandroid.html&auth_key=1489485930-0-0-e4d4730a00b2bd880471ab3f1e9d98fd','_blank')">
                    <a></a>
                    <div>
                        <h4>优惠条件</h4>
                        <p>0学费入学；</p>
                        <p>两周免费试听；</p>
                        <p>0基础入学；</p>
                    </div>
                </div>
                <div class="youhui youhui2" onClick="window.open('http://t.ibangkf.com/i/chat-chushiwei.html?l=chushiwei&page=http%3A%2F%2Flocalhost%3A8181%2Fdemo%2Fcourse%2Fandroid.html&auth_key=1489485930-0-0-e4d4730a00b2bd880471ab3f1e9d98fd','_blank')">
                    <a></a>
                    <div>
                        <h4>专属福利</h4>
                        <p>职业素养课（企业用人圆盘）；</p>
                        <p>大型相亲会（蔻丁学员不孤单）；</p>
                        <p>新老学员技术交流会（人脉、技能）；</p>
                        <p>黑科技公开课（学习，不止课堂）；</p>
                    </div>
                </div>
            </div>
            <div class="top top2" title="PHP教学特色">
                <div class="youhui" onClick="window.open('http://t.ibangkf.com/i/chat-chushiwei.html?l=chushiwei&page=http%3A%2F%2Flocalhost%3A8181%2Fdemo%2Fcourse%2Fandroid.html&auth_key=1489485930-0-0-e4d4730a00b2bd880471ab3f1e9d98fd','_blank')">
                    <a></a>
                    <div>
                        <h4>卓绝教学</h4>
                        <p>名师授课；课程定时改革；教学体系、管理
                            制度完善，班主任、职业规划师全程跟班；<br />
                            QFTS教学保障系统（学习资料共享、教学视频
                            共享、在线答疑、在线考试）；进阶制教学；</p>
                    </div>
                </div>
                <div class="youhui youhui2" onClick="window.open('http://t.ibangkf.com/i/chat-chushiwei.html?l=chushiwei&page=http%3A%2F%2Flocalhost%3A8181%2Fdemo%2Fcourse%2Fandroid.html&auth_key=1489485930-0-0-e4d4730a00b2bd880471ab3f1e9d98fd','_blank')">
                    <a></a>
                    <div>
                        <h4>就业保障体系</h4>
                        <p>毕业学员创业平台，iOS、Android、HTML5、UI都是身边同学，人脉在手，财富全有，随时上线完善产品；签订《就业培训协议》明确保障就业薪水；
                            5000多家合作企业，每年至少12场名企,双选会；1对1免费终身就业服务；</p>
                    </div>
                </div>
            </div>
            <div class="wow lxjy_center" data-wow-duration="6s">
            </div>
        </div>
    </div>
    <div class="con6">
        <div class="skj base" title="双框架教学，宽口径就业" style="text-align:center;">
            <h3>双框架教学 宽口径就业</h3>
            <div class="a_con7_team wow fadeInDown" data-wow-duration="1s">
                <div class="a_clear">
                    <div class="a_team_pic">
                    </div>
                    <div class="a_team_pro">
                        <div class="a_team_cir">
                            <div class="a_team_cir1">
                                <p>
                                    <span></span>
                                    <span></span>
                                </p>
                            </div>
                            <div class="a_team_name"></div>
                        </div>
                    </div>
                </div>
                <div class="aTeamSmallPic"></div>
            </div>
            <a href="#" style="width:200px;height:50px;line-height:50px;font-size:16px;display:inline-block;text-align:center;margin:10px;background:#ffbe0d;color:#fff;border-radius:25px;" target="_blank">了解教学实力</a>
            <a href="#" style="width:200px;height:50px;line-height:50px;font-size:16px;display:inline-block;text-align:center;margin:10px;background:#ffbe0d;color:#fff;border-radius:25px;" target="_blank">PHP项目实战公开课课程</a>
        </div>
    </div>
    <div class="con7">
        <div class="base clear">
            <div class="con7_left">
                <img src="${webRoot}/images/course/con7_prc1.png" height="501" width="720" class="wow rollIn">
            </div>
            <div class="con7_right">
                <span onClick="window.open('http://t.ibangkf.com/i/chat-chushiwei.html?l=chushiwei&page=http%3A%2F%2Flocalhost%3A8181%2Fdemo%2Fcourse%2Fandroid.html&auth_key=1489485930-0-0-e4d4730a00b2bd880471ab3f1e9d98fd','_blank')">点击了解职业前景</span>
                <p>移动、PC两手抓，解决目前国内培训机构PHP<br />
                    学员与企业需求人才的差距问题，一举改变<br />
                    PHP行业程序员势微现状！目标15000！<br />
                    在蔻丁，只要做好学员本职，剩下的，交给我们！</p>
                <h5>蔻丁坚信：</h5>
            </div>
        </div>
    </div>
    <div class="con8" title="蔻丁PHP开发培训特色 - 大数据+大并发集群 做教育我们更认真">
        <div class="base">
            <h6>大数据+大并发集群 做教育我们更认真</h6>
            <p>项目实战阶段每名学员必须完成3套企业级项目，5个月开发出属于自己的后台框架<br />紧贴BAT等大公司技能要求，不止教会，还要培养编程思维！</p>
            <div class="gxb_con wow fadeInUp">
                <div class="gxb_scrollWrap">
                    <ul>
                        <li>
                           <span>
                                <em>微易</em>
                                <i> 多用户微信公众平台，使用到设计模式最为先进的Laravel框架。开源，免费。并且在GitHub上高达300赞。在多个商业项目中被使用。支持MIT协议，可以免费使用。</i>
                           </span>
                            <img src="${webRoot}/images/course/lb_prc1.jpg" height="525" width="930">
                        </li>
                        <li>
                           <span>
                                <em>必趣、快照App</em>
                                <i> 最热门的图片社交项目和影视项目，分层的系统架构。中间使用到了PHP作为API进行开发。严格遵循RestFul规范协议。</i>
                           </span>
                            <img src="${webRoot}/images/course/lb_prc2.jpg" height="525" width="930">
                        </li>
                        <li>
                           <span>
                                <em>麒麟外汇微信公众号</em>
                                <i>通过PHP对接后端数据，随时随地能够查询到最新的外汇数据。在未来，还将对接股票、基金等接口。</i>
                                <i>还能与微信、快递、人脸识别等多个不同的系统结合。做出受市场和用户欢迎的微信公众号。</i>
                           </span>
                            <img src="${webRoot}/images/course/lb_prc3.jpg" height="525" width="930">
                        </li>
                    </ul>
                </div>
                <a href="javascript:void(0);" class="gxb_next">&gt;</a>
                <a href="javascript:void(0);" class="gxb_prev">&lt;</a>
            </div>
        </div>
    </div>
    <div class="con9" title="找到忠实合伙人 创业平台就在脚下 - 蔻丁PHP培训|PHP开发培训">
        <div class="base">
            <h6>找到忠实合伙人 创业平台就在脚下</h6>
            <p>想上班找工作，不想上班去创业。除了蔻丁，目前还没人能做到！</p>
            <span onClick="window.open('http://t.ibangkf.com/i/chat-chushiwei.html?l=chushiwei&page=http%3A%2F%2Flocalhost%3A8181%2Fdemo%2Fcourse%2Fandroid.html&auth_key=1489485930-0-0-e4d4730a00b2bd880471ab3f1e9d98fd','_blank')">一个完美项目诞生  点击咨询</span>
            <i>毕业生的现状有些“着急”，确实，目前只有很少一部分企业愿意招聘应届毕业<br />
                生，多数名企更是实行校招政策，堵死了大批高校毕业生的“名企梦想”！<br />
                创业潮在前几年热火朝天，没过多久纷纷失败，创业成为很多人的<br />
                噩梦，致使应届生不敢触及，已经没有了前几届的雄心壮志，<br />
                要知道，打铁仍需自身硬，创业更是如此，懵懵懂懂去<br />
                创业，难怪会失败！但现在<br />
                机会来了....</i>
            <img src="${webRoot}/images/course/con9_prc2.png" height="525" width="1200" class="wow rotateIn">
        </div>
    </div>
    <div class="con10" title="PHP开发工程师薪资-蔻丁PHP培训|PHP开发培训">
        <div class="base">
            <h6>除了创业还有高薪 为你勾勒另一种美丽人生</h6>
            <ul class="con10_list">
                <li class="wow lightSpeedIn" data-wow-delay="0.2s" onClick="window.open('http://t.ibangkf.com/i/chat-chushiwei.html?l=chushiwei&page=http%3A%2F%2Flocalhost%3A8181%2Fdemo%2Fcourse%2Fandroid.html&auth_key=1489485930-0-0-e4d4730a00b2bd880471ab3f1e9d98fd','_blank')" title="初级PHP工程师-蔻丁教育">
                    <span>年薪<em>8W</em></span>
                    <div>
                        <img src="${webRoot}/images/course/con10_list1.png" height="95" width="83">
                        <i>初级PHP工程师</i>
                    </div>
                </li>
                <li class="wow lightSpeedIn" data-wow-delay="0.4s" onClick="window.open('http://t.ibangkf.com/i/chat-chushiwei.html?l=chushiwei&page=http%3A%2F%2Flocalhost%3A8181%2Fdemo%2Fcourse%2Fandroid.html&auth_key=1489485930-0-0-e4d4730a00b2bd880471ab3f1e9d98fd','_blank')" title="中高级PHP工程师-蔻丁教育">
                    <span>年薪<em>20W</em></span>
                    <div>
                        <img src="${webRoot}/images/course/con10_list2.png" height="95" width="83">
                        <i>中高级PHP工程师</i>
                    </div>
                </li>
                <li class="wow lightSpeedIn" data-wow-delay="0.6s" onClick="window.open('http://t.ibangkf.com/i/chat-chushiwei.html?l=chushiwei&page=http%3A%2F%2Flocalhost%3A8181%2Fdemo%2Fcourse%2Fandroid.html&auth_key=1489485930-0-0-e4d4730a00b2bd880471ab3f1e9d98fd','_blank')" title="项目经理-蔻丁教育">
                    <span>年薪<em>30W</em></span>
                    <div>
                        <img src="${webRoot}/images/course/con10_list3.png" height="95" width="83">
                        <i>当上项目经理</i>
                    </div>
                </li>
                <li class="wow lightSpeedIn" data-wow-delay="0.8s" onClick="window.open('http://t.ibangkf.com/i/chat-chushiwei.html?l=chushiwei&page=http%3A%2F%2Flocalhost%3A8181%2Fdemo%2Fcourse%2Fandroid.html&auth_key=1489485930-0-0-e4d4730a00b2bd880471ab3f1e9d98fd','_blank')" title="CTO或架构师-蔻丁教育">
                    <span>年薪<em>60W+</em></span>
                    <div>
                        <img src="${webRoot}/images/course/con10_list4.png" height="95" width="83">
                        <i>出任CTO或架构师</i>
                    </div>
                </li>
                <li class="wow lightSpeedIn" data-wow-delay="1s" onClick="window.open('http://t.ibangkf.com/i/chat-chushiwei.html?l=chushiwei&page=http%3A%2F%2Flocalhost%3A8181%2Fdemo%2Fcourse%2Fandroid.html&auth_key=1489485930-0-0-e4d4730a00b2bd880471ab3f1e9d98fd','_blank')" title="走向人生巅峰-蔻丁教育">
                    <span>钱已经<br /><em>不是问题</em></span>
                    <div>
                        <img src="${webRoot}/images/course/con10_list5.png" height="95" width="83">
                        <i>走上人生巅峰</i>
                    </div>
                </li>
            </ul>
        </div>
    </div>
   <#-- <div class="bottom wow fadeInUp">
        <div class="base">
            <div class="btn_click clear">
                <span onClick="window.open('http://t.ibangkf.com/i/chat-chushiwei.html?l=chushiwei&page=http%3A%2F%2Flocalhost%3A8181%2Fdemo%2Fcourse%2Fandroid.html&auth_key=1489485930-0-0-e4d4730a00b2bd880471ab3f1e9d98fd','_blank')">点击我要报名</span>
            </div>
        </div>
    </div>-->

    <script type="text/javascript" src="${webRoot}/js/course/wow.min.js"></script>
    <script>
        if (!(/msie [6|7|8|9]/i.test(navigator.userAgent))){
            new WOW().init();
        };
    </script>
    <script type="text/javascript" src="${webRoot}/js/course/jquery-1.8.3.min.js"></script>
    <script type="text/javascript" src="${webRoot}/js/course/php_160603.js"></script>
    <script src="${webRoot}/js/course/php.js"></script>

</div>
<div id="footer">
<#include "../common/footer.ftl">
</div>
</body>
</html>