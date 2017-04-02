// 导航
$(document).ready(function(){
     var nav_h=$(".nav_fixed").offset().top;
    $(window).scroll(function() {
       if($(document).scrollTop()>nav_h){
          $(".nav_fixed").css({"position":"fixed"});
        }else{
          $(".nav_fixed").css({"position":"static"});
        }
    })

})

$(document).ready(function(){
    var flag = 1;
    $(".nav ul li").click(function(){
        flag = 0;
        $(this).addClass('hover').siblings('li').removeClass('hover')
        var i = $(this).index()-1;
        console.log(i)
        $("html,body").animate({
            scrollTop: $(".section").eq(i).offset().top -'77'},function(){flag = 1;});
    })
     $(window).scroll(function() {
        if(flag){
            if($(document).scrollTop()+$(window).height()/2>$(".section").eq(0).offset().top){
                $(".nav ul li").eq(0).addClass('hover').siblings('li').removeClass('hover')
            }
            if($(document).scrollTop()+$(window).height()/2>$(".section").eq(1).offset().top){
                $(".nav ul li").eq(1).addClass('hover').siblings('li').removeClass('hover')
            }
            if($(document).scrollTop()+$(window).height()/2>$(".section").eq(2).offset().top){
                $(".nav ul li").eq(2).addClass('hover').siblings('li').removeClass('hover')
            }
            if($(document).scrollTop()+$(window).height()/2>$(".section").eq(3).offset().top){
                $(".nav ul li").eq(3).addClass('hover').siblings('li').removeClass('hover')
            }
            if($(document).scrollTop()+$(window).height()/2>$(".section").eq(4).offset().top){
                $(".nav ul li").eq(4).addClass('hover').siblings('li').removeClass('hover')
            }
            if($(document).scrollTop()+$(window).height()/2>$(".section").eq(5).offset().top){
                $(".nav ul li").eq(5).addClass('hover').siblings('li').removeClass('hover')
            }
            if($(document).scrollTop()+$(window).height()/2>$(".section").eq(6).offset().top){
                $(".nav ul li").eq(6).addClass('hover').siblings('li').removeClass('hover')
            }
            if($(document).scrollTop()+$(window).height()/2>$(".section").eq(7).offset().top){
                $(".nav ul li").eq(7).addClass('hover').siblings('li').removeClass('hover')
            }
        }

    })
})
// 开班信息
$(document).ready(function(){
    $(".kb_list1 li").mouseover(function(){
        $(".kb_wrap").find("div").removeClass('active');
        $(this).addClass('hover bg').siblings('li').removeClass('hover bg');
        var i = $(this).index();
        var str = '.chengshi'+i;
        $(".kb_wrap").find(str).addClass('active')
    });
})
/*表格滚动封装*/
;(function($,window,document){
    var $jxjScroll,$jxjScrollUl,$jxjScrollLi,iH,timer,moveTime,delayTime;
    $jxjScroll=$(".scrollWrap");
    $jxjScrollUl=$jxjScroll.find("table");
    $jxjScrollLi=$jxjScroll.find("tbody tr");
    iH=$jxjScrollLi.first().outerHeight(true);
    moveTime=600;
    delayTime=3000;

    scrollTop();
    function scrollTop(){
        $jxjScroll.timer=setInterval(function(){
            $jxjScrollUl.find("tbody tr").first().animate({"opacity":0},moveTime);
            $jxjScrollUl.stop().animate({"top":-iH},moveTime,function(){
                $jxjScrollUl.find("tbody tr").first().appendTo($jxjScrollUl).css("opacity",1);
                $jxjScrollUl.css("top",0);
            });
        },delayTime);
    }
})(jQuery,window,document);
// 加星号
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
// 课程大纲
$(document).ready(function(){
    $(".kc_list1 li").each(function(index){
        $(this).mouseover(function(){
            $(this).addClass('hover').siblings('li').removeClass('hover');
            $(".kc_wrap .kc_jieduan").eq(index).show().siblings('.kc_jieduan').hide();
        })

    })
})
// 图片切换
$(document).ready(function(){
 var i=0;
    $(".nextbtn").on("click",function(){
        clearInterval(timer);
        i++;
        if(i>=$(".hj_list li").length){
            i=0;
        }
        move();

    })
    $(".prevbtn").on("click",function(){
        clearInterval(timer);
        --i;
        if(i<0){
            i=$(".hj_list li").length-1;
        }
        move();

    })
    function move(){
        $(".hj_list").animate({left:-i*842+'px'},500)
    }

    var timer = setInterval(move1,2000)
     function move1(){
        i++;
        if(i>=$(".hj_list li").length){
            i=0;
        }
        $(".hj_list").animate({left:-i*842+'px'},500)
    }
});
















