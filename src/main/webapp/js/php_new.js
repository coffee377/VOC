/*所有底部html*/
$(function() {
    $(".nav_right a,.c_footer_nav a,.sz_nav li a").each(function(){
        if($(this).html()=='技术论坛'){
           $(this).html('学员论坛');
       };
    })
    $("p.hc_floatleft").html("中国IT职业教育领先品牌-蔲丁教育");
    $("strong.floatLeft").html("中国IT职业教育领先品牌-蔲丁教育");
    $(".nav_main .nav_fixed").append('<div class="class170109">'+
                '<div class="basebase">'+
                 '<div class="base clear">'+
                     '<a href="http://www.mobiletrain.org/page/android.html" target="_blank">'+
                          '<img src="http://www.mobiletrain.org/images/index161222/ad_ico.png" width="63" height="73" />'+
                          '<u>Android</u>'+
                     '</a>'+
                     '<a href="http://www.mobiletrain.org/page/html5.html" target="_blank">'+
                          '<img src="http://www.mobiletrain.org/images/index161222/h5_ico.png" width="63" height="73" />'+
                          '<u>HTML5</u>'+
                     '</a>'+
                     '<a href="http://www.mobiletrain.org/page/ui.html" target="_blank">'+
                          '<img src="http://www.mobiletrain.org/images/index161222/ui_ico.png" width="63" height="73" />'+
                          '<u>UI</u>'+
                     '</a>'+
                     '<a href="http://www.mobiletrain.org/page/php/" target="_blank">'+
                          '<img src="http://www.mobiletrain.org/images/index161222/php_ico.png" width="63" height="73" />'+
                          '<u>PHP</u>'+
                     '</a>'+
                     '<a href="http://www.mobiletrain.org/java/" target="_blank">'+
                          '<img src="http://www.mobiletrain.org/images/index161222/java_ico.png" width="63" height="73" />'+
                          '<u>Java</u>'+
                     '</a>'+
                     '<a href="http://www.mobiletrain.org/big_data/" target="_blank">'+
                          '<img src="http://www.mobiletrain.org/images/index161222/big_ico.png" width="63" height="73" />'+
                          '<u>大数据开发</u>'+
                     '</a>'+
                     '<a href="http://www.mobiletrain.org/vr/" target="_blank">'+
                          '<img src="http://www.mobiletrain.org/images/index161222/vr_ico.png" width="63" height="73" />'+
                          '<u>VR/AR</u>'+
                     '</a>'+
                     '<a href="http://www.mobiletrain.org/page/python/" target="_blank">'+
                          '<img src="http://www.mobiletrain.org/images/index161222/python_ico.png" width="63" height="73" />'+
                          '<u>Python</u>'+
                     '</a>'+
                     '<a href="http://www.mobiletrain.org/page/ios.html" target="_blank">'+
                          '<img src="http://www.mobiletrain.org/images/index161222/ios_ico.png" width="63" height="73" />'+
                          '<u>iOS</u>'+
                     '</a>'+
                     '<a href="http://www.mobiletrain.org/shixun/index.html" target="_blank">'+
                          '<img src="http://www.mobiletrain.org/images/index161222/sx_ico.png" width="63" height="73" />'+
                          '<u>实训课程</u>'+
                     '</a>'+
                 '</div>'+
                '</div>'+
            '</div>')
$(".sy_top i.call").prepend('<img class="me" src="http://www.mobiletrain.org/images/index/me.png" width="268" height="23" style="position:absolute;left:-153px;top:46px;z-index:9999999"/>');

    $(".nav_main .xq i").html('北京（总部）');
    $(".nav_right span.nav p").html('<a href="http://www.mobiletrain.org/page/android.html" target="_blank" class="nav">Android</a>'+
                         '<a href="http://www.mobiletrain.org/page/html5.html" target="_blank" class="nav">HTML5</a>'+
                         '<a href="http://www.mobiletrain.org/page/ui.html" target="_blank" class="nav">UI</a>'+
                         '<a href="http://www.mobiletrain.org/page/php/" target="_blank" class="nav">PHP</a>'+
                         '<a href="http://www.mobiletrain.org/java/" target="_blank" class="nav">JavaEE</a>'+
                         '<a href="http://www.mobiletrain.org/big_data/" target="_blank" class="nav cloud">大数据开发</a>'+
                         '<a href="http://www.mobiletrain.org/vr/" target="_blank" class="nav">VR/AR</a>'+
                         '<a href="http://www.mobiletrain.org/page/ios.html" target="_blank" class="nav">iOS</a>'+
                         '<a href="http://www.mobiletrain.org/shixun/index.html" target="_blank" class="nav">实训课程</a>'+
                         '<a href="http://www.mobiletrain.org/video/" target="_blank" class="nav">精彩视频</a></p>');

})

/**
 * 保留当前url的参数，追加在页面内所有href中
 */
var s = location.search.substring(1);
var as = document.getElementsByTagName('a');
for (var i = 0; i < as.length; i++) {
    as[i].href = as[i].href + (as[i].href.indexOf('?') == -1 ? '?' : '&') + s;
}
//底部切换
$(function() {
    $qf_h = $(window).height()
    var hh=(window.innerHeight-544)/2;
    console.log(hh);
    $(".base_fixed").css({"top":hh});
    $(document).scroll(function() {
        $scrolltop = $(window).scrollTop();
        $(".base_fixed").stop().animate({
            top: $scrolltop + hh
        });
        if ($scrolltop > 10) {
            $(".qf_fix02").fadeIn();
        } else {
            $(".qf_fix02").fadeOut();
        }
        $(".div").stop().animate({
            "top": $scrolltop + 300
        });
    })
    $(".qf_fix02").click(function() {
        $("body,html").animate({
            scrollTop: 0
        })
    })
})
$(function() {
    var $botBtn, $botLi;
    $botBtn = $(".c_bot_lt_hd").find("a");
    $botLi = $(".c_bot_lt ul").find("li");
    $botBtn.first().addClass("active");
    $botLi.first().show();

    $botBtn.each(function(index) {
        $(this).mouseover(function() {
            $(this).addClass("active").siblings().removeClass("active");
            $botLi.eq(index).show().siblings().hide();

        });
    });


});
$(document).ready(function(){
  $("table").each(function(){
      if($("tr:nth-child(1) td",this).length==8){
                $("tr td:nth-child(5)",this).each(function(){
                    if($(this).html().length>=6){
                        $(this).html($(this).html().substr(0,2)+"**"+$(this).html().substr(-3,3))
                    }
                })
                $("tr td:nth-child(1)",this).each(function(){
                    if($(this).html().length==2){
                        $(this).html($(this).html().substr(0,1)+"*")
                    }
                    if($(this).html().length>2){
                        $(this).html($(this).html().substr(0,1)+"*"+$(this).html().substr(-1,1))
                    }
                })

     }
  })
});
$(function(){
    $(".nav_right .nav").mouseout(function(){
       $(".nav_right .nav").eq(0).addClass('nav_on').siblings().removeClass('nav_on');
    })
    $(".nav_right span,.class170109").hover(function(){
       $(".class170109").addClass('on');
       $(".nav_right span").addClass('on');
       $(".nav_right .nav").eq(0).removeClass('nav_on');
    },function(){
       $(".class170109").removeClass('on');
       $(".nav_right span").removeClass('on');
       $(".nav_right .nav").eq(0).addClass('nav_on');
    })
    $(".nav_right .nav").each(function(nav_index){
        $(this).mouseover(function(){
            $(this).addClass('nav_on').siblings().removeClass('nav_on');
        })
    })
})