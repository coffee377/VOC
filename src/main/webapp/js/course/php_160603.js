/*banner图片切换封装*/
$(function(){

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


/*表格向上滚动*/
;(function($,window,document,undefined){
    var $scrollTable,$scrollWrap, n,iH,timer;
    $scrollWrap=$(".scrollWrap");
    $scrollTable=$scrollWrap.find("table");
    iH=$scrollTable.find("tr").first().outerHeight(true);
    n=0;
    scrollTop();
    function scrollTop(){
        clearInterval($scrollWrap.timer);
        $scrollWrap.timer=setInterval(function(){
            n++;
            if(n>iH){
                n=0;
                $scrollTable.find("tr").first().appendTo($scrollTable);
            }
            $scrollTable.css("top",-n);

        },40);
    }
    objHover($scrollWrap,scrollTop,$scrollWrap)

})(jQuery,window,document);
// 20170209  就业薪资
;(function($,window,document,undefined){
    var $scrollTable,$scrollWrap, n,iH,timer;
    $scrollWrap=$(".scrollWrap1");
    $scrollTable=$scrollWrap.find("table");
    iH=$scrollTable.find("tr").first().outerHeight(true);
    n=0;
    scrollTop();
    function scrollTop(){
        clearInterval($scrollWrap.timer);
        $scrollWrap.timer=setInterval(function(){
            n++;
            if(n>iH){
                n=0;
                $scrollTable.find("tr").first().appendTo($scrollTable);
            }
            $scrollTable.css("top",-n);

        },40);
    }
    objHover($scrollWrap,scrollTop,$scrollWrap)

})(jQuery,window,document);
/*切换封装*/
;(function($,window,document,undefined){
    var Init=function(ele,opt){
        this.$element=ele;
        this.defaults={
            "aBtn":$(".con4_big_tab").find("li"),
            "contentList":$(".con4_big_tab_content1").find(".con4_big_tab_content2"),
            "activeClass":"con4_bigactive",
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
                        that.settings.contentList.eq(index).css("display","block").siblings().css("display","none");
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
/*big tab*/
$(".con4_content").Tab();
/*little tab*/
$(".con4_big_tab_content2").Tab({"aBtn":$(".con4_little_tab").find("span"),"contentList":$(".con4_little_content").find("li"),"activeClass":"con4_active","line":true});
$(function(){
  $(".con4_little_tab").each(function(index1){
      $span=$(".con4_little_tab").eq(index1).find("span");
      $span.each(function(index2){
         $(this).mouseover(function(){
            $ul=$(".con4_little_content").eq(index1);
            $ul.css({"marginTop":index2*82+"px"},0)
         })
      })
  })
})
/*con8 tab*/
;(function($,window,document,undefined){
    var $gxbScrollWrap,$gxbScrollUl,$gxbScrollLi,firstLiWidth,$gxbNext,$gxbPrev,MoveTime,iLen,iTrue;
    $gxbScrollWrap=$(".gxb_scrollWrap");
    $gxbScrollUl=$gxbScrollWrap.find("ul");
    $gxbScrollLi=$gxbScrollWrap.find("li");
    $gxbNext=$(".gxb_next");
    $gxbPrev=$(".gxb_prev");
    iLen=$gxbScrollLi.length;
    firstLiWidth=$gxbScrollLi.first().outerWidth(true);
    MoveTime=400;
    iTrue=true;

    $gxbScrollUl.width(firstLiWidth*iLen);

    $gxbNext.click(function(){
        if(!iTrue) return;
        iTrue=false;
        $gxbScrollUl.stop().animate({"left":-firstLiWidth},MoveTime,function(){
            $gxbScrollUl.find("li").first().appendTo($gxbScrollUl);
            $gxbScrollUl.css("left",0);
            iTrue=true;
        });
    });

    $gxbPrev.click(function(){
        if(!iTrue) return;
        iTrue=false;
        $gxbScrollUl.css("left",-firstLiWidth);
        $gxbScrollUl.find("li").last().prependTo($gxbScrollUl);
        $gxbScrollUl.stop().animate({"left":0},MoveTime,function(){
            iTrue=true;
        });
    });

})(jQuery,window,document)
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
//师资团队
$(function(){

    var arr=[
                {
                    "num":1,
                    "name":"李老师",
                    "description":"蔲丁PHP教学总监，曾任缤纷<br>生活首席技术官（CTO），负责过国内知名<br>上市企业三一重工等企业级PHP培训和信息架构技术<br>咨询，担任国内最大的新媒体内容管理系统——CmsTop<br>产品研发部经理、必趣产品技术顾问、并担任自考在线项目总监，成功收购中国自考网并改版。参与国内使用最多的PHP框架，ThinkPHP的贡献和ThinkPHP视频录制，下载量高达100万；微信公众号开发视频，高达20万的下载量；完成PHP<br>书籍——开源<a href='http://phpbook.phpxy.com/'>《七天学会PHP》</a>；完成MySQL开源<br>书籍——<a href='http://mysql.phpxy.com/'>《三天入门MySQL》</a>；负责微信多<br>用户公众号平台引擎“微易”的开发。<br>"
                },
                {
                    "num":2,
                    "name":"斌哥",
                    "description":"具有2年北斗算法研发经验，2年嵌入式<br>开发经验，2年PHP开发经验，熟悉Linux操作系统<br>以及Linux多线程、网络编程。精通PHP+Mysql编程，精<br>通C、swift服务端、C++等多种开发语言，精通PHP开发各种<br>框架如Laravel、ThinkPHP、CI，精通HTML5、CSS、<br>JavaScript前端开发，拥有3年多教学经验，授课<br>幽默风趣、耐心细致、富有激情，对学员<br>认真负责，能够引导学员自主<br>学习，深受学员好评。<br>"
                },
                {
                    "num":3,
                    "name":"李老师",
                    "description":"曾任上市企业华胜天成集团PHP高级研发工程师，<br>担任PHP研发主管职位。成就：多年的PHP开发经验，<br>主导过光大银行、哈尔滨银行及中国黄金在线商城的研发。<br>多年项目主管与教学经验。现专注PHP研发与教学工作，学生<br>就是责任，学员未来的发展就是我最大的责任。对前端技术（JavaScript、HTML5、CSS3）有深入的研究、乐于<br>分享，讲课幽默风趣，通俗易懂。<br>",
                    "video":""
                },
                {
                    "num":4,
                    "name":"Jerry",
                    "description":"拥有多年嵌入式、PHP开发、C语言、PHP底<br>层、Linux、swift服务端技术、javascript、MySQL<br>和服务器大并发等开发经验和授课经验。善于对知识归纳<br>总结提炼，因此总能将复杂难懂的知识转换成学生容易接受的旋律。经常与学员分享开发经验以及工作中待人处事的方法，不但教会学员知识，更重要的是也教会了学员如何做人做事。<br>学生评价其授课风格严肃而不失幽默，严谨而不失<br>灵活，被学员赋予“杰哥”称号。<br>",
                    "video":""
                }
                ,
                {
                    "num":5,
                    "name":"褚老师",
                    "description":"曾任中国经济网教育产品总监、圈课网创始人。<br />负责过学科网直播产品研发、水晶石社会化学习平台、<br />人人影视架构设计等。成就：主导研发过社交系统、电商系统、<br />直播系统、慕课系统、跨平台系统等。曾主导研发过国内第一个<br />场景式动画教学系统中经幸福学院；完成人人影视千万级业务的架构支撑；创办过国内第一家在线教育科技媒体网站，<br />成为国内在线教育行业第一批推动者。<br>",
                    "video":""
                }

            ];

            var $aTeamSmallPic=$(".aTeamSmallPic"),
                $a_team_name=$(".a_team_name"),
                $a_team_cir1_span=$(".a_team_cir1").find("span"),
                $a_team_pic=$(".a_team_pic"),
                arrN=[],
                t="";

                $.each(arr,function(index){
                    t+='<a href="javascript:void(0);"><img src="http://www.mobiletrain.org/page/php/img/t'+arr[index].num+'.png" height="118" width="118" alt="'+arr[index].name+'"></a>';
                });
                $aTeamSmallPic.html(t);    //生成小图片

            var $aTeamSmallPic_a=$aTeamSmallPic.find("a");
                $aTeamSmallPic_a.eq(0).addClass("aTeamActive");


                //初始化内容

                $a_team_name.html(arr[0].name);    //添加名字
                $a_team_pic.html('<img src="http://www.mobiletrain.org/page/php/img/teacher'+arr[0].num+'.png" height="435" width="330" alt="'+arr[0].name+'">');     //添加乳品
                $a_team_cir1_span.eq(0).html(arr[0].description);  //添加简介
                if(arr[0].video){
                    $a_team_cir1_span.eq(1).html("<i>授课视频：</i>"+arr[0].video);
                }else{
                    $a_team_cir1_span.eq(1).html("");
                }       //添加授课视频
                arrN[0]=0


                $aTeamSmallPic_a.each(function(index){

                    $(this).click(function(){

                        $a_team_name.html(arr[index].name);    //添加名字
                        $a_team_pic.html('<img src="http://www.mobiletrain.org/page/php/img/teacher'+arr[index].num+'.png" height="435" width="330" alt="'+arr[index].name+'">');     //添加乳品
                        $a_team_cir1_span.eq(0).html(arr[index].description);  //添加简介


                        if(arr[index].video){
                            $a_team_cir1_span.eq(1).html("<i>授课视频：</i>"+arr[index].video);
                        }else{
                            $a_team_cir1_span.eq(1).html("");
                        }       //添加授课视频

                        $(this).siblings().removeClass("aTeamActive").end().addClass("aTeamActive");   //鼠标点击状态
                        arrN[0]=index;
                    });


                    // $(this).mouseover(function(){
                    //     $(this).siblings().removeClass("aTeamActive").end().addClass("aTeamActive");
                    // });

                    // $aTeamSmallPic.mouseout(function(){
                    //     $aTeamSmallPic_a.removeClass("aTeamActive");
                    //     $aTeamSmallPic_a.eq(1).addClass("aTeamActive");
                    // });

                });

});
/*运动*/
jQuery.extend(jQuery.easing,{
    easeInOutQuint: function (x, t, b, c, d) {
        if ((t/=d/2) < 1) return c/2*t*t*t*t*t + b;
        return c/2*((t-=2)*t*t*t*t + 2) + b;
    }

});
/*鼠标移入清除定时器*/
function objHover(obj,fn,wrapObj){
    obj.hover(function(){
        clearInterval(wrapObj.timer);
    },function(){
        fn();
    });
}