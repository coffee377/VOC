/**
 * Created by cheng on 2015/11/20.
 */
/*banner图片切换封装*/
$(function(){
    var nav_h=$(".nav_fixed").offset().top;
    console.log(nav_h);
    $(window).scroll(function() {
       if($(document).scrollTop()>nav_h+20){
      $(".nav_fixed").css({"position":"fixed","top":-"20","zIndex":1000,"paddingBottom":0});
    }else{
     $(".nav_fixed").css({"position":"static"});
    }
    })
    var $a_banner_pic=$(".a_banner_pic");
    $a_prev=$a_banner_pic.find(".a_prev"),
        $a_next=$a_banner_pic.find(".a_next"),
        $aLi=$(".a_banner_pic").find("li"),
        $a_change_btn=$(".a_change_btn"),
        iLen=$aLi.length,
        timer=null,
        t="",
        arr=[],
        n=0;

    $aLi.each(function(index){
        t+='<a href="javascript:void(0);"><i></i></a>';
    });

    $a_change_btn.html(t);   //生成按钮

    var $a_change_a=$a_change_btn.find("a");

    $a_change_a.first().addClass("btn_active");

    $a_change_a.each(function(index){

        $(this).on("click",function(){
            n=index;
            bannerChange();
        })

    });

    doMove();
    function doMove(){
        $a_banner_pic.timer=setInterval(picChange,6000);
    }
    function picChange(){
        $a_next.trigger("click");
    }
    $a_next.on("click",function(){
        n++;
        bannerChange();
    });

    $a_prev.on("click",function(){
        n--;
        if(n<0) n=iLen-1;
        bannerChange();

    });
    function bannerChange(){
        clearInterval($a_banner_pic.timer);
        $aLi.eq(0).stop().animate({opacity:1},900).show();
        $aLi.eq(n%iLen).stop().animate({opacity:1},900).show();
        $aLi.eq(n%iLen).siblings().stop().animate({opacity:0},800,function(){
            $aLi.eq(n%iLen).siblings().hide();
        });
        $a_change_a.eq(n%iLen).addClass("btn_active").siblings().removeClass("btn_active");
        doMove();
    }
});
/*切换封装*/
;(function($,window,document,undefined){
    var Init=function(ele,opt){
        this.$element=ele;
        this.defaults={
            "aBtn":$(".banner_up_left").find("a"),
            "contentList":$(".banner_up_ul2").find("li"),
            "activeClass":"on1",
            "mouseActive":"mouseover",
            "line":false,
            "lineBox":$("#posLine1"),
            "delayTime":0,
            "moveTime":200
        };
        this.settings=$.extend({},this.defaults,opt);
    };

    Init.prototype={
        tab:function(){
            var that=this;
            return  this.settings.aBtn.each(function(index){
                $(this)[that.settings.mouseActive](function(){
                    var that2=this;
                    setTimeout(function(){
                        if(that.settings.line){
                            that.settings.lineBox.stop().animate({"left":that.settings.lineBox.outerWidth(true)*index},that.settings.moveTime);
                        }
                        that.settings.contentList.eq(index).show().siblings().hide();
                        $(that2).addClass(that.settings.activeClass).siblings().removeClass(that.settings.activeClass);
                    },that.settings.delayTime);
                });
            });
        }
    };

    $.fn.Tab=function(options){
        var changeTab=new Init(this,options);
        return changeTab.tab();
    }
})(jQuery,window,document);
$(".banner_up").Tab();

$(".banner_up_left a").on("mouseenter",function(){
  $(".banner_up_ul2 ul").stop().animate({width:110},0)
})
$(".banner_tap_main").on("mouseleave",function(){
  $(".banner_up_left a").removeClass('on1');
  $(".banner_up_ul2 ul").stop().animate({width:0},0)
});
$(".bottom_part1").Tab({"aBtn":$("h6").find("span"),"contentList":$(".bottom_part1 .btn_content").find("p"),"activeClass":"hover","mouseActive":"mouseover","line":true});
$(".kbxx").Tab({"aBtn":$(".kb_tab_title").find("span"),"contentList":$(".kb_tab_nr").find("ul"),"activeClass":"kb_on","mouseActive":"mouseover","line":true});
$(".bottom_part2").Tab({"aBtn":$(".c_bot_lt_hd").find("a"),"contentList":$(".c_bot_lt").find("li"),"activeClass":"active","mouseActive":"mouseover","line":true});
$(".contain3").Tab({"aBtn":$(".kctb").find("span"),"contentList":$(".box").find("div"),"activeClass":"kctb_on","mouseActive":"mouseover","line":true});
/*hot*/
$(function(){
         function aa(){
                    $(".hot_scoll div").find("p").first().appendTo($(".hot_scoll div"));
                    $(".hot_scoll div").css({"top":0});
                 }
         function zidong_zx() {
           $(".hot_scoll div").stop().animate({"top":-35+"px"},800,function(){
            aa();
           });
        }
        a=setInterval(zidong_zx,3000);
        $(".hot_scoll").hover(function(){clearInterval(a)}, function(){a=setInterval(zidong_zx,3000);});
    });
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



