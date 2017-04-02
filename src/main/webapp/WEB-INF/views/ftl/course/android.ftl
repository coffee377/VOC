<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>Android培训课程,中国IT职业教育领先品牌-蔻丁教育</title>
    <meta http-equiv=X-UA-Compatible content="IE=edge,chrome=1">
    <meta name="renderer" content="webkit">

    <meta name="Keywords" content="Android培训,Android开发培训,Android培训机构"/>
    <meta name="description"
          content="蔻丁教育专注Android培训多年,拥有真正的Android培训高端课程研发实力,发布的Android开发培训课程体系被传统培训机构争相模仿,是中国移动互联网研发培训真正领导者。"/>

<#include "../common/base_css.ftl">
    <link rel="stylesheet" href="${webRoot}/css/course/android.css">
    <link rel="stylesheet" type="text/css" href="${webRoot}/css/course/h5_class.css">

    <script src="${webRoot}/js/course/mobile_ad.js"></script>
    <script language="javascript" src="http://c.ibangkf.com/i/c-chushiwei.js"></script>
    <style>
        .a_con10 {
            background: url(${webRoot}/images/course/a_con10_bg.png) repeat;
            padding: 50px 0 35px;
        }

        .a_con10_con {
            background: url(${webRoot}/images/course/a_con10_ip.png) no-repeat 24px 5px;
            height: 413px;
        }

        .a_con10_con li {
            overflow: hidden;
            margin-bottom: 10px;
            background: url(${webRoot}/images/course/a_con10_li_bg.png) no-repeat 66px center;
        }

        .a_con11_1_img {
            padding: 13px;
            border: 1px solid #e1e1e1;
            background: #f7f7f7 url(${webRoot}/images/course/a_con11_1pic1.jpg) no-repeat center center;
            width: 969px;
            height: 407px;
        }

        .a_con11 {
            background: url(${webRoot}/images/course/a_con11_pic.jpg) no-repeat center center;
            height: 541px;
            position: relative;
            width: 100%;
        }

        .a_con11_2_img {
            height: 338px;
            background: url(${webRoot}/images/course/a_con11_log.jpg) no-repeat center center;
            margin: 20px 0 40px;
        }

        .a_con13 {
            height: 720px;
            background: url(${webRoot}/images/course/a_con13_bg.png) repeat;
            padding-top: 50px;
        }

        .a_con13_map {
            background: url(${webRoot}/images/course/a_con13_map.png) no-repeat center 60px;
            height: 576px;
            position: relative;
        }

        .a_con13_icon {
            width: 19px;
            height: 27px;
            background: url(${webRoot}/images/course/a_icon4.png) no-repeat;
            position: absolute;
            transition: 0.5s;
            -webkit-transition: 0.5s;
            -moz-transition: 0.5s;
            -ms-transition: 0.5s;
        }

        .a_title {
            height: 100px;
            width: 100%;
            background: #222 url(${webRoot}/images/course/a_title_txt.png) no-repeat center center;
        }

        .a_con5_list h4 {
            width: 255px;
            height: 58px;
            background: url(${webRoot}/images/course/a_con5_h4.png) no-repeat;
            margin: 0 auto;
        }

        .a_pro {
            text-align: center;
            background: url(${webRoot}/images/course/a_pro_bg.jpg) no-repeat center center;
            height: 911px;
        }

        .a_con6_hd {
            height: 216px;
            background: url(${webRoot}/images/course/a_con6_bg.jpg) no-repeat 32px 0;
        }

        .a_team_name {
            background: url(${webRoot}/images/course/a_team_bg.png) no-repeat;
            width: 162px;
            height: 162px;
            position: absolute;
            left: -136px;
            top: 50px;
            font-weight: bold;
            color: #fff;
            font-size: 32px;
            text-align: center;
            line-height: 162px;
        }

        .a_con8_con {
            height: 520px;
            background: url(${webRoot}/images/course/a_con8_bg.png) no-repeat;
            margin-top: 25px;
        }

        .a_con8_con a::before {
            background: url(${webRoot}/images/course/a_icon2.png) no-repeat 0 -130px;
            content: "";
            position: absolute;
            left: 7px;
            top: 5px;
            width: 59px;
            height: 63px;
        }

        .fixedBox_con span {
            background: url(${webRoot}/images/course/icon5.png) no-repeat center 20px;
            display: inline-block;
            height: 40px;
            padding: 20px;
            font-size: 16px;
            color: #fff;
            padding-top: 45px;
            cursor: pointer;
        }

        .fixedBox_con span:hover {
            color: #fff000;
            background: url(${webRoot}/images/course/icon6.png) no-repeat center 16px;
        }

        .a_back {
            width: 44px;
            height: 44px;
            background: url(${webRoot}/images/course/icon7.png) no-repeat;
            position: fixed;
            left: 50%;
            margin-left: -22px;
            bottom: 20px;
            cursor: pointer;
            z-index: 40;
        }

        .a_con14 {
            height: 421px;
            background: url(${webRoot}/images/course/a_con14_bg.png) no-repeat center center;
        }

        .a_con2 {
            height: 430px;
            background: #383a6b url(${webRoot}/images/course/a_con2_bg.png) no-repeat 40px 38px;
            margin-top: 20px;
        }

        .a_prev {
            position: absolute;
            top: 50%;
            left: 50%;
            width: 74px;
            height: 300px;
            background: url(${webRoot}/images/course/a_con2_bg.png) no-repeat 20px 118px;
            opacity: 0;
            margin-top: -120px;
            z-index: 30;
        }
         .a_next {
            position: absolute;
            top: 50%;
            left: 50%;
            width: 74px;
            height: 300px;
            background: url(${webRoot}/images/course/a_con2_bg.png ) no-repeat 20px 118px;
            opacity: 0;
            margin-top: -120px;
            z-index: 30;
        }

        .a_tel {
            float: right;
            font-size: 22px;
            line-height: 38px;
            padding-right: 14px;
            color: #fff;
            background: url(${webRoot}/images/course/a_icon.png) no-repeat left 6px;
            padding-left: 32px;
        }

        .a_logo a {
            display: inline-block;
            width: 165px;
            height: 38px;
            background: url(${webRoot}/images/course/a_logo.png) no-repeat;
            vertical-align: middle;
        }

        .a_con_line a {
            display: inline-block;
            width: 130px;
            height: 34px;
            background: url(${webRoot}/images/course/a_icon2.png) no-repeat 0 -50px;
            vertical-align: middle;
            margin-left: 8px;
        }

        .a_con2_a::before {
            position: absolute;
            content: "";
            width: 222px;
            height: 44px;
            background: url(${webRoot}/images/course/a_icon2.png) no-repeat;
            top: -3px;
            left: 0;
        }
        .a_con5_bon{height: 194px;border: 1px solid #344cc7;margin-top: 30px;background:url(${webRoot}/images/course/a_con5_bg.png) no-repeat 0 20px;}
        .a_prev,.a_next{position: absolute;top:50%;left:50%;width:74px;height:300px;background:url(${webRoot}/images/course/a_btn.png) no-repeat 20px 118px;opacity:0;margin-top:-120px;z-index:30;}

    </style>
</head>
<body>
<div id="header">
<#include "../common/header.ftl">
</div>
<div id="cont">
    <div class="a_banner">
        <div class="a_banner_pic">
            <ul>
                <li class="a_b_li1" onclick="window.open('http://t.ibangkf.com/i/chat-chushiwei.html?l=chushiwei&page=http%3A%2F%2Flocalhost%3A8181%2Fdemo%2Fcourse%2Fandroid.html&auth_key=1489485930-0-0-e4d4730a00b2bd880471ab3f1e9d98fd','_blank')"
                    style="cursor:pointer;" target="_blank">
                    <img src="${webRoot}/images/course/banner_1.jpg" alt="">
                    <div class="a_base">
                        <a onclick="window.open('http://t.ibangkf.com/i/chat-chushiwei.html?l=chushiwei&page=http%3A%2F%2Flocalhost%3A8181%2Fdemo%2Fcourse%2Fandroid.html&auth_key=1489485930-0-0-e4d4730a00b2bd880471ab3f1e9d98fd','_blank')"
                           style="cursor:pointer;" target="_blank">老师在线 立即咨询</a><a
                            onclick="window.open('http://t.ibangkf.com/i/chat-chushiwei.html?l=chushiwei&page=http%3A%2F%2Flocalhost%3A8181%2Fdemo%2Fcourse%2Fandroid.html&auth_key=1489485930-0-0-e4d4730a00b2bd880471ab3f1e9d98fd','_blank')"
                            style="cursor:pointer;" target="_blank">领取视频 申请试听</a>
                    </div>
                </li>

                <li class="a_b_li3" onclick="window.open('http://t.ibangkf.com/i/chat-chushiwei.html?l=chushiwei&page=http%3A%2F%2Flocalhost%3A8181%2Fdemo%2Fcourse%2Fandroid.html&auth_key=1489485930-0-0-e4d4730a00b2bd880471ab3f1e9d98fd','_blank')"
                    style="cursor:pointer;" target="_blank">
                    <img src="${webRoot}/images/course/banner_3.jpg" alt="">
                </li>

            </ul>
            <#--<a href="javascript:void(0);" class="a_prev"></a>-->
            <#--<a href="javascript:void(0);" class="a_next"></a>-->
            <div class="a_change_btn"></div>
        </div>

    </div>
    <div class="a_title"></div>
    <div class="a_con1 a_base">
        <h3>为何首选Android工程师？趋势！高薪！高逼格！</h3>
        <p style="text-align:center;">以下数据来源于职友集</p>
        <div class="a_con1_cn1">
            <ul class="a_con1_ul1 a_clear">
                <li>
                    <h4>Android不同行业的薪资待遇</h4>
                    <p><i>1.通信/电信运营、增值服务</i><span><em style="width:239px;"></em></span>¥12799</p>
                    <p><i>2.其他行业</i><span><em style="width:228px;"></em></span>¥11581</p>
                    <p><i>3.专业服务(咨询、人力资源、财会)</i><span><em style="width:215px;"></em></span>¥9464</p>
                    <p><i>4.互联网/电子商务</i><span><em style="width:211px;"></em></span>¥9411</p>
                    <p><i>5.美容/保健</i><span><em style="width:199px;"></em></span>¥8321</p>
                    <p><i>6.金融/投资/证券</i><span><em style="width:185px;"></em></span>¥7591</p>
                    <p><i>7.保险</i><span><em style="width:177px;"></em></span>¥7310</p>
                    <p><i>8.计算机软件</i><span><em style="width:169px;"></em></span>¥7210</p>
                    <p><i>9.新能源</i><span><em style="width:161px;"></em></span>¥6697</p>
                    <p><i>10.建筑/建材/工程</i><span><em style="width:150px;"></em></span>¥6581</p>
                </li>
                <li class="a_con1_li1">
                    <h4>Android不同地区的薪资待遇</h4>
                    <p><i>北京</i><span><em style="width:234px;"></em></span>¥14809</p>
                    <p><i>上海</i><span><em style="width:220px;"></em></span>¥13201</p>
                    <p><i>杭州</i><span><em style="width:206px;"></em></span>¥12794</p>
                    <p><i>深圳</i><span><em style="width:193px;"></em></span>¥12170</p>
                    <p><i>苏州</i><span><em style="width:186px;"></em></span>¥12054</p>
                    <p><i>中山</i><span><em style="width:143px;"></em></span>¥9672</p>
                    <p><i>南京</i><span><em style="width:124px;"></em></span>¥9328</p>
                    <p><i>广州</i><span><em style="width:110px;"></em></span>¥9084</p>
                </li>
            </ul>
            <p class="a_con1_p a_clear"><span>分析：</span><i>通过数据可以了解到Android开发人才在通信/电信运营、增值服务行业薪资高，即12799元，而从地区上来看，Android开发人才在北京的薪资待遇高，即14809元。</i>
            </p>
        </div>
        <div class="a_con1_cn2">
            <ul class="a_clear">
                <li class="a_con1_li2">
                    <h4>Android操作系统占有率</h4>
                    <span class="a_con1_list"><em>Android</em><em>Windows</em><em>iOS</em><em>Others</em></span>
                    <div class="a_con1_sys">
                        <span>49%</span>
                        <em>11%</em>
                        <span>59%</span>
                        <em>11%</em>
                        <span>63%</span>
                        <em>12%</em>
                    </div>
                    <strong class="a_con1_p1">Gartner机构分析显示，安卓系统在2014年市场占有率<br>为49%，但其将在2015年上升10%，接近59%。</strong>
                </li>
                <li class="a_con1_li3">
                    <h4>Android薪资待遇地区排行榜</h4>
                    <p><i>北京</i><span><em style="width:200px;"></em></span><i>¥14809</i></p>
                    <p><i>上海</i><span><em style="width:181px;"></em></span><i>¥13201</i></p>
                    <p><i>杭州</i><span><em style="width:168px;"></em></span><i>¥12794</i></p>
                    <p><i>深圳</i><span><em style="width:159px;"></em></span><i>¥12170</i></p>
                    <p><i>苏州</i><span><em style="width:155px;"></em></span><i>¥12054</i></p>
                    <p><i>中山</i><span><em style="width:140px;"></em></span><i>¥9672</i></p>
                    <p><i>南京</i><span><em style="width:133px;"></em></span><i>¥9328</i></p>
                    <p><i>广州</i><span><em style="width:128px;"></em></span><i>¥9084</i></p>
                    <p><i>成都</i><span><em style="width:122px;"></em></span><i>¥8270</i></p>
                    <p><i>无锡</i><span><em style="width:114px;"></em></span><i>¥7177</i></p>
                </li>
                <li class="a_con1_li4">
                    <h4>Android开发人才职位需求量</h4>
                    <p><i>北京</i><span><em style="width:200px;"></em></span><i>13610个职位</i></p>
                    <p><i>上海</i><span><em style="width:181px;"></em></span><i>9735个职位</i></p>
                    <p><i>深圳</i><span><em style="width:168px;"></em></span><i>6700个职位</i></p>
                    <p><i>广州</i><span><em style="width:159px;"></em></span><i>4248个职位</i></p>
                    <p><i>杭州</i><span><em style="width:155px;"></em></span><i>3730个职位</i></p>
                    <p><i>朝阳</i><span><em style="width:140px;"></em></span><i>3464个职位</i></p>
                    <p><i>成都</i><span><em style="width:133px;"></em></span><i>1944个职位</i></p>
                    <p><i>南京</i><span><em style="width:128px;"></em></span><i>1698个职位</i></p>
                    <p><i>厦门</i><span><em style="width:122px;"></em></span><i>1352个职位</i></p>
                    <p><i>武汉</i><span><em style="width:114px;"></em></span><i>1284个职位</i></p>
                </li>
            </ul>
        </div>
    </div>

    <div class="a_jyxb">
        <h2>安卓学员就业喜报</h2>
        <table class="tb_hd" width="100%" cellspacing="0" cellpadding="0">
            <tr>
                <th width="6%">姓名</th>
                <th width="8%">学历</th>
                <th width="7%">目前状态</th>
                <th width="20%">专业</th>
                <th width="25%">入职单位</th>
                <th width="15%">月薪</th>
                <th width="9%">地点</th>
                <th width="10%">就业时间</th>
            </tr>
        </table>
        <div class="jyxbCon">
            <table cellpadding="0" cellspacing="0" width="100%">
                <#if adlist??>
                <#list adlist as item >
                <tr class="fontColorRed">
                    <td width="6%">${(item.stu.stuName)!}</td>
                    <td width="8%">${(item.stu.eduBackground)!}</td>
                    <td width="7%">${(item.stu.status)!}</td>
                    <td width="20%">${(item.stu.major)!}</td>
                    <td width="25%">${(item.enterprise)!}</td>
                    <td width="15%">${(item.monSalary)!}</td>
                    <td width="9%">${(item.address)!}</td>
                    <td width="10%">
                        <#if (item.hireDate)??>
                              ${(item.hireDate)?date}
                        </#if>
                    </td>
                </tr>
                </#list>
                </#if>

            </table>
        </div>
        <i>以上数据来源于蔻丁内部统计</i>
    </div>


    <div class="a_base a_con2">
        <ul>
            <li class="a_con2_li1">
                <span>公司管理高层，CTO</span>
                <em>30K+</em>
            </li>
            <li class="a_con2_li2">
                <span>往技术总监、项目经理转变</span>
                <em>20-30K</em>
            </li>
            <li class="a_con2_li3">
                <span>从高级开发工程师往其他相关<br>层次多元提升，如设计、需求</span>
                <em>15-20K</em>
            </li>
            <li>
                <span>从初级开发工程师往<br>中高级开发工程师转变</span>
                <em>10-15K</em>
            </li>
        </ul>
        <a onclick="window.open('http://t.ibangkf.com/i/chat-chushiwei.html?l=chushiwei&page=http%3A%2F%2Flocalhost%3A8181%2Fdemo%2Fcourse%2Fandroid.html&auth_key=1489485930-0-0-e4d4730a00b2bd880471ab3f1e9d98fd','_blank')" style="cursor:pointer;"
           target="_blank" class="a_con2_a"></a>
    </div>
    <div class="a_con3 a_base aBack">

    </div>
    <div class="a_con_base">
        <div class="a_con_line">
            <h3>毕业出路千百条 选对方向很重要<a onclick="window.open('http://t.ibangkf.com/i/chat-chushiwei.html?l=chushiwei&page=http%3A%2F%2Flocalhost%3A8181%2Fdemo%2Fcourse%2Fandroid.html&auth_key=1489485930-0-0-e4d4730a00b2bd880471ab3f1e9d98fd','_blank')"
                                  style="cursor:pointer;" target="_blank"></a></h3>
        </div>
    </div>

    <div class="a_con5">

        <div class="a_pro">
            <h4>海量源码任意提取</h4>
            <h3>移动互联网少有的庞大学员作品库</h3>
            <p>蔻丁课程中采用企业真实项目，让学员亲身体验企业级项目研发。<br>
                学员的实训项目来自蔻丁众多合作企业及蔻丁科技自主研发的项目。</p>
            <div class="a_pro_img">
                <ul>

                    <li>
                        <img src="${webRoot}/images/course/aproimg1.jpg" alt="">
                        <span>甜城团购<i>-1417期Android</i></span>
                        <div class="a_mask"></div>
                    </li>
                    <li>
                        <img src="${webRoot}/images/course/aproimg2.jpg" alt="">
                        <span>秀美甲<i>-1410期Android</i></span>
                        <div class="a_mask"></div>
                    </li>
                    <li>
                        <img src="${webRoot}/images/course/aproimg3.jpg" alt="">
                        <span>爱电影<i>-1410期Android</i></span>
                        <div class="a_mask"></div>
                    </li>
                    <li>
                        <img src="${webRoot}/images/course/aproimg4.jpg" alt="">
                        <span>随心FM<i>-1410期Android</i></span>
                        <div class="a_mask"></div>
                    </li>
                    <li>
                        <img src="${webRoot}/images/course/aproimg5.jpg" alt="">
                        <span>趣游<i>-1417期Android</i></span>
                        <div class="a_mask"></div>
                    </li>
                    <li>
                        <img src="${webRoot}/images/course/aproimg6.jpg" alt="">
                        <span>爱美食<i>-1417期Android</i></span>
                        <div class="a_mask"></div>
                    </li>
                    <li>
                        <img src="${webRoot}/images/course/aproimg7.jpg" alt="">
                        <span>恩然艺讯<i>-1410期Android</i></span>
                        <div class="a_mask"></div>
                    </li>
                    <li>
                        <img src="${webRoot}/images/course/aproimg8.jpg" alt="">
                        <span>好帮手<i>-1417期Android</i></span>
                        <div class="a_mask"></div>
                    </li>
                    <li>
                        <img src="${webRoot}/images/course/aproimg9.jpg" alt="">
                        <span>不宅<i>-1417期Android</i></span>
                        <div class="a_mask"></div>
                    </li>
                    <li>
                        <img src="${webRoot}/images/course/aproimg10.jpg" alt="">
                        <span>网易电影票<i>-1417期Android</i></span>
                        <div class="a_mask"></div>
                    </li>
                    <li>
                        <img src="${webRoot}/images/course/aproimg11.jpg" alt="">
                        <span>电子书<i>-1417期Android</i></span>
                        <div class="a_mask"></div>
                    </li>
                    <li>
                        <img src="${webRoot}/images/course/aproimg12.jpg" alt="">
                        <span>达令礼物店<i>-1417期Android</i></span>
                        <div class="a_mask"></div>
                    </li>
                    <li>
                        <img src="${webRoot}/images/course/aproimg13.jpg" alt="">
                        <span>乐生活<i>-1417期Android</i></span>
                        <div class="a_mask"></div>
                    </li>
                    <li>
                        <img src="${webRoot}/images/course/aproimg14.jpg" alt="">
                        <span>甜城团购<i>-1417期Android</i></span>
                        <div class="a_mask"></div>
                    </li>
                </ul>
            </div>
            <div class="a_pro_btn"><a onclick="window.open('http://t.ibangkf.com/i/chat-chushiwei.html?l=chushiwei&page=http%3A%2F%2Flocalhost%3A8181%2Fdemo%2Fcourse%2Fandroid.html&auth_key=1489485930-0-0-e4d4730a00b2bd880471ab3f1e9d98fd','_blank')"
                                      style="cursor:pointer;" target="_blank" class="a_pro_btn_a1"></a><a
                    onclick="window.open('http://t.ibangkf.com/i/chat-chushiwei.html?l=chushiwei&page=http%3A%2F%2Flocalhost%3A8181%2Fdemo%2Fcourse%2Fandroid.html&auth_key=1489485930-0-0-e4d4730a00b2bd880471ab3f1e9d98fd','_blank')" style="cursor:pointer;"
                    target="_blank" class="a_pro_btn_a2"></a></div>
        </div>

        <div class="a_con_base a_con_b1">
            <div class="a_con_line">
                <h3>许自己一个光明未来 蔻丁给你最切实际的承诺！<a onclick="window.open('http://t.ibangkf.com/i/chat-chushiwei.html?l=chushiwei&page=http%3A%2F%2Flocalhost%3A8181%2Fdemo%2Fcourse%2Fandroid.html&auth_key=1489485930-0-0-e4d4730a00b2bd880471ab3f1e9d98fd','_blank')"
                                             style="cursor:pointer;" target="_blank"></a></h3>
            </div>
        </div>
        <div class="a_con6 a_base">
        </div>
        <div class="a_con_base a_con_b2">
            <div class="a_con_line">
                <h3>人性的弱点之一就是为没发生过的事情担心，为发生过的事情后悔！<a
						onclick="window.open('http://t.ibangkf.com/i/chat-chushiwei.html?l=chushiwei&page=http%3A%2F%2Flocalhost%3A8181%2Fdemo%2Fcourse%2Fandroid.html&auth_key=1489485930-0-0-e4d4730a00b2bd880471ab3f1e9d98fd','_blank')"></a></h3>
            </div>
        </div>

        <div class="a_con_base a_con_b3">
            <div class="a_con_line">
                <h3>零学费入学 免费试听两周 不满意 不缴费<a onclick="window.open('http://t.ibangkf.com/i/chat-chushiwei.html?l=chushiwei&page=http%3A%2F%2Flocalhost%3A8181%2Fdemo%2Fcourse%2Fandroid.html&auth_key=1489485930-0-0-e4d4730a00b2bd880471ab3f1e9d98fd','_blank')"
                                           style="cursor:pointer;" target="_blank"></a></h3>
            </div>
        </div>
        <div class="a_con8 aBack">
            <div class="a_base">
                <div class="a_con8_hd">
                    <h3>适合程序员学习和发展的课程体系</h3>
                </div>

                <div class="javaee_fixed fixed_tab android_fixed">
                    <span class="before"></span><span class="after"></span>
                    <ul class="base">
                        <li>
                            <h3>第一阶段</h3>
                            <p>Java语言基础</p>
                        </li>
                        <li>
                            <h3>第二阶段</h3>
                            <p>Android基础阶段</p>
                        </li>
                        <li>
                            <h3>第三阶段</h3>
                            <p>Android项目实战阶段</p>
                        </li>
                    </ul>
                </div>
                <div class="con">
                    <div class="base">
                        <div class="android_class class_list">
                            <div class="con_title clear">
                                <span>01</span>
                                <h6>第一阶段<i>Java语言基础</i></h6>
                            </div>
                            <ul class="clear">
                                <li>
                                    <h2><em>01</em><i>Java开发介绍</i></h2>
                                    <div class="con_list">
                                        <p>- Java的应用领域</p>
                                        <p>- Java语言的特性</p>
                                        <p>- Java面向对象</p>
                                        <p>- Java性能分类</p>
                                        <p>- 搭建Java环境 </p>
                                    </div>
                                </li>
                                <li>
                                    <h2><em>02</em><i>熟悉Eclipse开发工具</i></h2>
                                    <div class="con_list">
                                        <p>- Eclipse简介与下载</p>
                                        <p>- 安装Eclipse的中文语言包</p>
                                        <p>- Eclipse的配置与启动</p>
                                        <p>- Eclipse工作台与视图</p>
                                        <p>- “包资源管理器”视图</p>
                                        <p>- 使用Eclipse</p>
                                        <p>- 使用编辑器编写程序代码</p>
                                    </div>
                                </li>
                                <li>
                                    <h2><em>03</em><i>Java语言基础</i></h2>
                                    <div class="con_list">
                                        <p>- Java主类结构</p>
                                        <p>- 基本数据类型 </p>
                                        <p>- 变量与常量</p>
                                        <p>- Java运算符</p>
                                        <p>- 数据类型转换</p>
                                        <p>- 代码注释与编码规范</p>
                                    </div>
                                </li>
                                <li>
                                    <h2><em>04</em><i>Java流程控制</i></h2>
                                    <div class="con_list">
                                        <p>- 复合语句</p>
                                        <p>- 条件语句 </p>
                                        <p>- if条件语句</p>
                                        <p>- switch多分支语句</p>
                                        <p>- while循环语句</p>
                                        <p>- do…while循环语句</p>
                                        <p>- for循环语句</p>
                                    </div>
                                </li>
                                <li>
                                    <h2><em>05</em><i>Java字符串</i></h2>
                                    <div class="con_list">
                                        <p>- String类</p>
                                        <p>- 连接字符串</p>
                                        <p>- 获取字符串信息</p>
                                        <p>- 字符串操作</p>
                                        <p>- 格式化字符串</p>
                                        <p>- 使用正则表达式</p>
                                        <p>- 字符串生成器</p>
                                    </div>
                                </li>
                                <li>
                                    <h2><em>06</em><i>Java数组与类和对象</i></h2>
                                    <div class="con_list">
                                        <p>- 数组概述</p>
                                        <p>- 一维数组的创建及使用</p>
                                        <p>- 二维数组的创建及使用</p>
                                        <p>- 数组的基本操作</p>
                                        <p>- 数组排序算法</p>
                                        <p>- Java的类 和构造方法</p>
                                        <p>- Java的对象</p>
                                        <p>- 对象的属性和行为</p>
                                    </div>
                                </li>
                                <li>
                                    <h2><em>07</em><i>数字处理类与核心技术</i></h2>
                                    <div class="con_list">
                                        <p>- 数字格式化与运算</p>
                                        <p>- 随机数 与大数据运算</p>
                                        <p>- 类的继承与Object类 </p>
                                        <p>- 对象类型的转换 </p>
                                        <p>- 使用instanceof操作符判断对象类型 </p>
                                        <p>- 方法的重载与多态</p>
                                        <p>- 抽象类与接口</p>
                                    </div>
                                </li>
                                <li>
                                    <h2><em>08</em><i>I/O与反射、多线程、集合</i></h2>
                                    <div class="con_list">
                                        <p>- 流概述与File类 </p>
                                        <p>- 文件输入/输出流</p>
                                        <p>- 带缓存输入/输出流 与压缩</p>
                                        <p>- Class类与Java反射</p>
                                        <p>- Annotation功能 类型信息</p>
                                        <p>- 枚举类型与泛型</p>
                                        <p>- 实现线程的两种方式</p>
                                        <p>- 操作线程与线程安全</p>
                                        <p>- Set集合 与Map集合 及接口</p>
                                        <p>- Map接口的实现类</p>
                                    </div>
                                </li>
                            </ul>
                        </div>
                        <div class="android_class class_list">
                            <div class="con_title clear">
                                <span>02</span>
                                <h6>第二阶段<i>Android基础阶段</i></h6>
                            </div>
                            <ul class="clear">
                                <li>
                                    <h2><em>01</em><i>UI基础</i></h2>
                                    <div class="con_list">
                                        <p>- Android发展史、移动设备操作系统介绍</p>
                                        <p>- Android环境搭建及工程目录介绍</p>
                                        <p>- 常用UI布局:LinearLayout,RelativeLayout,<br/>FrameLayout,GridLayout</p>
                                        <p>- 常用控件介绍：EditText、Button、ImageView、TextView等</p>
                                        <p>- Spinner常用属性和方法</p>
                                        <p>- 适配器介绍与使用</p>
                                        <p>- Android应用的资源介绍</p>
                                        <p>- AutoCompleteTextView常用属性和方法</p>
                                        <p>- ScrollView的使用</p>
                                        <p>- UI美化及Android资源</p>
                                    </div>
                                </li>
                                <li>
                                    <h2><em>02</em><i>应用核心组件</i></h2>
                                    <div class="con_list">
                                        <p>- Activity的声明和使用</p>
                                        <p>- Activity生命周期</p>
                                        <p>- Activity的4种启动模式</p>
                                        <p>- Activity现场保护</p>
                                        <p>- Activity页面跳转及传值</p>
                                        <p>- Task和Back Stack的基本概念</p>
                                        <p>- Activity启动模式</p>
                                        <p>- Intent常用属性和方法</p>
                                        <p>- 使用Intent和IntentFilter进行通信</p>
                                        <p>- AsyncTask异步任务</p>
                                        <p>- ListView常用属性和方法</p>
                                        <p>- ListView优化及分页</p>
                                        <p>- AdapterView与Adaptr介绍</p>
                                    </div>
                                </li>
                                <li>
                                    <h2><em>03</em><i>菜单与对话框</i></h2>
                                    <div class="con_list">
                                        <p>- Android菜单系统简介</p>
                                        <p>- 使用XML定义菜单层次结构</p>
                                        <p>- 使用AlertDialog类</p>
                                        <p>- 通过Dialog Fragment管理和显示对话框</p>
                                        <p>- 通过Activity事件处理程序管理和显示对话框</p>
                                        <p>- 在工作线程中使用Toast</p>
                                    </div>
                                </li>
                                <li>
                                    <h2><em>04</em><i>数据存储与IO</i></h2>
                                    <div class="con_list">
                                        <p>- 使用SharedPreference</p>
                                        <p>- File存储</p>
                                        <p>- SQLite数据库介绍</p>
                                        <p>- SQLiteOpenHelper的用法</p>
                                        <p>- CursorAdapter适配器使用</p>
                                        <p>- ContentResolver实现系统数据库的操作</p>
                                        <p>- 自定义ContentProvider</p>
                                        <p>- CursorLoader的用法</p>
                                        <p>- AsyncTaskLoader加载数据</p>
                                    </div>
                                </li>
                                <li>
                                    <h2><em>05</em><i>移动开发主流界面实现</i></h2>
                                    <div class="con_list">
                                        <p>- 帧动画、补间动画、属性动画</p>
                                        <p>- Fragment基本用法、传值和性能优化</p>
                                        <p>- ViewPager的基本使用</p>
                                        <p>- ViewPager的适配器</p>
                                        <p>- ViewPager加载网络图片及优化</p>
                                        <p>- 书签导航多种实现效果展示</p>
                                        <p>- Handler、Looper消息传递机制的原理</p>
                                        <p>- Handler、Looper源码分析</p>
                                    </div>
                                </li>
                                <li>
                                    <h2><em>06</em><i>应用核心组件进阶</i></h2>
                                    <div class="con_list">
                                        <p>- ActionBar （Action View、SearchView）使用</p>
                                        <p>- ToolBar使用</p>
                                        <p>- 各种常用通知使用</p>
                                        <p>- 广播接收器使用</p>
                                        <p>- 跨进程服务AIDL和Messenger使用</p>
                                        <p>- LruCache与Bitmap二次采样</p>
                                    </div>
                                </li>
                                <li>
                                    <h2><em>07</em><i>后台服务</i></h2>
                                    <div class="con_list">
                                        <p>- Service介绍及期生命周期</p>
                                        <p>- 使用AsyncTask运行异步任务</p>
                                        <p>- IntentService介绍</p>
                                        <p>- 手动创建线程和GUI线程同步</p>
                                        <p>- 使用Alarm</p>
                                    </div>
                                </li>
                                <li>
                                    <h2><em>08</em><i>View深入探究</i></h2>
                                    <div class="con_list">
                                        <p>- 百度地图的使用</p>
                                        <p>- 继承已有控件方式的自定义视图</p>
                                        <p>- 继承于ViewGroup的自定义视图</p>
                                        <p>- 自绘制的自定义视图</p>
                                        <p>- PullToRefresh框架使用</p>
                                        <p>- SlidingPaneLayout使用</p>
                                        <p>- 机型适配的解决方案</p>
                                        <p>- Git的使用</p>
                                    </div>
                                </li>
                            </ul>
                        </div>
                        <div class="android_class class_list">
                            <div class="con_title clear">
                                <span>03</span>
                                <h6>第三阶段<i>Android项目实战阶段</i></h6>
                            </div>
                            <ul class="clear">
                                <li>
                                    <h2><em>01</em><i>Android新技术</i></h2>
                                    <div class="con_list">
                                        <p>- 音频和视频的播放</p>
                                        <p>- 使用MediaRecorder录制音频</p>
                                        <p>- RecyclerView使用</p>
                                        <p>- TextInputLayout使用</p>
                                        <p>- CoordinatorLayout使用</p>
                                        <p>- Snackbar使用</p>
                                        <p>- material design</p>
                                        <p>- 利用Intent实现摄像头拍照</p>
                                        <p>- 加速度传感器实现《摇一摇》</p>
                                        <p>- ZXing实现生成二维码</p>
                                        <p>- JPush极光推送的原理及用法</p>
                                        <p>- 第三方登录原理及使用</p>
                                        <p>- 友盟统计分析与使用</p>
                                    </div>
                                </li>
                                <li>
                                    <h2><em>02</em><i>Android网络应用</i></h2>
                                    <div class="con_list">
                                        <p>- 基于TCP协议的网络通信</p>
                                        <p>- 使用URL访问网络资源</p>
                                        <p>- 使用HTTP访问网络</p>
                                        <p>- 使用WebService进行网络编程</p>
                                        <p>- 使用Download Manager</p>
                                        <p>- 使用蓝牙实现通信</p>
                                        <p>- Connectivity Manager使用</p>
                                        <p>- 管理和使用WiFi</p>
                                        <p>- 近场通信介绍</p>
                                    </div>
                                </li>
                                <li>
                                    <h2><em>03</em><i>流行技术</i></h2>
                                    <div class="con_list">
                                        <p>- 常用加密解密介绍</p>
                                        <p>- 常用网络支付使用</p>
                                        <p>- 事件分发原理</p>
                                        <p>- ORM框架介绍</p>
                                        <p>- Android WebView 应用</p>
                                        <p>- 项目管理工具SVN使用</p>
                                    </div>
                                </li>
                                <li>
                                    <h2><em>04</em><i>Android高级</i></h2>
                                    <div class="con_list">
                                        <p>- Linux内核安全介绍</p>
                                        <p>- Cloud to Device Messaging简介</p>
                                        <p>- 使用License Verification Library实现版权保护</p>
                                        <p>- 应用程序内收费实现</p>
                                        <p>- 使用Wake Lock</p>
                                        <p>- 处理不同硬件和软件的可用性</p>
                                        <p>- 签名和发布应用程</p>
                                    </div>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="a_con9">
            <div class="a_base">
                <h3>适合程序员学习和发展的课程体系●蔻丁倾力打造</h3>
                <div class="a_con9_con">
                    <ul>
                        <li style="display: block;"><img src="${webRoot}/images/course/a_sys_img1.jpg" height="272"
                                                         width="1000" alt=""></li>
                        <li><img src="${webRoot}/images/course/a_sys_img2.jpg" height="272" width="1000" alt=""></li>
                        <li><img src="${webRoot}/images/course/a_sys_img3.jpg" height="272" width="1000" alt=""></li>
                        <li><img src="${webRoot}/images/course/a_sys_img4.jpg" height="272" width="1000" alt=""></li>
                    </ul>
                    <div class="a_con9_btn">
                        <a href="javascript:void(0);" class="a_con9_active">专业</a><a
                            href="javascript:void(0);">免费试听两周</a><a href="javascript:void(0);">全天面授</a><a
                            href="javascript:void(0);">大型项目驱动型课程体系</a>
                    </div>
                </div>
            </div>
        </div>
        <div class="a_con10">
            <div class="a_base">
                <div class="a_con10_hd">
                    <h3>除了学习技术，各项职场技能让大家受用一生</h3>
                </div>
                <div class="a_con10_con">
                    <ul>
                        <li>
                            <span><i>职业素养<br>课程</i></span>
                            <em>职业素养课程（心态，学会感恩，企业用人圆盘）</em>
                        </li>
                        <li>
                            <span><i>校友<br>联盟会</i></span>
                            <em>蔻丁校友联盟会 ，开拓你的行业视野，拓展你的人脉，站在更高的行业高度！</em>
                        </li>
                        <li>
                            <span><i>职业<br>规划</i></span>
                            <em>人生职业规划（如何过试用期，如何和同事相处）职场规划</em>
                        </li>
                        <li>
                            <span><i>相亲会</i></span>
                            <em>每年两次的大型相亲会，解决学员的单身问题，增加学员幸福感，实现物质富裕 精神富有！</em>
                        </li>
                        <li>
                            <span><i>技术<br>讲座</i></span>
                            <em>技术讲座（前沿技术的分享，eg：Swift大型讲座等；六足机器人-跨时代的黑科技分享）</em>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
        <div class="a_con_base a_con_b4">
            <div class="a_con_line">
                <h3>简单的交流，可能会改变自已的一生，华丽逆袭！<a onclick="window.open('http://t.ibangkf.com/i/chat-chushiwei.html?l=chushiwei&page=http%3A%2F%2Flocalhost%3A8181%2Fdemo%2Fcourse%2Fandroid.html&auth_key=1489485930-0-0-e4d4730a00b2bd880471ab3f1e9d98fd','_blank')"
                                             style="cursor:pointer;" target="_blank"></a></h3>
            </div>
        </div>
        <div class="a_con11_1 a_base">
            <h3>足不出户挑工作，学员、企业零距离</h3>
            <p>
                蔻丁学员入职企业超过5000家，<br>每月有超过100家名企上门招募蔻丁优秀人才。<br>一年至少12场蔻丁名企双选会，<br>很多学员未毕业就已获得高薪Offer！<br>
            </p>
            <div class="a_con11_1_img"></div>
        </div>
        <div class="a_con11_2 a_base">
            <h4>企业合作</h4>
            <h3>这些企业选择了蔻丁学员</h3>
            <p>
                蔻丁人才专属合作全程服务打造移动开发人才服务优质平台！<br>企业的信任和支持，是我们前行的动力！
            </p>
            <div class="a_con11_2_img"></div>
        </div>
        <div class="a_con11">
            <div class="a_con11_con">
                <h3>不可复制的蔻丁奇迹</h3>
                <p>
                    专注移动互联网培训<br/>培养上万学子高薪就业 蔻丁做到了<br/>他们创造了一个时代，他们全部来自蔻丁<br>
                </p>
                <span>他们创造了一个时代，他们全部来自蔻丁</span>
                <a onclick="window.open('http://t.ibangkf.com/i/chat-chushiwei.html?l=chushiwei&page=http%3A%2F%2Flocalhost%3A8181%2Fdemo%2Fcourse%2Fandroid.html&auth_key=1489485930-0-0-e4d4730a00b2bd880471ab3f1e9d98fd','_blank')" style="cursor:pointer;"
                   target="_blank">下一故事主角就是你</a>
            </div>
        </div>
        <div class="a_con12 aBack">
            <div class="a_con12_hd">
                <h3>活动精彩纷呈，蔻丁凝聚爱与成就</h3>
                <p>充实 · 娱乐 · 团结 · 长见识</p>
            </div>
            <span></span>
        </div>
        <div class="a_con12_con">
            <h4 class="a_con12_title">温馨舒适安全的住宿环境+味美价廉卫生的营养美食</h4>
            <div class="a_base">
                <a href="javascript:void(0);" class="con12Prev"></a>
                <a href="javascript:void(0);" class="con12Next"></a>
                <div class="con12_spanPrev"></div>
                <div class="con12_spanNext"></div>
                <div class="con12_circle"><span class="con12_active"></span><span></span><span></span><span></span>
                </div>
                <div class="a_con12_pic">
                    <ul class="a_con12_pic_wrap a_clear">
                        <li class="a_con12_page" style="position: relative;">
                            <ul>
                                <li>
                                    <img src="${webRoot}/images/course/acon12pic1.png" height="212" width="239"
                                         alt="舒适的住宿">
                                    <span>舒适的住宿</span>
                                </li>
                                <li>
                                    <img src="${webRoot}/images/course/acon12pic2.png" height="212" width="239"
                                         alt="室内配备齐全">
                                    <span>室内配备齐全</span>
                                </li>
                                <li>
                                    <img src="${webRoot}/images/course/acon12pic3.png" height="212" width="239" alt="">
                                </li>
                                <li>
                                    <img src="${webRoot}/images/course/acon12pic4.png" height="212" width="239"
                                         alt="住宿外景">
                                    <span>住宿外景</span>
                                </li>
                            </ul>
                            <ul>
                                <li>
                                    <img src="${webRoot}/images/course/acon12pic5.png" height="212" width="239" alt="">
                                </li>
                                <li>
                                    <img src="${webRoot}/images/course/acon12pic6.png" height="212" width="239"
                                         alt="学员专属美食城">
                                    <span>学员专属美食城</span>
                                </li>
                                <li>
                                    <img src="${webRoot}/images/course/acon12pic7.png" height="212" width="239"
                                         alt="营养丰富的美食">
                                    <span>营养丰富的美食</span>
                                </li>
                                <li>
                                    <img src="${webRoot}/images/course/acon12pic8.png" height="212" width="239"
                                         alt="午休学生就餐">
                                    <span>午休学生就餐</span>
                                </li>
                            </ul>
                        </li>
                        <li class="a_con12_page">
                            <ul>
                                <li>
                                    <img src="${webRoot}/images/course/acon12pic9.png" height="212" width="239"
                                         alt="校友会">
                                    <span>校友会</span>
                                </li>
                                <li>
                                    <img src="${webRoot}/images/course/acon12pic10.png" height="212" width="239"
                                         alt="新生座谈会">
                                    <span>新生座谈会</span>
                                </li>
                                <li>
                                    <img src="${webRoot}/images/course/acon12pic11.png" height="212" width="239" alt="">
                                </li>
                                <li>
                                    <img src="${webRoot}/images/course/acon12pic12.png" height="212" width="239"
                                         alt="老学员交流会">
                                    <span>老学员交流会</span>
                                </li>
                            </ul>
                            <ul>
                                <li>
                                    <img src="${webRoot}/images/course/acon12pic13.png" height="212" width="239" alt="">
                                </li>
                                <li>
                                    <img src="${webRoot}/images/course/acon12pic14.png" height="212" width="239"
                                         alt="技术沙龙">
                                    <span>技术沙龙</span>
                                </li>
                                <li>
                                    <img src="${webRoot}/images/course/acon12pic15.png" height="212" width="239"
                                         alt="名企双选会">
                                    <span>名企双选会</span>
                                </li>
                                <li>
                                    <img src="${webRoot}/images/course/acon12pic16.png" height="212" width="239"
                                         alt="开发者大会">
                                    <span>开发者大会</span>
                                </li>
                            </ul>
                        </li>
                        <li class="a_con12_page">
                            <ul>
                                <li>
                                    <img src="${webRoot}/images/course/acon12pic17.png" height="212" width="239"
                                         alt="校区环境">
                                    <span>校区环境</span>
                                </li>
                                <li>
                                    <img src="${webRoot}/images/course/acon12pic18.png" height="212" width="239"
                                         alt="整洁明亮的走廊">
                                    <span>整洁明亮的走廊</span>
                                </li>
                                <li>
                                    <img src="${webRoot}/images/course/acon12pic19.png" height="212" width="239"
                                         alt="前台一角">
                                    <span>前台一角</span>
                                </li>
                                <li>
                                    <img src="${webRoot}/images/course/acon12pic20.png" height="212" width="239"
                                         alt="前台接待区">
                                    <span>前台接待区</span>
                                </li>
                            </ul>
                            <ul>
                                <li>
                                    <img src="${webRoot}/images/course/acon12pic21.png" height="212" width="239"
                                         alt="舒心的教学环境">
                                    <span>舒心的教学环境</span>
                                </li>
                                <li>
                                    <img src="${webRoot}/images/course/acon12pic22.png" height="212" width="239"
                                         alt="咨询洽谈区">
                                    <span>咨询洽谈区</span>
                                </li>
                                <li>
                                    <img src="${webRoot}/images/course/acon12pic23.png" height="212" width="239"
                                         alt="浓厚的学习氛围">
                                    <span>浓厚的学习氛围</span>
                                </li>
                                <li>
                                    <img src="${webRoot}/images/course/acon12pic24.png" height="212" width="239"
                                         alt="一流教学设备">
                                    <span>一流教学设备</span>
                                </li>
                            </ul>
                        </li>
                        <li class="a_con12_page" style="position: relative;">
                            <ul>
                                <li>
                                    <img src="${webRoot}/images/course/acon12pic25.png" height="212" width="239"
                                         alt="篮球对抗赛">
                                    <span>篮球对抗赛</span>
                                </li>
                                <li>
                                    <img src="${webRoot}/images/course/acon12pic26.png" height="212" width="239"
                                         alt="羽毛球联赛">
                                    <span>羽毛球联赛</span>
                                </li>
                                <li>
                                    <img src="${webRoot}/images/course/acon12pic27.png" height="212" width="239"
                                         alt="红树林活动">
                                    <span>红树林活动</span>
                                </li>
                                <li>
                                    <img src="${webRoot}/images/course/acon12pic28.png" height="212" width="239"
                                         alt="父亲节活动">
                                    <span>父亲节活动</span>
                                </li>
                            </ul>
                            <ul>
                                <li>
                                    <img src="${webRoot}/images/course/acon12pic29.png" height="212" width="239"
                                         alt="踏青旅游">
                                    <span>踏青旅游</span>
                                </li>
                                <li>
                                    <img src="${webRoot}/images/course/acon12pic30.png" height="212" width="239"
                                         alt="单身派对">
                                    <span>单身派对</span>
                                </li>
                                <li>
                                    <img src="${webRoot}/images/course/acon12pic31.png" height="212" width="239"
                                         alt="南山留影">
                                    <span>南山留影</span>
                                </li>
                                <li>
                                    <img src="${webRoot}/images/course/acon12pic32.png" height="212" width="239"
                                         alt="户外拓展">
                                    <span>户外拓展</span>
                                </li>
                            </ul>
                        </li>
                    </ul>
                </div>
            </div>
        </div>

        <div class="a_con14">
            <div class="a_base a_clear">
                <div class="a_con14_pro">
                    <ul>
                        <li><i>学费是多少</i><a onclick="window.open('http://t.ibangkf.com/i/chat-chushiwei.html?l=chushiwei&page=http%3A%2F%2Flocalhost%3A8181%2Fdemo%2Fcourse%2Fandroid.html&auth_key=1489485930-0-0-e4d4730a00b2bd880471ab3f1e9d98fd','_blank')"
                                           style="cursor:pointer;" target="_blank">点击咨询</a></li>
                        <li><i>我能不能学</i><a onclick="window.open('http://t.ibangkf.com/i/chat-chushiwei.html?l=chushiwei&page=http%3A%2F%2Flocalhost%3A8181%2Fdemo%2Fcourse%2Fandroid.html&auth_key=1489485930-0-0-e4d4730a00b2bd880471ab3f1e9d98fd','_blank')"
                                           style="cursor:pointer;" target="_blank">点击咨询</a></li>
                        <li><i>两周免费试听</i><a onclick="window.open('http://t.ibangkf.com/i/chat-chushiwei.html?l=chushiwei&page=http%3A%2F%2Flocalhost%3A8181%2Fdemo%2Fcourse%2Fandroid.html&auth_key=1489485930-0-0-e4d4730a00b2bd880471ab3f1e9d98fd','_blank')"
                                            style="cursor:pointer;" target="_blank">申请试听</a></li>
                        <li><i>获取学习资料</i><a onclick="window.open('http://t.ibangkf.com/i/chat-chushiwei.html?l=chushiwei&page=http%3A%2F%2Flocalhost%3A8181%2Fdemo%2Fcourse%2Fandroid.html&auth_key=1489485930-0-0-e4d4730a00b2bd880471ab3f1e9d98fd','_blank')"
                                            target="_blank">点击咨询</a></li>
                        <li><i>实训班座位告急</i><a onclick="window.open('http://t.ibangkf.com/i/chat-chushiwei.html?l=chushiwei&page=http%3A%2F%2Flocalhost%3A8181%2Fdemo%2Fcourse%2Fandroid.html&auth_key=1489485930-0-0-e4d4730a00b2bd880471ab3f1e9d98fd','_blank')"
                                             style="cursor:pointer;" target="_blank">马上抢座</a></li>
                    </ul>
                    <p>征服Android，血拼四月，苦尽甘来！</p>
                </div>
                <div class="a_con14_fm">
                    <h4>名额申请</h4>
                    <p>零首付，先就业，后付款！<br>全面加强版教程及学习资料免费领取！</p>
                    <iframe allowtransparency="true" bgcolor="transparent"
                            src="http://www.mobiletrain.org/page/ajaxfrom/ajaxfrom.php?type=android" frameborder="0"
                            width="340" height="280"></iframe>
                </div>
            </div>
        </div>

        <div class="fixedBox">
            <div class="fixedMask"></div>
            <div class="fixedBox_con">
                <span>就业大数据</span>
                <span>八大优势</span>
                <span>授课老师</span>
                <span class="fixedBox_span1">课程体系</span>
                <span>爱与成就</span>
                <span>热门分校</span>
            </div>
        </div>
    </div>
    <div id="foot">
    <#include "../common/footer.ftl">
    </div>


    <script src="${webRoot}/js/course/jquery-1.11.3.min.js"></script>
    <script src="${webRoot}/js/course/jquery.mousewheel.js"></script>
    <script src="${webRoot}/js/course/2015android.js"></script>

    <script type="text/javascript" id="bdshare_js" data="type=slide&img=0&pos=left&uid=636119"></script>
    <script type="text/javascript" id="bdshell_js"></script>
    <script type="text/javascript">
        var bds_config = {"bdTop": 258};
        document.getElementById("bdshell_js").src = "http://bdimg.share.baidu.com/static/js/shell_v2.js?t=" + new Date().getHours();
    </script>
    <script type="text/javascript" src="${webRoot}/js/course/e0cf05eacfb94c92a0a3e76d48b6c166.js"
            charset="UTF-8"></script>

    <script>
        $(function () {
        $a = $(".fixed_tab").find("li");
        $scroll_top = $(".con_title")
        $a.each(function (index_a) {
            function scroll() {
                $('body,html').stop().animate({
                    scrollTop: $scroll_top.eq(index_a).offset().top - 0
                }, 1000);
            }

            $(this).click(function () {
                scroll();
            })
        })

    })
    </script>
</body>
</html>