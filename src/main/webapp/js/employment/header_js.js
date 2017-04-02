    $(function(){

                if(window.addEventListener){

            window.addEventListener("DOMContentLoaded",load2,false);
        }else{

            window.attachEvent("onload",load2);
        }

        if(window.addEventListener){

            window.addEventListener("DOMContentLoaded",load2,false);
        }else{

            window.attachEvent("onload",load2);
        }

        function load2(){

            var sy_head_center_strong=document.getElementById("sy_head_center_strong");
            var sy_head_center_con=document.getElementById("sy_head_center_con");
            var timer=null;

            sy_head_center_con.onmouseover=sy_head_center_strong.onmouseover=function(){
                clearTimeout(sy_head_center_con.timer);
                sy_head_center_con.style.display="block";
            };

             sy_head_center_con.onmouseout=sy_head_center_strong.onmouseout=function(){

               sy_head_center_con.timer=setTimeout(function(){

                    sy_head_center_con.style.display="none";

                },400);
            };

        }
    });

        /*底部切换*/
        $(function(){
            var $botBtn,$botLi;
            $botBtn=$(".c_bot_lt_hd").find("a");
            $botLi=$(".c_bot_lt ul").find("li");
            $botBtn.first().addClass("active");
            $botLi.first().show();

            $botBtn.each(function(index){
                $(this).mouseover(function(){
                    $(this).addClass("active").siblings().removeClass("active");
                    $botLi.eq(index).show().siblings().hide();

                });
            });


        });


/*nav下拉2015-11-27*/
;(function($){
    var $oList=$(".nav_list1").find("div");
    var $oBtn=$(".nav_list1");
    $oBtn.hover(function(){
        $oList.show();
    },function(){
        $oList.hide();
    });
  })(jQuery);