;(function($,window,document){
    var $jxjScroll,$jxjScrollUl,$jxjScrollLi,iH,timer,moveTime,delayTime;
    $jxjScroll=$(".scrollWrap15");
    $jxjScrollUl=$jxjScroll.find("table");
    $jxjScrollLi=$jxjScroll.find("tbody .fontColorRed");
    iH=$jxjScrollLi.first().outerHeight(true);
    moveTime=800;
    delayTime=3400;

    scrollTop();
    function scrollTop(){
        $jxjScroll.timer=setInterval(function(){
            $jxjScrollUl.find("tbody .fontColorRed").first().animate({"opacity":0},moveTime);
            $jxjScrollUl.stop().animate({"top":-iH},moveTime,function(){
                $jxjScrollUl.find("tbody .fontColorRed").first().appendTo($jxjScrollUl).css("opacity",1);
                $jxjScrollUl.css("top",0);
            });
        },delayTime);
    }
})(jQuery,window,document);//图片切换封装
;(function($,window,document,undefined){
    var Init=function(opt){
        this.defaults={
            "$oWrap":null,
            "$moveBox":null,
            "$moveList":null,
            "$smallBtnWrap":null,
            "smallBtnActive":null,
            "$btnPrev":null,
            "$btnNext":null,
            "delayTime":4000,
            "setTime":false,
            "smallBtn":false,
            "moveTime":800
        };

        this.settings= $.extend({},this.defaults,opt);
        this.iTrue=true;
        this.listLen=this.settings.$moveList.length;
        this.firstListWidth=this.settings.$moveList.outerWidth(true);
        this.settings.$moveBox.width(this.firstListWidth*(this.listLen));

        this.str="";
        this.n=0;
        this.timer=null;

        if(this.settings.smallBtn){
            var strTag=this.str;
            this.settings.$moveList.each(function(index){
                strTag+='<a href="javascript:void(0);"></a>';
            });
            this.settings.$smallBtnWrap.html(strTag);
            this.$smallBtn=this.settings.$smallBtnWrap.find("a");
            this.$smallBtn.first().addClass(this.settings.smallBtnActive);
            this.smallBtnClick();
        }
        if(this.settings.setTime){
            this.setTime();
            this.mouseOver();
        }

        if(this.settings.$btnPrev){
            this.picMove();
        }
    };
    Init.prototype={
        picMove:function(){
            this.btnNext();
            this.btnPrev();
        },
        setTime:function(){
            var that=this;
            this.timer=setInterval(function(){
                that.moveRight();
            },that.settings.delayTime);
        },
        btnPrev:function(){
            var that=this;
            this.settings.$btnPrev.click(function(){
                if(!that.iTrue) return;
                that.iTrue=false;
                that.n--;

                if(that.n<that.listLen-1){
                    that.settings.$moveList.first().css("left",0);
                }
                if(that.n==-1){
                    that.settings.$moveList.last().css("left",-that.listLen*that.firstListWidth);
                }
                if(that.n==-2){
                    that.n=that.listLen-2;
                    that.settings.$moveList.last().css("left",0);
                    that.settings.$moveBox.css("left",-that.firstListWidth*(that.listLen-1));
                }
                that.base();
            });
        },
        btnNext:function(){
            var that=this;
            this.settings.$btnNext.click(function(){
                if(!that.iTrue) return;
                that.iTrue=false;
                that.moveRight();
            });
        },
        smallBtnClick:function(){
            var that=this;
            this.$smallBtn.each(function(index){
                $(this).mouseover(function(){
                    that.settings.$moveList.first().css("left",0);
                    that.settings.$moveList.last().css("left",0);
                    that.settings.$moveBox.css("left",-(that.n+that.listLen)%that.listLen*that.firstListWidth);
                    if((that.n+that.listLen)%that.listLen==index) return;
                    that.n=index;
                    that.base();
                });
            });
        },
        moveRight:function(){
            this.n++;
            if(this.n>0){
                this.settings.$moveList.last().css("left",0);
            }
            if(this.n==this.listLen){
                this.settings.$moveList.first().css("left",this.listLen*this.firstListWidth);
            }
            if(this.n==this.listLen+1){
                this.n=1;
                this.settings.$moveBox.css("left",0);
                this.settings.$moveList.first().css("left",0);
            }
            this.base();
        },
        mouseOver:function(){

            if(this.settings.$btnPrev){
                this.clearTime(this.settings.$btnPrev);
                this.clearTime(this.settings.$btnNext);
            }
            if(this.settings.smallBtn){
                this.clearTime(this.$smallBtn);
            }
        },
        clearTime:function(obj){
            var that=this;
            obj.hover(function(){
                clearInterval(that.timer);
            },function(){
                that.setTime();
            });
        },
        base:function(){
            var that=this;
            this.settings.$moveBox.stop().animate({"left":-this.n*this.firstListWidth},this.settings.moveTime,
                "easeInOutQuint",function(){
                that.iTrue=true;
            });
            if(this.settings.smallBtn){
                this.$smallBtn.eq((this.n+this.listLen)%this.listLen).addClass(this.settings.smallBtnActive).siblings().removeClass(this.settings.smallBtnActive);
            }
        }
    };
    $.fn.picScroll=function(options){
        var movePic1=new Init(options);
        return movePic1;
    };
})(jQuery,window,document);

