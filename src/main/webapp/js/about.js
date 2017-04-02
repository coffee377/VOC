/**
 * Created by cheng on 2015/11/26.
 */
;(function($){
   var $aBtn,$aContent;
    $aBtn=$(".a_date_tp").find("a");
    $aContent=$(".a_course_wrap").find(".a_course_base");


    $aBtn.first().addClass("active");
    $aContent.hide().first().show();

    $aBtn.each(function(index){
        $(this).on('mouseover',function(){
            $(this).addClass('active').siblings().removeClass('active');
            $aContent.eq(index).show().siblings().hide();
        });

    });
})(jQuery);

/*btn*/
;(function($){
    var $btnWrap,$aBtn;
    $btnWrap=$(".rec_btn");
    $aBtn=$btnWrap.find("a");

    $aBtn.each(function(index){
        if(index<4){
            $aBtn.eq(index).css({'left':118*index+'px','top':0});
        }if(index>3 && index<7){
            $aBtn.eq(index).css({'left':(118*(index%4)+59)+'px','top':'107px'});
        }
    });

})(jQuery);

/*招聘切换*/
;(function($){
    var $aPolygon,$aBtn,$aList;
    $aPolygon=$("#svg").find("polygon");
    $aBtn=$(".rec_btn").find("a");
    $aList=$(".rec_detail").find(".rec_list");

    $aBtn.first().addClass("active");
    $aList.first().show();

    $aPolygon.each(function(index){
        $(this).on("mouseover",function(){
            $aList.eq(index).show().siblings().hide();
            $aBtn.removeClass("active").eq(index).addClass("active");
        });

    });
})(jQuery);



/*返回到指定位置*/
;(function(){
    var $aList,$aBtn,$aWrap,iH;
    $aWrap=$(".a_back");
    $aBtn=$aWrap.find("a");
    $aList=$(".a_section");
    iH=Math.floor($(window).height());

    $(window).resize(function(){
        iH=Math.floor($(window).height());
    });

    $aBtn.each(function(index){
        $(this).on('click',function(){
            $(document).off();
            $("html,body").stop().animate({'scrollTop':$aList.eq(index).offset().top},1000,"easeInOutQuint",function(){
                $(document).scroll(scrollMove);
            });
            $aBtn.removeClass("active").eq(index).addClass("active");
        });
    });
    scrollMove();
    $(document).scroll(scrollMove);
    function scrollMove(){
        var scrollT=$(document).scrollTop(),
            sH=$(window).height()/3+scrollT;

            $aBtn.each(function(index){
                if(index==3){
                    if((sH>$aList.eq(index).offset().top-300)){
                        $aBtn.removeClass("active").eq(index).addClass("active");
                    }
                    return;
                }
                if((sH>$aList.eq(index).offset().top)){
                    $aBtn.removeClass("active").eq(index).addClass("active");
                }
            });
            if(scrollT>200){
                $aWrap.show();
                $aWrap.stop().animate({'opacity':1},300);
            }else{
                $aWrap.stop().animate({'opacity':0},300,function(){
                    $aWrap.hide();
                })
            }
    }

    /*返回到顶部*/
    var $oSpan;
    $oSpan=$aWrap.find("span");
    $oSpan.on('click',function(){
        $("html,body").stop().animate({'scrollTop':0},1000,"easeInOutQuint",function(){
            $(document).scroll(scrollMove);
        });
    });
})(jQuery);

/*证书*/
;(function($){
        var $aImage,$aMask,$border;
        $aImage=$('.a_honor_con').find('img');
        $aMask=$('.mask');
        $border=$(".h_border");

        $aImage.each(function(index){
            $aMask.eq(index).height($aImage.eq(index).height()-14);
            $aMask.eq(index).width($aImage.eq(index).width()-14);


        });

})(jQuery);



jQuery.extend(jQuery.easing,{
    easeInOutQuint: function (x, t, b, c, d) {
        if ((t/=d/2) < 1) return c/2*t*t*t*t*t + b;
        return c/2*((t-=2)*t*t*t*t + 2) + b;
    }

});