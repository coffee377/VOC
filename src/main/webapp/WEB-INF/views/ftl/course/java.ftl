<!DOCTYPE html>
<html>
<head lang="en">
    <meta charset="UTF-8">
    <title>蔻丁Java学院-中国Java培训|Java开发培训|JavaEE培训开拓者</title>
    <meta name="keywords" content="java培训,java开发培训,java学习,java开发,javaeEE培训" />
    <meta name="description" content="蔻丁Java学院。目前JavaEE课程已广泛应用于互联网行业，蔻丁教育结合市场需求，开设了体系完善、学以致用的Java开发培训课程。" />
    <meta http-equiv=X-UA-Compatible content="IE=edge,chrome=1">
   <#include "../common/base_css.ftl">
   <#-- <link rel="icon" href="http://www.mobiletrain.org/favicon.ico" type="image/x-icon" />-->
    <link rel="stylesheet" href="${webRoot}/css/course/javaee.css"/>
    <#--<link rel="stylesheet" href="${webRoot}/css/course/base_index.css"/>-->
    <link rel="stylesheet" type="text/css" href="${webRoot}/css/course/h5_class.css">
    <script src="${webRoot}/js/course/mobile_java.js"></script>
    <style>
    .con1_list{background:url(${webRoot}/css/course/con1_img1.png) no-repeat left bottom; height:425px;}
    .con2{padding:0 0 60px 0; text-align: center; background: url(${webRoot}/images/course/con9_bg.jpg) no-repeat center top;}
    .con1{padding-bottom:20px;background:url(${webRoot}/css/course/con1_bg.jpg) repeat;}
    .con3_tab_title li{float:left; background:url(${webRoot}/css/course/con3_ico1.png) no-repeat; margin-right:52px; display:inline;}
    .a_team_name{background:url(${webRoot}/css/course/a_team_bg.png) no-repeat;width:162px;height: 162px;position: absolute;left:-136px;top:50px;font-weight: bold;color:#fff;font-size: 32px;text-align: center;line-height: 162px;}
    .contain5{
        padding-bottom: 72px;
        background: url(${webRoot}/css/course/con5_bg.jpg) no-repeat center top;
    }
    .con5_list1 li span:nth-child(1){
        width:120px;
        height:120px;
        border-radius: 50%;
        border:2px solid #fff;
        margin-bottom: 33px;
        background: url(${webRoot}/css/course/con5_list1_bg.png) no-repeat  30px 12px;
    }
    .con5_list1 li.hover span:nth-child(1){
        width:124px;
        height:124px;
        border:0;
        border-radius: 50%;
        background: #da4e38 url(${webRoot}/css/course/con5_list1_bg.png) no-repeat  32px 14px;
        animation:con3_an 0.8s linear infinite alternate;
        -moz-animation:con3_an 0.8s linear infinite alternate;
        -webkit-animation:con3_an 0.8s linear infinite alternate;
        -o-animation:con3_an 0.8s linear infinite alternate;
    }
    .contain6{
        padding-bottom: 110px;
        background: url(${webRoot}/css/course/con6_bg.jpg) no-repeat center top;
    }
    .fr li{background: url(${webRoot}/css/course/con4_list1_bg.png) no-repeat;}
    .con6_list1 li{
        float: left;
        position: relative;
        margin-right:86px;
        padding-top: 20px;
        width:235px;
        height:322px;
        background: url(${webRoot}/css/course/con6_list1_01.png) no-repeat center top;
    }
    .con6_list1 li:nth-child(2){
        background: url(${webRoot}/css/course/con6_list1_02.png) no-repeat center top;
    }
    .con6_list1 li:nth-child(3){
        background: url(${webRoot}/css/course/con6_list1_03.png) no-repeat center top;
    }
    .con6_list1 li:nth-child(4){
        background: url(${webRoot}/css/course/con6_list1_04.png) no-repeat center top;
    }
    .con6_list1 li span:nth-child(1){
        margin-bottom: 15px;
        width:100px;
        height:100px;
        background: url(${webRoot}/css/course/con6_list1_bg.png) no-repeat 20px 5px;
    }
    .contain7{
        padding-bottom: 66px;
       /* background: url(${webRoot}/images/course/con7_bgjava.jpg) no-repeat center top;*/
    }
    .contain7 p:nth-child(4){
        font-size: 45px;
        line-height:100px;
        height:100px;
        color:#000;
        text-align: left;
        background: url(${webRoot}/css/course/con7_p4_bg.png) no-repeat 554px center;
    }
    .contain8{
        padding-bottom: 30px;
        background: url(${webRoot}/images/course/con8_bgjava.jpg) no-repeat center top;
    }

    .contain9{
        padding: 70px 0 14px;
        text-align: center;
        width:100%;
        overflow:hidden;
        background: url(${webRoot}/css/course/con9_bg.jpg) no-repeat center top;
        margin-bottom:20px;
    }

    .con1{padding-bottom:20px;background:url(${webRoot}/images/course/con1_bg.jpg) repeat;}
/*
    .con2{padding:0 0 60px 0; text-align: center; background: url(${webRoot}/images/course/con2_bg.jpg) no-repeat center top;}
*/
    .con1_list{background:url(${webRoot}/images/course/con1_img1.png) no-repeat left bottom; height:425px;}
    .con3_tab_title li{float:left; background:url(${webRoot}/images/course/con3_ico1.png) no-repeat; margin-right:52px; display:inline;}
    .a_team_name{background:url(${webRoot}/images/course/a_team_bg.png) no-repeat;width:162px;height: 162px;position: absolute;left:-136px;top:50px;font-weight: bold;color:#fff;font-size: 32px;text-align: center;line-height: 162px;}
    .fr li{background: url(${webRoot}/images/course/con4_list1_bg.png) no-repeat;}
    .contain5{
        padding-bottom: 72px;
        background: url(${webRoot}/images/course/con5_bg.jpg) no-repeat center top;
    }
    .con5_list1 li span:nth-child(1){
        width:120px;
        height:120px;
        border-radius: 50%;
        border:2px solid #fff;
        margin-bottom: 33px;
        background: url(${webRoot}/images/course/con5_list1_bg.png) no-repeat  30px 12px;
    }
    .con5_list1 li.hover span:nth-child(1){
        width:124px;
        height:124px;
        border:0;
        border-radius: 50%;
        background: #da4e38 url(${webRoot}/images/course/con5_list1_bg.png) no-repeat  32px 14px;
        animation:con3_an 0.8s linear infinite alternate;
        -moz-animation:con3_an 0.8s linear infinite alternate;
        -webkit-animation:con3_an 0.8s linear infinite alternate;
        -o-animation:con3_an 0.8s linear infinite alternate;
    }
    .contain6{
        padding-bottom: 110px;
        background: url(${webRoot}/images/course/con6_bg.jpg) no-repeat center top;
    }
    .con6_list1 li{
        float: left;
        position: relative;
        margin-right:86px;
        padding-top: 20px;
        width:235px;
        height:322px;
        background: url(${webRoot}/images/course/con6_list1_01.png) no-repeat center top;
    }
    .con6_list1 li:nth-child(2){
        background: url(${webRoot}/images/course/con6_list1_02.png) no-repeat center top;
    }
    .con6_list1 li:nth-child(3){
        background: url(${webRoot}/images/course/con6_list1_03.png) no-repeat center top;
    }
    .con6_list1 li:nth-child(4){
        background: url(${webRoot}/images/course/con6_list1_04.png) no-repeat center top;
    }
    .con6_list1 li span:nth-child(1){
        margin-bottom: 15px;
        width:100px;
        height:100px;
        background: url(${webRoot}/images/course/con6_list1_bg.png) no-repeat 20px 5px;
    }

    .contain7 p:nth-child(4){
        font-size: 45px;
        line-height:100px;
        height:100px;
        color:#000;
        text-align: left;
        background: url(${webRoot}/images/course/con7_p4_bg.png) no-repeat 554px center;
    }

    .con8_list1 li p:nth-child(1) span:nth-child(1){
        width:116px;
        height:100px;
        margin-bottom: 40px;
        background: url(${webRoot}/images/course/con8_list1_bg.png) no-repeat 0px -200px;
    }
    .contain9{
        padding: 70px 0 14px;
        text-align: center;
        width:100%;
        overflow:hidden;
        background: url(${webRoot}/images/course/con9_bg.jpg) no-repeat center top;
        margin-bottom:20px;
    }
    .javaee_fixed ul li:nth-child(1){
        background:url(${webRoot}/images/course/javaee_fixed_01.png) no-repeat center 4px;
        padding-top:109px;
        height:75px;
        color:#0da172;
    }
    .javaee_fixed ul li:nth-child(2){
        background:url(${webRoot}/images/course/javaee_fixed_02.png) no-repeat center bottom;
        color:#ff8d07;
    }
    .javaee_fixed ul li:nth-child(3){
        background:url(${webRoot}/images/course/javaee_fixed_03.png) no-repeat center 4px;
        padding-top:109px;
        height:75px;
        color:#62356c;
    }
    .javaee_fixed ul li:nth-child(4){
        background:url(${webRoot}/images/course/javaee_fixed_04.png) no-repeat center bottom;
        color:#e15e3f;
    }
    .javaee_fixed ul li:nth-child(5){
        background:url(${webRoot}/images/course/javaee_fixed_05.png) no-repeat center 4px;
        padding-top:109px;
        height:75px;
        color:#156290;
    }
    .javaee_fixed ul li:nth-child(6){
        background:url(${webRoot}/images/course/javaee_fixed_06.png) no-repeat center bottom;
        color:#df3c5a;
    }
    .javaee_fixed ul li:nth-child(7){
        background:url(${webRoot}/images/course/javaee_fixed_07.png) no-repeat center 4px;
        padding-top:109px;
        height:75px;
        color:#919d11;
    }
    .javaee_fixed ul li:nth-child(8){
        background:url(${webRoot}/images/course/javaee_fixed_08.png) no-repeat center bottom;
        color:#ba3035;
    }
    .fixed .base{background:#f6f6f6 url(${webRoot}/images/course/fixed_bg.png) no-repeat center 30px;padding:30px 0;height:189px;}
    .cont1_tb a{width:115px;display: inline-block; padding-top:120px; font-size:16px; color:#333; text-align: center; margin:0 10px; background:url(${webRoot}/images/course/con1_ico.png) no-repeat; margin-bottom:20px;}

</style>
</head>
<body>
<div id="header">
<#include "../common/header.ftl">
</div>
<div id="cont">
<div class="banner">
    <div class="a_banner">
        <div class="a_banner_pic">
            <ul>
                <li>
                    <a href="http://xa.mobiletrain.org/javaee/" target="_block">
                        <img src="${webRoot}/images/course/banner_bg.jpg">
                    </a>
                </li>
                <li>
                    <a href="http://www.mobiletrain.org/about/news/2411.html?" target="_block">
                        <img src="${webRoot}/images/course/ban_java.jpg">
                    </a>
                </li>
            </ul>
            <a href="javascript:void(0);?" class="a_prev">‹</a>
            <a href="javascript:void(0);?" class="a_next">›</a>
            <div class="a_change_btn"><a href="javascript:void(0);" class="btn_active"><i></i></a><a href="javascript:void(0);" class=""><i></i></a></div>
        </div>
    </div>
    <div id="container" onclick="window.open('http://t.ibangkf.com/i/chat-chushiwei.html?l=chushiwei&page=http%3A%2F%2Flocalhost%3A8181%2Fdemo%2Fcourse%2Fandroid.html&auth_key=1489485930-0-0-e4d4730a00b2bd880471ab3f1e9d98fd','_blank')" style="cursor:pointer;"></div>
</div>
<div class="con1">
    <div class="base">
        <h2 data-scroll-reveal="enter bottom">为什么程序员独爱Java？<span>JAVA  ADVANTAGE</span></h2>
        <div class="con1_list clear">
            <div class="con1_tb_content">
                <div title="蔻丁Java学院-中国Java培训|Java开发培训开拓者">
                    <p>Java语言保留C++优势精华的 同时，剔除一些冗余特性，集万千优势于一身的Java目前是世界上最受程序员欢迎的编程语言。</p>
                    <p>Java是一个面向对象的语言，这意味着要注意应用中的数据和操纵数据的方法，而不是严格地用过程来思考。</p>
                    <p>Java设计成支持在网络上应用，它是分布式语言。Java程序只要编写一次，就可跨平台到处运行。</p>
                    <p>Java程序可以在任何实现了Java解释程序和运行系统的系统上运行，与传统耗时编译、链接、测试相比，Java可以快速程序开发。</p>
                    <p>Java初始设计便可写高可靠和稳健软件，作为一门强类型语言，Java不仅可靠，还可异常处理，简化出错处理和回复任。</p>
                    <p>Java的存储分配模型是它防御恶意代码的主要方法之一，优秀的安全机制使得Java与其他编程语言区分开来。</p>
                    <p>Java使得语言声明不依赖于实现的方面，并且，Java环境本身对新的硬件平台和操作系统是可移植的。</p>
                    <p>Java是一种先编译后解释的语言，考虑到一些“及时”编译程序的需要，所以生成机器代码的过程相当简单，它能产生相当好的代码。</p>
                    <p>Java是多线索语言，它提供支持多线索的执行，能处理不同任务，使具有线索的程序设计很容易。</p>
                    <p>Java语言设计成适应于变化的环境，它是一个动态的语言。</p>
                </div>
            </div>
            <div class="cont1_tb" title="蔻丁Java学院-中国Java培训|Java开发培训开拓者">
                <a href="###" target="_blank" class="con1_on1">简单性</a>
                <a href="###" target="_blank">面向对象</a>
                <a href="###" target="_blank">分布性</a>
                <a href="###" target="_blank">编译和解释性</a>
                <a href="###" target="_blank">稳健性</a>
                <a href="###" target="_blank">安全性</a>
                <a href="###" target="_blank">移植性</a>
                <a href="###" target="_blank">高性能</a>
                <a href="###" target="_blank">多线索性</a>
                <a href="###" target="_blank">动态性</a>
            </div>
        </div>
    </div>
</div>
<div class="con2">
    <div class="base" title="java就业--蔻丁Java学院-中国Java培训|Java开发培训开拓者">
        <ul class="con2_logo" data-scroll-reveal="enter bottom">
            <li>
                <span>
                    <img src="${webRoot}/images/course/con2_img1.png" height="57" width="164">
                </span>
                <p>“Java开发”相关职位<i>10000+</i><em>（根据6月22日猎聘网搜索所得数据）</em></p>
            </li><li>
                <span>
                    <img src="${webRoot}/images/course/con1_img2.png" height="55" width="129">
                </span>
            <p>“Java开发”相关职位<i>40342+</i><em>（根据6月22日猎聘网搜索所得数据）</em></p>
        </li><li>
                <span>
                    <img src="${webRoot}/images/course/con2_img3.png" height="55" width="151">
                </span>
            <p>“Java开发”相关职位<i>48932+</i><em>（根据6月22日猎聘网搜索所得数据）</em></p>
        </li><li>
                <span>
                    <img src="${webRoot}/images/course/con2_img4.png" height="50" width="147">
                </span>
            <p>“Java开发”相关职位<i>63677+</i><em>（根据6月22日猎聘网搜索所得数据）</em></p>
        </li>
        </ul>
        <div class="link_53 layer" data-depth="0.2"><a href="http://t.ibangkf.com/i/chat-chushiwei.html?l=chushiwei&page=http%3A%2F%2Flocalhost%3A8181%2Fdemo%2Fcourse%2Fandroid.html&auth_key=1489485930-0-0-e4d4730a00b2bd880471ab3f1e9d98fd" target="_blank">Java开发工程师平均薪资<i>12570</i></a></div>
        <h6>（数据来源：职友集近1年 21087 份样本统计）</h6>
    </div>
</div>
<div class="con3">
    <div class="base" title="蔻丁Java学院-中国Java培训|Java开发培训开拓者">
        <h2 data-scroll-reveal="enter bottom">蔻丁JavaEE课程大纲<span>良心出品 缔造精英</span></h2>
        <p>JavaEE作为Java中最重要的一项，常用于工业级应用开发，相比其他，JavaEE以专业性和强大的规范性独受企业青睐！</p>
        <div class="link_53 layer" data-depth="0.2">
            <a href="http://t.ibangkf.com/i/chat-chushiwei.html?l=chushiwei&page=http%3A%2F%2Flocalhost%3A8181%2Fdemo%2Fcourse%2Fandroid.html&auth_key=1489485930-0-0-e4d4730a00b2bd880471ab3f1e9d98fd" target="_blank">我要了解</a>
        </div>
    </div>
</div>
<div class="javaee_fixed fixed_tab">
    <ul class="base">
        <li>
            <h3>第一阶段</h3>
            <p>Java基础</p>
        </li>
        <li>
            <h3>第二阶段</h3>
            <p>JavaWeb</p>
        </li>
        <li>
            <h3>第三阶段</h3>
            <p>Java框架</p>
        </li>
        <li>
            <h3>第四阶段</h3>
            <p>Java + 云数据</p>
        </li>
    </ul>

</div>
<div class="con">
    <div class="base">
        <div class="java_class class_list">
            <div class="con_title clear">
                <span>01</span>
                <h6>第一阶段<i>Java基础</i></h6>
            </div>
            <ul class="clear">
                <li>
                    <h2><em>01</em><i>Java开发介绍</i></h2>
                    <div class="con_list">
                        <p>- DOS常用命令</p>
                        <p>- 安装JDK、设置环境变量</p>
                        <p>- DOS系统编译、执行Java程序</p>
                        <p>- Java的注释</p>
                        <p>- 标识符、标识符的命名规范</p>
                        <p>- Java的数据类型</p>
                        <p>- 变量的定义及初始化</p>
                        <p>- Java的运算符</p>
                        <p>- 表达式</p>
                        <p>- 转义字符</p>
                        <p>- 运算符的优先级</p>
                        <p>- 类型转换</p>
                        <p>- Java分支if...else</p>
                        <p>- 多重if、嵌套if</p>
                        <p>- Java switch</p>
                        <p>- Switch vs if</p>
                        <p>- Java循环 for、while 、doWhile</p>
                        <p>- 循环的嵌套</p>
                        <p>- break、continue、return</p>
                        <p>- 方法的定义</p>
                        <p>- 方法的形参和实参</p>
                        <p>- 无返回值的方法</p>
                        <p>- 有返回值的方法</p>
                        <p>- 方法的重载</p>

                    </div>
                </li>
                <li>
                    <h2><em>02</em><i>Java数组</i></h2>
                    <div class="con_list">
                        <p>- Java 数组的定义</p>
                        <p>- 数组的静态赋值</p>
                        <p>- 数组的动态赋值</p>
                        <p>- 数组单个元素的访问</p>
                        <p>- 数组的遍历访问</p>
                        <p>- 数组的增强for循环</p>
                        <p>- 数组的排序</p>
                        <p>- 数组的顺序查找</p>
                        <p>- 数组的二分法查找</p>
                        <p>- 命令行参数args的使用</p>
                        <p>- 可变参数的应用</p>
                        <p>- Arrays工具类的使用</p>
                        <p>- 二维数组的使用</p>
                    </div>
                </li>
                <li>
                    <h2><em>03</em><i>Java面向对象</i></h2>
                    <div class="con_list">
                        <p>- 面向对象的分析与设计</p>
                        <p>- 面向对象与面向过程的区别 </p>
                        <p>- Java与面向对象</p>
                        <p>- 类的定义</p>
                        <p>- 对象的定义</p>
                        <p>- 类中成员变量及方法的定义</p>
                        <p>- 构造方法的定义和调用</p>
                        <p>- 构造方法的重载</p>
                        <p>- 面向对象的封装特性 </p>
                        <p>- this调用属性、方法、构造方法</p>
                        <p>- 局部变量和成员变量的作用域问题</p>
                        <p>- static静态属性、方法、代码块</p>
                        <p>- 工具类的概念及工具类的制作</p>
                        <p>- super关键字的使用及理解</p>
                        <p>- Java中访问权限控制机制</p>
                        <p>- 继承中构造方法的细节 </p>
                        <p>- 方法的重写</p>
                        <p>- equals及toString方法的正确理解</p>
                        <p>- Java中的包机制</p>
                        <p>- 抽象类，接口，多态</p>
                        <p>- 对象的转型</p>
                        <p>- final修饰类、属性、方法 </p>
                        <p>- 抽象类，接口</p>
                        <p>- 多态机制</p>
                        <p>- 内部类</p>
                        <p>- 通过内部类制作性能检测工具</p>
                        <p>- Java的内存分析</p>
                    </div>
                </li>
                <li>
                    <h2><em>04</em><i>常用基础类</i></h2>
                    <div class="con_list">
                        <p>- 常用数据类型的包装类</p>
                        <p>- String、StringBuffer、StringBuilder </p>
                        <p>- Date的使用</p>
                        <p>- SimpleDataFormate对日期和字符串之间的转换处理</p>
                        <p>- Calendar日历类的使用</p>
                        <p>- Math常用方法</p>
                        <p>- Random类</p>
                        <p>- Runtime类</p>
                        <p>- System 类</p>
                        <p>- java8新特性</p>
                    </div>
                </li>
                <li>
                    <h2><em>05</em><i>集合</i></h2>
                    <div class="con_list">
                        <p>- 集合框架体系介绍</p>
                        <p>- 集合框架与数组的对比</p>
                        <p>- 集合框架之Collection接口</p>
                        <p>- 集合框架之List接口</p>
                        <p>- ArrayList和LinkedList的使用</p>
                        <p>- 深入源码探究ArrayList和LinkedList的工作原理</p>
                        <p>- 迭代器的工作原理</p>
                        <p>- 迭代器的使用</p>
                        <p>- 集合框架之Set</p>
                        <p>- HashSet和TreeSet的使用</p>
                        <p>- 深入源码探究HashSet和TreeSet的工作原理</p>
                        <p>- HashMap和TreeMap的使用</p>
                        <p>- 分析Map和Set的之间的关系</p>
                        <p>- Collections工具类</p>
                    </div>
                </li>
                <li>
                    <h2><em>06</em><i>线程和I/O</i></h2>
                    <div class="con_list">
                        <p>- I/O</p>
                        <p>- NIO</p>
                        <p>- 文件操作</p>
                        <p>- 多线程</p>
                        <p>- 线程池</p>
                        <p>- 同步</p>
                        <p>- 线程调度</p>
                        <p>- 多线程下载</p>
                        <p>- 网络http、socket</p>
                        <p>- 基于HTTP协议访问网络资源、JSON解析</p>
                        <p>- 文件的下载</p>
                    </div>
                </li>
                <li>
                    <h2><em>07</em><i>异常处理</i></h2>
                    <div class="con_list">
                        <p>- Java的异常体系</p>
                        <p>- 异常的概念及分类</p>
                        <p>- 异常的处理方式</p>
                        <p>- 异常设计原则</p>
                        <p>- 自定义异常</p>
                    </div>
                </li>
                <li>
                    <h2><em>08</em><i>项目</i></h2>
                    <div class="con_list">
                        <p>- 坦克大战、打飞机等</p>
                    </div>
                </li>
            </ul>
        </div>
        <div class="java_class class_list">
            <div class="con_title clear">
                <span>02</span>
                <h6>第二阶段<i>JavaWeb</i></h6>
            </div>
            <ul class="clear">
                <li>
                    <h2><em>01</em><i>HTML5入门</i></h2>
                    <div class="con_list">
                        <p>- HTML的作用</p>
                        <p>- 全局标签 </p>
                        <p>- 绝对路径与相对路径</p>
                        <p>- 常见标签</p>
                        <p>- 字符集</p>
                        <p>- 图片整合</p>
                        <p>- 表单标签</p>
                        <p>- 布局指定的网页</p>
                    </div>
                </li>
                <li>
                    <h2><em>02</em><i>CSS3入门</i></h2>
                    <div class="con_list">
                        <p>- css声明类型</p>
                        <p>- 常见的各种属性</p>
                        <p>- 圆角属性:border-radius的使用</p>
                        <p>- 阴影属性:box-shadow的用法</p>
                        <p>- 背景属性扩展:多背景应用</p>
                        <p>- 新的颜色表示方式:HSLA色轮模式</p>
                        <p>- 浮动</p>
                        <p>- 完成自己的初级课页面实战</p>
                    </div>
                </li>
                <li>
                    <h2><em>03</em><i>Javascript</i></h2>
                    <div class="con_list">
                        <p>- JavaScript基本语法</p>
                        <p>- JavaScript数据类型</p>
                        <p>- JavaScript对象和常用对象</p>
                        <p>- history对象</p>
                        <p>- location对象</p>
                        <p>- bom对象</p>
                        <p>- 表单对象</p>
                        <p>- DOM对象</p>
                        <p>- window对象</p>
                        <p>- 常用事件</p>
                        <p>- 选项卡、幻灯片、贪吃蛇、瀑布流各种特效</p>
                    </div>
                </li>
                <li>
                    <h2><em>04</em><i>MySQL使用</i></h2>
                    <div class="con_list">
                        <p>- Mysql数据库</p>
                        <p>- MySql命令行客户端的使用</p>
                        <p>- MySql图形化客户端的使用</p>
                        <p>- SQL语句介绍</p>
                        <p>- DDL</p>
                        <p>- DML</p>
                        <p>- DQL</p>
                        <p>- 多表的联合查询</p>
                        <p>- 子查询</p>
                        <p>- 排序、聚合、分组</p>
                    </div>
                </li>
                <li>
                    <h2><em>05</em><i>JDBC连接池</i></h2>
                    <div class="con_list">
                        <p>- JDBC的介绍</p>
                        <p>- 采用JDBC实现CRUD</p>
                        <p>- 采用PrepareStatement防止SQL注入，提高安全性 </p>
                    </div>
                </li>
                <li>
                    <h2><em>06</em><i>Servlet</i></h2>
                    <div class="con_list">
                        <p>- Tomcat与eclipse的集成开发</p>
                        <p>- 什么是Servlet</p>
                        <p>- Servlet接收客户端请求信息</p>
                        <p>- Servlet响应客户端信息</p>
                        <p>- Servlet的生命周期</p>
                        <p>- 什么是JSP</p>
                        <p>- JSP的内置对象</p>
                        <p>- 透析JSP的本质</p>
                        <p>- JSTL+EL</p>
                        <p>- MVC介绍</p>
                        <p>- 分层的重要性</p>
                        <p>- Mysql的事务特性</p>
                        <p>- MySql的事务实现</p>
                        <p>- Session的使用</p>
                        <p>- Cookie的使用</p>
                        <p>- DBCP连接池的使用</p>
                        <p>- C3P0连接池的使用</p>
                        <p>- DBUils</p>
                        <p>- 实现用户的自动登录</p>
                        <p>- 文件的上传</p>
                        <p>- 文件的下载</p>
                        <p>- 过滤器解决编码问题</p>
                        <p>- 过滤器解决安全验证问题</p>
                        <p>- 监听器</p>
                        <p>- 反射、注解、泛型</p>
                    </div>
                </li>
                <li>
                    <h2><em>07</em><i>ajax</i></h2>
                    <div class="con_list">
                        <p>- Ajax的工作原理</p>
                        <p>- Ajax 数据格式（XML格式、HTML格式、JSON格式、各种格式对比）</p>
                        <p>- 使用 jQuery 实现 Ajax（load()方法、$.get()方法、$.post()方法、序列化、Ajax应用）</p>
                        <p>- 聊天室小实例</p>
                    </div>
                </li>
                <li>
                    <h2><em>08</em><i>jQuery</i></h2>
                    <div class="con_list">
                        <p>- jQuery选择器</p>
                        <p>- jQuery的常用事件</p>
                        <p>- 事件冒泡</p>
                        <p>- 事件委派</p>
                        <p>- jQuery中的动化</p>
                        <p>- 模拟操作</p>
                        <p>- jQuery综合实例</p>
                    </div>
                </li>
                <li>
                    <h2><em>09</em><i>项目</i></h2>
                    <div class="con_list">
                        <p>- 讲解项目开发流程</p>
                        <p>- 项目简介</p>
                        <p>- 项目功能演示</p>
                        <p>- 项目功能实现分析</p>
                        <p>- 数据库设计分析</p>
                        <p>- 项目架构设计分析</p>
                        <p>- 实现网站首页的商品展示</p>
                        <p>- 实现商品详情页面</p>
                        <p>- 实现购物车功能</p>
                        <p>- 实现我的订单管理</p>
                        <p>- 项目验收</p>
                    </div>
                </li>
            </ul>
        </div>
        <div class="java_class class_list">
            <div class="con_title clear">
                <span>03</span>
                <h6>第三阶段<i>Java框架</i></h6>
            </div>
            <ul class="clear">
                <li>
                    <h2><em>01</em><i>Struts2</i></h2>
                    <div class="con_list">
                        <p>- Struts2框架介绍</p>
                        <p>- 工作原理及架构分析</p>
                        <p>- 快速掌握Struts2开发模式</p>
                        <p>- Struts.xml详解</p>
                        <p>- 通配符的配置模式</p>
                        <p>- ActionContext及ServletActionContext使用</p>
                        <p>- 类型自动转换机制</p>
                        <p>- 多模块的开发模式</p>
                        <p>- 单文件上传</p>
                        <p>- 多文件上传</p>
                        <p>- 文件下载</p>
                        <p>- 拦截器的介绍</p>
                        <p>- 默认拦截器</p>
                        <p>- 自定义拦截器</p>
                        <p>- Token机制</p>
                        <p>- Struts2与JSON的结合使用</p>
                        <p>- Struts2的国际化技术</p>
                    </div>
                </li>
                <li>
                    <h2><em>02</em><i>Hibernate5</i></h2>
                    <div class="con_list">
                        <p>- ORM思想</p>
                        <p>- hibernate5与JPA关系介绍</p>
                        <p>- hibernate.cfg.xml配置</p>
                        <p>- hbm.xml映射文件详解</p>
                        <p>- 主键生成策略 PO对象三种状态分析与切换</p>
                        <p>- hibernate5一级缓存分析与测试</p>
                        <p>- Hibernate5高级映射技术</p>
                        <p>- Hibernate5多表联合查询</p>
                        <p>- Hibernate5的性能优化</p>
                        <p>- hibernate4及hibernate3区别及新特性介绍</p>
                    </div>
                </li>
                <li>
                    <h2><em>03</em><i>JPA</i></h2>
                    <div class="con_list">
                        <p>- JPA 概述</p>
                        <p>- JPA 注解</p>
                        <p>- JPA 相关 API</p>
                        <p>- JPA 映射</p>
                        <p>- JPQL</p>
                        <p>- 二级缓存</p>
                        <p>- Spring 整合 JPA</p>
                    </div>
                </li>
                <li>
                    <h2><em>04</em><i>Spring4</i></h2>
                    <div class="con_list">
                        <p>- 框架原理介绍</p>
                        <p>- 框架环境搭建</p>
                        <p>- 快速入门</p>
                        <p>- 创建Bean的方式及实现原理</p>
                        <p>- Bean种类</p>
                        <p>- Bean生命周期</p>
                        <p>- Bean的作用域</p>
                        <p>- Bean的注值方式</p>
                        <p>- SpEL</p>
                        <p>- 整合Junit测试</p>
                        <p>- Web项目集成spring</p>
                        <p>- 注解装配Bean</p>
                        <p>- AOP思想</p>
                        <p>- AOP原理解剖</p>
                        <p>- 传统方式实现AOP开发</p>
                        <p>- AspectJ介绍及实现AOP开发</p>

                    </div>
                </li>
                <li>
                    <h2><em>05</em><i>BootStrap</i></h2>
                    <div class="con_list">
                        <p>- 响应式设计</p>
                        <p>- BootStrap安装</p>
                        <p>- Bootstrap 组件</p>
                        <p>- 进度条和列表组件</p>
                        <p>- BootStrap综合实例</p>
                    </div>
                </li>
                <li>
                    <h2><em>06</em><i>echarts图表插件使用</i></h2>
                    <div class="con_list">
                        <p>- 图表介绍和选择什么样的图表</p>
                        <p>- 5分钟快速上手</p>
                        <p>- 常用API和模块</p>
                        <p>- 移动端自适应</p>
                    </div>
                </li>
                <li>
                    <h2><em>07</em><i>Maven</i></h2>
                    <div class="con_list">
                        <p>- Maven概述</p>
                        <p>- 使用Maven的优势</p>
                        <p>- maven的一次构建</p>
                        <p>- 依赖管理</p>
                        <p>- 安装配置介绍.使用Maven核心概念介绍( 坐标、依赖、仓库、插件、生命周期等)</p>
                        <p>- Maven与第三方Elicpse整合及如何在Eclipse中使用Maven、Maven私服Nexus的安装使用</p>
                        <p>- 如何使用Maven构建Web应用</p>
                        <p>- 使用Maven构建SSH应用</p>
                        <p>- 使用Maven进行多模块和继承使用</p>
                    </div>
                </li>
                <li>
                    <h2><em>08</em><i>SpringData</i></h2>
                    <div class="con_list">
                        <p>- Spring Data 概述</p>
                        <p>- Repository</p>
                        <p>- CrudRepository</p>
                        <p>- PagingAndSortingRepository</p>
                        <p>- JpaRepository</p>
                        <p>- 条件查询</p>
                        <p>- 使用@Query自定义查询</p>
                        <p>- @Query 与 @Modifying 执行更新操作</p>
                        <p>- 索引参数与命名参数</p>
                        <p>- 用@Query来指定本地查询</p>
                        <p>- 为某一个 Repository 上添加自定义方法</p>
                        <p>- 所有的 Repository 都添加自实现的方法</p>
                    </div>
                </li>
                <li>
                    <h2><em>09</em><i>SpringMVC</i></h2>
                    <div class="con_list">
                        <p>- Spring MVC 概述</p>
                        <p>- 使用 @RequestMapping映射请求</p>
                        <p>- 请求处理方法签名概述</p>
                        <p>- 处理方法签名详细说明</p>
                        <p>- 使用 HttpMessageConverter</p>
                        <p>- 处理模型数据</p>
                        <p>- 数据绑定流程剖析</p>
                        <p>- 数据转换</p>
                        <p>- 数据格式化</p>
                        <p>- 数据校验</p>
                        <p>- 视图和视图解析器</p>
                        <p>- 处理方法的数据绑定</p>
                        <p>- 视图和视图解析器</p>
                    </div>
                </li>
                <li>
                    <h2><em>10</em><i>MyBatis</i></h2>
                    <div class="con_list">
                        <p>- MyBatis入门</p>
                        <p>- 安装和配置MyBatis</p>
                        <p>- 使用映射语句</p>
                        <p>- 执行非查询语句</p>
                        <p>- 使用高级查询技术</p>
                        <p>- 事务</p>
                        <p>- 使用动态SQL</p>
                        <p>- 使用高速缓存提高性能</p>
                        <p>- MyBatis数据访问对象</p>
                        <p>- DAO使用进阶</p>
                    </div>
                </li>
                <li>
                    <h2><em>11</em><i>SpringSecurity(二选一)</i></h2>
                    <div class="con_list">
                        <p>- 加强URL访问安全</p>
                        <p>- 登录到Web应用</p>
                        <p>- 验证用户</p>
                        <p>- 加强方法调用的安全</p>
                        <p>- 做出访问控制决策</p>
                        <p>- 处理视图中的安全性</p>
                        <p>- 处理领域对象安全性</p>
                    </div>
                </li>
                <li>
                    <h2><em>12</em><i>Shiro(二选一)</i></h2>
                    <div class="con_list">
                        <p>- 权限基础</p>
                        <p>- Shiro 概述</p>
                        <p>- Shiro 配置基础</p>
                        <p>- Permissions</p>
                        <p>- Authentication</p>
                        <p>- Authorization</p>
                        <p>- Role</p>
                        <p>- 编程授权</p>
                        <p>- Realm</p>
                        <p>- Realms的认证实现</p>
                        <p>- Realms的授权实现</p>
                        <p>- Spring 集成 Shiro</p>
                        <p>- Spring 集成 Shiro</p>
                        <p>- 基于注解的授权</p>
                    </div>
                </li>
                <li>
                    <h2><em>13</em><i>WebService</i></h2>
                    <div class="con_list">
                        <p>- WebService介绍</p>
                        <p>- WebService的应用场景</p>
                    </div>
                </li>
                <li>
                    <h2><em>14</em><i>RestFul</i></h2>
                    <div class="con_list">
                        <p>- http协议</p>
                        <p>- RestFul规范</p>
                        <p>- postman使用</p>
                        <p>- spring 实现 RestFul</p>
                    </div>
                </li>
                <li>
                    <h2><em>15</em><i>svn  &  git & Jenkins持续集成</i></h2>
                    <div class="con_list">
                        <p>- svn介绍</p>
                        <p>- svn服务器和客户搭建配置</p>
                        <p>- 如何使用svn</p>
                        <p>- 多人一起进行冲突解决</p>
                        <p>- git常用命令</p>
                        <p>- git的web hooks</p>
                        <p>- 为什么要使用持续集成</p>
                        <p>- 持续集成与git 的web hooks配使使用</p>
                    </div>
                </li>
                <li>
                    <h2><em>16</em><i>Oracle</i></h2>
                    <div class="con_list">
                        <p>- Oracle 数据库的安装</p>
                        <p>- Oracle 数据库的配置</p>
                        <p>- 用 Oracle 企业管理器进行数据库安全管理</p>
                        <p>- 表空间及模式对象</p>
                        <p>- PL\ SQL 字符集</p>
                        <p>- PL\ SQL 编程基础</p>
                        <p>- 用 PL\ SQL 程序访问数据库</p>
                        <p>- 列类型</p>
                        <p>- SQL *plus</p>
                        <p>- PL\ SQL 程序的类型（包括：匿名 PL\ SQL 块、存储过程和函数、删除存储过程和函数 ）</p>
                        <p>- 触发器</p>
                    </div>
                </li>
                <li>
                    <h2><em>17</em><i>项目</i></h2>
                    <div class="con_list">
                        <p>- 技术博客等</p>
                    </div>
                </li>

            </ul>
        </div>
        <div class="java_class class_list">
            <div class="con_title clear">
                <span>04</span>
                <h6>第四阶段<i>Java + 云数据</i></h6>
            </div>
            <ul class="clear">
                <li>
                    <h2><em>01</em><i>亿级并发架构演进</i></h2>
                    <div class="con_list">
                        <p>- 架构演进特点</p>
                        <p>- 大并发架构</p>
                        <p>- 微服务</p>
                    </div>
                </li>
                <li>
                    <h2><em>02</em><i>Linux基础</i></h2>
                    <div class="con_list">
                        <p>- 文件处理命令</p>
                        <p>- 权限管理命令</p>
                        <p>- 帮助命令</p>
                        <p>- 文件搜索命令</p>
                        <p>- 压缩解压命令</p>
                        <p>- 命令使用技巧</p>
                        <p>- VIM使用</p>
                        <p>- 软件包管理</p>
                        <p>- 用户和用户组管理</p>
                        <p>- 服务和进程</p>
                        <p>- 使用Spring管理事务</p>
                        <p>- Spring MVC的高级技术</p>
                        <p>- 使用NoSQL数据库</p>
                        <p>- 基本网络设置</p>
                    </div>
                </li>
                <li>
                    <h2><em>03</em><i>搭建tomcat环境</i></h2>
                    <div class="con_list">
                        <p>- 在linux下搭建tomcat和MySQL服务器</p>
                    </div>
                </li>
                <li>
                    <h2><em>04</em><i>MySQL高级</i></h2>
                    <div class="con_list">
                        <p>- ACID和MySQL的实现原理</p>
                        <p>- SQL优化技巧</p>
                        <p>- MySQL主从</p>
                        <p>- MySQL分区</p>
                        <p>- Explain分析</p>
                    </div>
                </li>
                <li>
                    <h2><em>05</em><i>memcached</i></h2>
                    <div class="con_list">
                        <p>- MySQL引擎</p>
                        <p>- memcached优势</p>
                        <p>- memcached与Java配使用用</p>
                        <p>- memcached分布式处理</p>
                    </div>
                </li>
                <li>
                    <h2><em>06</em><i>Redis、MongoDB（二选一）</i></h2>
                    <div class="con_list">
                        <p>- redis安装</p>
                        <p>- redis数据类型</p>
                        <p>- redis操作</p>
                        <p>- java操作redis</p>
                        <p>- redis写个带分页好友关系处理系统</p>
                        <p>- Linux平台安装MongDB</p>
                        <p>- MongDB插入、更新、删除、查询文档、MongoDB条件操作符</p>
                        <p>- MongoDB排序、索引、聚合、复制、分片</p>
                        <p>- MongoDB与java、MongoDB数据库引用</p>
                        <p>- java写一个MongoDB的操作</p>
                    </div>
                </li>
                <li>
                    <h2><em>07</em><i>elasticsearch</i></h2>
                    <div class="con_list">
                        <p>- 为什么使用全文索引</p>
                        <p>- elasticsearch与solr的对对</p>
                        <p>- 实时索引</p>
                        <p>- 分布式elasticsearch</p>
                        <p>- 写一个自己的搜索引擎</p>
                    </div>
                </li>
                <li>
                    <h2><em>08</em><i>cobar</i></h2>
                    <div class="con_list">
                        <p>- MyCat介绍</p>
                        <p>- 蔻丁选择阿里巴巴的cobar优势</p>
                        <p>- 其他的数据库中间件</p>
                        <p>- 配置与自动分表</p>
                    </div>
                </li>
                <li>
                    <h2><em>09</em><i>Quartz</i></h2>
                    <div class="con_list">
                        <p>- 作业调度的应用场景</p>
                        <p>- 调度器</p>
                        <p>- 临听器和插件</p>
                        <p>- 集群Quartz应用</p>
                    </div>
                </li>
                <li>
                    <h2><em>10</em><i>nginx反向代理和负载均衡</i></h2>
                    <div class="con_list">
                        <p>- nginx服务器的优势</p>
                        <p>- nginx服务器配置</p>
                        <p>- 什么是反向代理</p>
                        <p>- 什么是负载均衡</p>
                        <p>- 负载均衡算法</p>
                        <p>- 构建数十台服务器的负载均衡环境</p>
                    </div>
                </li>
                <li>
                    <h2><em>11</em><i>SSL证书配置</i></h2>
                    <div class="con_list">
                        <p>- 为什么使用SSL证书</p>
                        <p>- RSA算法、DES算法</p>
                        <p>- Let's Encrypt证书申请</p>
                        <p>- 证书续期</p>
                    </div>
                </li>
                <li>
                    <h2><em>12</em><i>keepalived双活</i></h2>
                    <div class="con_list">
                        <p>- 不间断服务的重要性</p>
                        <p>- keepalived原理</p>
                        <p>- OSI七层模型和TCP/IP四层模型</p>
                        <p>- 配置keepalived服务</p>
                    </div>
                </li>
                <li>
                    <h2><em>13</em><i>Haproxy、LVS、nignx（三选一）</i></h2>
                    <div class="con_list">
                        <p>- HAProxy提供高可用性、负载均衡以及基于TCP和HTTP应用的代理，支持虚拟主机，它是免费、快速并且可靠的一种解决方案。HAProxy特别适用于那些负载特大的web站点，这些站点通常又需要会话保持或七层处理。HAProxy运行在当前的硬件上，完全可以支持数以万计的并发连接。并且它的运行模式使得它可以很简单安全的整合进您当前的架构中， 同时可以保护你的web服务器不被暴露到网络上。</p>
                    </div>
                </li>
                <li>
                    <h2><em>14</em><i>Rpc和Dobbo</i></h2>
                    <div class="con_list">
                        <p>- 分布式服务框架简介</p>
                        <p>- Dubbo主要核心部件</p>
                        <p>- Dubbo-RPC基本功能</p>
                        <p>- Dubbo-高级功能</p>
                        <p>- 远程方法调用</p>
                        <p>- 软负载均衡及容错机制</p>
                        <p>- linux 上 Dubbo 的部署</p>
                    </div>
                </li>
                <li>
                    <h2><em>15</em><i>ActiveMQ队列</i></h2>
                    <div class="con_list">
                        <p>- 队列应用场景</p>
                        <p>- 常用的队列服务器</p>
                        <p>- 队列服务器的架设</p>
                        <p>- 压力测试</p>
                        <p>- Java中使用队列服务器</p>
                    </div>
                </li>
                <li>
                    <h2><em>16</em><i>Hadoop</i></h2>
                    <div class="con_list">
                        <p>- Hadoop的部署和MapReduce的使用</p>
                    </div>
                </li>
                <li>
                    <h2><em>17</em><i>项目</i></h2>
                    <div class="con_list">
                        <p>- 上亿人并发的抢票系统</p>
                    </div>
                </li>

            </ul>
        </div>
    </div>
</div>
<div class="contain4">
    <div class="base">
        <h2 data-scroll-reveal="enter bottom" title="java学员项目实战-java培训|java开发培训">蔻丁JavaEE学员实战项目<span>非凡年代  大势所趋</span></h2>
        <div class="wrap">
            <div class="fl">
                <div class="con4_con" style="display:block">
                    <div class="con4_base con4_1">
                        <div class="con4_list">
                            <img src="${webRoot}/images/course/1_pic1.jpg" height="400" width="602">
                            <img src="${webRoot}/images/course/1_pic2.jpg" height="400" width="602">
                            <img src="${webRoot}/images/course/1_pic3.jpg" height="400" width="602">
                            <img src="${webRoot}/images/course/1_pic4.jpg" height="400" width="602">
                            <img src="${webRoot}/images/course/1_pic5.jpg" height="400" width="602">
                        </div>
                    </div>
                    <div class="con4_btn">
                        <img src="${webRoot}/images/course/con4_btn1.png" class="con4_btn_l con4_btn_l1">
                        <img src="${webRoot}/images/course/con4_btn.png" width="50" class="con4_btn_r con4_btn_r1">
                    </div>
                </div>
                <div class="con4_con">
                    <div class="con4_base con4_2">
                        <div class="con4_list">
                            <img src="${webRoot}/images/course/2_pic1.jpg" height="400" width="602">
                            <img src="${webRoot}/images/course/2_pic2.jpg" height="400" width="602">
                            <img src="${webRoot}/images/course/2_pic3.jpg" height="400" width="602">
                            <img src="${webRoot}/images/course/2_pic4.jpg" height="400" width="602">
                            <img src="${webRoot}/images/course/2_pic5.jpg" height="400" width="602">
                            <img src="${webRoot}/images/course/2_pic6.jpg" height="400" width="602">
                        </div>
                    </div>
                    <div class="con4_btn">
                        <img src="${webRoot}/images/course/con4_btn1.png" class="con4_btn_l con4_btn_l2">
                        <img src="${webRoot}/images/course/con4_btn.png" width="50" class="con4_btn_r con4_btn_r2">
                    </div>
                </div>
                <div class="con4_con">
                    <div class="con4_base con4_3">
                        <div class="con4_list">
                            <img src="${webRoot}/images/course/3_pic1.jpg" height="400" width="602">
                            <img src="${webRoot}/images/course/3_pic2.jpg" height="400" width="602">
                            <img src="${webRoot}/images/course/3_pic3.jpg" height="400" width="602">
                            <img src="${webRoot}/images/course/3_pic4.jpg" height="400" width="602">
                            <img src="${webRoot}/images/course/3_pic5.jpg" height="400" width="602">
                            <img src="${webRoot}/images/course/3_pic6.jpg" height="400" width="602">
                            <img src="${webRoot}/images/course/3_pic7.jpg" height="400" width="602">
                            <img src="${webRoot}/js/course/3_pic8.jpg" height="400" width="602">
                            <img src="${webRoot}/images/course/3_pic9.jpg" height="400" width="602">
                            <img src="${webRoot}/images/course/3_pic10.jpg" height="400" width="602">
                            <img src="${webRoot}/images/course/3_pic11.jpg" height="400" width="602">
                            <img src="${webRoot}/images/course/3_pic12.jpg" height="400" width="602">
                        </div>
                    </div>
                    <div class="con4_btn">
                        <img src="${webRoot}/images/course/con4_btn1.png" class="con4_btn_l con4_btn_l3">
                        <img src="${webRoot}/images/course/con4_btn.png" width="50" class="con4_btn_r con4_btn_r3">
                    </div>
                </div>
                <div class="con4_con">
                    <div class="con4_base con4_4">
                        <div class="con4_list">
                            <img src="${webRoot}/images/course/4_pic1.jpg" height="400" width="602">
                            <img src="${webRoot}/images/course/4_pic2.jpg" height="400" width="602">
                            <img src="${webRoot}/images/course/4_pic3.jpg" height="400" width="602">
                            <img src="${webRoot}/images/course/4_pic4.jpg" height="400" width="602">
                            <img src="${webRoot}/images/course/4_pic5.jpg" height="400" width="602">
                            <img src="${webRoot}/images/course/4_pic6.jpg" height="400" width="602">
                        </div>
                    </div>
                    <div class="con4_btn">
                        <img src="${webRoot}/images/course/con4_btn1.png" class="con4_btn_l con4_btn_l4">
                        <img src="${webRoot}/images/course/con4_btn.png" width="50" class="con4_btn_r con4_btn_r4">
                    </div>
                </div>
                <div class="con4_con">
                    <div class="con4_base con4_5">
                        <div class="con4_list">
                            <img src="${webRoot}/images/course/5_pic1.jpg" height="400" width="602">
                            <img src="${webRoot}/images/course/5_pic2.jpg" height="400" width="602">
                            <img src="${webRoot}/images/course/5_pic3.jpg" height="400" width="602">
                            <img src="${webRoot}/images/course/5_pic4.jpg" height="400" width="602">
                        </div>
                    </div>
                    <div class="con4_btn">
                        <img src="${webRoot}/images/course/con4_btn1.png" class="con4_btn_l con4_btn_l5">
                        <img src="${webRoot}/images/course/con4_btn.png" width="50" class="con4_btn_r con4_btn_r5">
                    </div>
                </div>
            </div>
            <div class="fr">
                <ul class="fr">
                    <li class="hover">
                        <p>个人网上银行</p>
                        <p>本网站实现了用户存款，取款，汇款以及用户的各种操作入添加，修改，删除，查询等功能，基本满足了个人网上银行系统的功能。普通用户登录可以实现查询账户余额，存款，取款，汇款，水电缴费功能管理员登录可以增删改查用户信息</p>
                    </li>
                    <li>
                        <p>企业宣传项目</p>
                        <p>本网站用于公司形象宣传和介绍，实现了以下功能：1.公司最新动态的展示，动态的管理，动态的查看2.公司商品信息的轮播展示3.公司员工登陆后可以实现站内聊天4.用户可以留言，可以跟帖5.后台管理</p>
                    </li>
                    <li>
                        <p>汽车租赁系统</p>
                        <p>本汽车租赁系统实现了对汽车信息进行入库录入、租赁登记、租赁状态查询、过期提示、入库检查等日常业务需要。</p>
                    </li>
                    <li>
                        <p>网上书城</p>
                        <p>“网上书城”实现了以下功能：普通用户可以通过系统浏览商品信息、进行查询完成商品的查找、进行注册成为会员、浏览及查找商品、添加商品到购物车、查看购物车中商品并进行操作、下订单、浏览自己的商品、查看及修改个人信息，管理员可以添加商品，下载销售榜单，查看并管理订单。</p>
                    </li>
                    <li>
                        <p>在线通讯录</p>
                        <p>在线通讯录：由于纸制或电子形式的通讯录，携带不方便，或容易忘记等方面的缺点，所以要开发一个网络通讯录，方便用户提供使用：用户注册、登录功能,登录后，显示出与当前用户相关的联系人名单,可以添加新联系人,删除联系人根据联系人类型查找联系人信息。</p>
                    </li>
                </ul>
            </div>

        </div>
    </div>
</div>
<div class="con4_js">
    <div class="base">
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
    </div>
</div>
<div class="contain5">
    <div class="base">
        <h2 data-scroll-reveal="enter bottom" title="java工作机会-java培训|java开发培训">应用领域广泛  就业口径宽广<span>OPPORTUNITIES（机会）</span></h2>
        <ul class="con5_list1">
            <li class="hover">
                <span></span><span>社交网站</span>
            </li>
            <li>
                <span></span><span>资讯网站</span>
            </li>
            <li>
                <span></span><span>搜索引擎</span>
            </li>
            <li>
                <span></span><span>在线支付</span>
            </li>
            <li>
                <span></span><span>电商网站</span>
            </li>
            <li>
                <span></span><span>视频网站</span>
            </li>
        </ul>
    </div>
</div>
<div class="contain6">
    <div class="base">
        <h2 data-scroll-reveal="enter bottom">血拼20周  奠基CTO<span>创造奇迹   见证奇迹</span></h2>
        <ul class="con6_list1">
            <li>
                <span></span>
                <span>1-2年</span>
                <span>初级开发工程师转中高级<br />开发工程师转变</span>
                <span >月薪10-15K</span>
            </li>
            <li>
                <span></span>
                <span>2-3年</span>
                <span>从高级开发工程师向其他相<br />
    关层次多元化提升</span>
                <span >月薪15-20K</span>
            </li>
            <li>
                <span></span>
                <span>3-4年</span>
                <span>像技术总监、项目经理转变</span>
                <span>月薪20-30K</span>
            </li>
            <li>
                <span></span>
                <span>5年以上</span>
                <span>公司高层管理、CTO</span>
                <span>月薪30K+</span>
            </li>
        </ul>
        <div class="link_53 layer" data-depth="0.2">
            <a href="http://t.ibangkf.com/i/chat-chushiwei.html?l=chushiwei&page=http%3A%2F%2Flocalhost%3A8181%2Fdemo%2Fcourse%2Fandroid.html&auth_key=1489485930-0-0-e4d4730a00b2bd880471ab3f1e9d98fd" target="_blank">抢先一步</a>
        </div>
    </div>
</div>
<div class="contain7">
    <div class="base">
        <h2 data-scroll-reveal="enter bottom">INNOVATE（创新/改革/革新）<span>编程思想破灭代码搬运工     在蔻丁！做有灵魂的程序员！</span></h2>
        <p>“做开发、做编程这件事一定要有思想，否则只相当于搬砖”</p>
        <p>一个从事Java开发多年的“老司机”如是说， 编程思想，历来是蔻丁的重中之重，不止要教会，还要教好，如何赋予空洞的代码以灵魂，让刻板的字符可以按照某种秩序灵活的在指尖跳跃？ 显而易见，有灵魂的程序员乐在其中，没思想的程序员只是搬运工！</p>
        <p data-scroll-reveal="enter top">一门永远不会过时的语言是</p>
        <p>更迭迅速的时代，JavaEE作为一个异类身处其中，从问世起便立于不败之地，除了这样描述，实在想不出更好的形容词，JavaEE到处都是规范，为整个行业规范大方向，无论行业哪个环节哪个方向快速发展，都将成为JavaEE进步的最佳助力！</p>
        <div class="link_53 layer" data-depth="0.2">
            <a href="http://t.ibangkf.com/i/chat-chushiwei.html?l=chushiwei&page=http%3A%2F%2Flocalhost%3A8181%2Fdemo%2Fcourse%2Fandroid.html&auth_key=1489485930-0-0-e4d4730a00b2bd880471ab3f1e9d98fd" target="_blank">做灵魂程序员</a>
        </div>
    </div>
</div>
<div class="contain8">
    <div class="base">
        <h2 data-scroll-reveal="enter bottom">真的  TA值得每一个有梦想的孩子去选择<span>TO  CHOOSE（选择）</span></h2>
        <div class="link_53 layer" data-depth="0.2">
            <a href="http://t.ibangkf.com/i/chat-chushiwei.html?l=chushiwei&page=http%3A%2F%2Flocalhost%3A8181%2Fdemo%2Fcourse%2Fandroid.html&auth_key=1489485930-0-0-e4d4730a00b2bd880471ab3f1e9d98fd" target="_blank">自己的路</a>
        </div>
        <ul class="con8_list1">
            <li>
                <p>
                    <span></span>
                    <span>0学费入学</span>
                    <span>与百度达成合作，<br/> 蔻丁学员可享受0学费入学专属优惠</span>
                </p>
                <em></em>
            </li>
            <li>
                <p>
                    <span></span>
                    <span>2周免费试听</span>
                    <span>推出“两周免费试听，不满意不缴费”<br/> 政策，让学员了解更真实的蔻丁、<br/> 了解自己是否适合学JavaEE</span>
                </p>
                <em></em>
            </li>
            <li>
                <p>
                    <span></span>
                    <span>签订就业协议</span>
                    <span>签订《就业培训协议》，<br/> 在协议里写出明确薪水</span>
                </p>
                <em></em>
            </li>
            <li>
                <p>
                    <span></span>
                    <span>高成本项目实战</span>
                    <span>紧跟企业需求，投入高教学成本，<br/>让每一名学员都拿得出成熟作品</span>
                </p>
                <em></em>
            </li>
            <li>
                <p>
                    <span></span>
                    <span>就业保障</span>
                    <span>每年至少12场名企双选会<br/>超过5000家企业选择蔻丁学员</span>
                </p>
                <em></em>
            </li>
            <li>
                <p>
                    <span></span>
                    <span>就业服务</span>
                    <span>就业指导课，1对1就业服务<br/>1年就业跟踪，随时提供就业服务</span>
                </p>
                <em></em>
            </li>
            <li>
                <p>
                    <span></span>
                    <span>创业平台</span>
                    <span>毕业学员创业平台资源，人脉就是财<br/>富，在蔻丁很容易找到合伙人，随时接<br/>项目，随时可创业</span>
                </p>
                <em></em>
            </li>
            <li>
                <p>
                    <span></span>
                    <span>360度全方位服务</span>
                    <span>校友联盟会、大型单身party、技术讲<br/>座、人生职业规划，拓宽视野、解决<br/>单身</span>
                </p>
                <em></em>
            </li>
        </ul>
    </div>
</div>
<div class="contain9">
    <img src="${webRoot}/images/course/con9_img1.png" class="img1"><br />
    <img src="${webRoot}/images/course/con9_img2.png" class="img2">
    <div class="link_53 layer" data-depth="0.2">
        <a href="http://t.ibangkf.com/i/chat-chushiwei.html?l=chushiwei&page=http%3A%2F%2Flocalhost%3A8181%2Fdemo%2Fcourse%2Fandroid.html&auth_key=1489485930-0-0-e4d4730a00b2bd880471ab3f1e9d98fd" target="_blank" class="btn2">
            立刻报名
        </a>
        <a href="http://t.ibangkf.com/i/chat-chushiwei.html?l=chushiwei&page=http%3A%2F%2Flocalhost%3A8181%2Fdemo%2Fcourse%2Fandroid.html&auth_key=1489485930-0-0-e4d4730a00b2bd880471ab3f1e9d98fd" target="_blank" class="btn2">
            点击抢座
        </a>
    </div>
</div>
    <div id="footer">
    <#include "../common/footer.ftl">
    </div>
    <script src="${webRoot}/js/course/jquery-1.11.3.min.js"></script>
    <script src="${webRoot}/js/course/jquery.mousewheel.js"></script>
    <script src="${webRoot}/js/course/2015android.js"></script>

    <script type="text/javascript" id="bdshare_js" data="type=slide&img=0&pos=left&uid=636119" ></script>
    <script type="text/javascript" id="bdshell_js"></script>
    <script type="text/javascript">
        var bds_config = { "bdTop": 258 };
        document.getElementById("bdshell_js").src = "http://bdimg.share.baidu.com/static/js/shell_v2.js?t=" + new Date().getHours();
    </script>
    <script type="text/javascript" src="${webRoot}/js/course/e0cf05eacfb94c92a0a3e76d48b6c166.js" charset="UTF-8"></script>

</body>
</html>