/*就业锋云榜*/
$(".contain5").picScroll({
    "$oWrap":$(".contain5"),
    "$moveBox":$(".contain5").find(".inn_box"),
    "$moveList":$(".contain5").find("ul"),
    "$btnPrev":$(".inn_prev"),
    "$btnNext":$(".inn_next"),
    "setTime":true,
    "delayTime":5000,
    "moveTime":1000
});
$("#fl").picScroll({
    "$oWrap":$("#fl"),
    "$moveBox":$("#fl").find("ul"),
    "$moveList":$("#fl").find("li"),
    "$btnPrev":$(".fl_btn_prev"),
    "$btnNext":$(".fl_btn_next"),
    "setTime":true,
    "delayTime":3000,
    "moveTime":1000
});
$("#fr").picScroll({
    "$oWrap":$("#fr"),
    "$moveBox":$("#fr").find("ul"),
    "$moveList":$("#fr").find("li"),
    "$btnPrev":$(".fr_btn_prev"),
    "$btnNext":$(".fr_btn_next"),
    "setTime":true,
    "moveTime":1000
});
$(".sxh_lunbo").picScroll({
    "$oWrap":$(".sxh_lunbo"),
    "$moveBox":$(".sxh_lunbo").find(".sxh_lunbo_list"),
    "$moveList":$(".sxh_lunbo").find("a"),
    "$smallBtnWrap":$(".jxj_btn"),
    "smallBtnActive":"sxh_on",
    "smallBtn":true,
    "setTime":true,
    "moveTime":800
});
/*底部滚动*/
$(function(){
         function cc(){
                    $(".pic_wrap ul").find("li").first().appendTo($(".pic_wrap ul"));
                    $(".pic_wrap ul").css({"left":0});
                 }
         function zidong_zx() {
           $(".pic_wrap ul").stop().animate({"left":-244+"px"},500,function(){
            cc();
           });
        }
        c=setInterval(zidong_zx,2000);
        $(".pic_wrap").hover(function(){clearInterval(c)}, function(){c=setInterval(zidong_zx,2000);});
    });

/*鼠标移入清除定时器*/
function objHover(obj,fn,wrapObj){
    obj.hover(function(){
        clearInterval(wrapObj.timer);
    },function(){
        fn();
    });
}
 //学员感言
// $(function(){
//     $("#owl-demo").owlCarousel({items:4,navigation:!0,navigationText:["‹","›"],autoPlay:4E3,stopOnHover:!0,itemsDesktop:[1120,3],loop:!0})});
/*运动效果*/
jQuery.extend(jQuery.easing,{
    easeInOutQuint: function (x, t, b, c, d) {
        if ((t/=d/2) < 1) return c/2*t*t*t*t*t + b;
        return c/2*((t-=2)*t*t*t*t + 2) + b;
    }
});
$(function(){
    $(".tab_title table tr td:nth-child(5)").each(function(){
        if($(this).html().length>=6){
            $(this).html($(this).html().substr(0,2)+"**"+$(this).html().substr(-3,3))
        }
    })
    $(".tab_title table tr td:nth-child(1)").each(function(){
        if($(this).html().length==2){
            $(this).html($(this).html().substr(0,1)+"*")
        }
        if($(this).html().length>2){
            $(this).html($(this).html().substr(0,1)+"*"+$(this).html().substr(-1,1))
        }
    })
    $(".student1123 li").on("click",function(){
            var student_num=$(this).attr("num");
            var s_index=$(this).index();
            $(".con7_m_l div").eq(s_index).show().siblings().hide();
            $(this).addClass('active').siblings().removeClass('active');
            $(".con7_v").html('<embed src="http://static.video.qq.com/TPout.swf?vid='+student_num+'&auto=0" allowfullscreen="true" quality="high" width="622" height="368" align="middle" allowscriptaccess="always" type="application/x-shockwave-flash">')
        })
})
$(document).ready(function(){
    var i=0;
    $(".nextbtn").on("click",function(){
        i++;
        if(i>=$(".zuopin ul").length){
            i=0;
        }
        move();

    })
    $(".prevbtn").on("click",function(){
        --i;
        if(i<0){
            i=$(".zuopin ul").length-1;
        }
        move();

    })
    function move(){
        $(".zuopin").animate({left:-i*1126+'px'},500)
    }
})

