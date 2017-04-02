<#--<link rel="stylesheet" href="${webRoot}/css/base_index.css"/>-->
<div class="nav_main">
    <div class="nav_fixed">
        <div class="base clear">
            <div class="nav_left">
                <a href="${webRoot}/index.html" title="蔻丁教育"><img src="${webRoot}/images/head/logo.png" height="70" width="180" style="margin-top: -15px"></a>
                <div class="xq">
                    <i>合肥</i>
                    <div class="xq_tab">
                    </div>
                </div>
            </div>
            <div class="nav_right">
                <a href="${webRoot}/index.html" class="nav_index nav_on nav">首页</a>
                <span class="nav">课程</span>
                <a href="${webRoot}/team/teacher.html" class="nav">讲师团队</a>
                <a href="${webRoot}/employment/carmakers.html"  class="nav" style="color: red">就业喜报</a>
                <a href="${webRoot}/student/testimonials.html"  class="nav">学员感言</a>
                <a href="${webRoot}/about/coding.html"  class="nav">关于蔻丁</a>
            </div>
        </div>
        <div class="class170109">
            <div class="basebase">
                <div class="base clear">
                    <a href="${webRoot}/course/android.html">
                    <img src="${webRoot}/images/head/ad_ico.png" width="63" height="73" />
                    <u>Android</u>
                    </a>
                    <a href="${webRoot}/course/html5.html">
                        <img src="${webRoot}/images/head/h5_ico.png" width="63" height="73" />
                        <u>HTML5</u>
                    </a>
                    <a href="${webRoot}/course/ui.html">
                        <img src="${webRoot}/images/head/ui_ico.png" width="63" height="73" />
                        <u>UI</u>
                    </a>
                    <a href="${webRoot}/course/php.html">
                        <img src="${webRoot}/images/head/php_ico.png" width="63" height="73" />
                        <u>PHP</u>
                    </a>
                    <a href="${webRoot}/course/java.html">
                        <img src="${webRoot}/images/head/java_ico.png" width="63" height="73" />
                        <u>JavaEE</u>
                    </a>
                    <a href="${webRoot}/course/big_data.html">
                        <img src="${webRoot}/images/head/big_ico.png" width="63" height="73" />
                        <u>大数据开发</u>
                    </a>
                </div>
            </div>
        </div>
    </div>
</div>
<script type="text/javascript">
    /*课程*/
    $(function(){
        $(".nav_right .nav").mouseout(function(){
            $(".nav_right .nav").eq(0).addClass('nav_on').siblings().removeClass('nav_on');
        });
        $(".nav_right span,.class170109").hover(function(){
            $(".class170109").addClass('on');
            $(".nav_right span").addClass('on');
            $(".nav_right .nav").eq(0).removeClass('nav_on');
        },function(){
            $(".class170109").removeClass('on');
            $(".nav_right span").removeClass('on');
            $(".nav_right .nav").eq(0).addClass('nav_on');
        });
        $(".nav_right .nav").each(function(nav_index){
            $(this).mouseover(function(){
                $(this).addClass('nav_on').siblings().removeClass('nav_on');
            });
        });
    })

</script>
