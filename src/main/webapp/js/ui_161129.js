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
/*php1*/
$(".con5_content").picScroll({
    "$oWrap":$(".con5_content"),
    "$moveBox":$(".con5_content").find("ul"),
    "$moveList":$(".con5_content").find("li"),
    "$btnPrev":$(".con5_btn_l"),
    "$btnNext":$(".con5_btn_r"),
    "setTime":true,
    "delayTime":5000,
    "moveTime":1000
});
/*运动效果*/
jQuery.extend(jQuery.easing,{
    easeInOutQuint: function (x, t, b, c, d) {
        if ((t/=d/2) < 1) return c/2*t*t*t*t*t + b;
        return c/2*((t-=2)*t*t*t*t + 2) + b;
    }
});
/*显示隐藏*/
;(function($,window,document,undefined){
    var Init=function(opt){
        this.defaults={
            "$boxList":null,
            "$changeBtn":null,
            "activeClass":"active",
            "mouseEvent":"mouseover"
        };
        this.settings= $.extend({},this.defaults,opt);
        this.show();
    };
    Init.prototype={
        show:function(){
            var that=this;
            this.settings.$changeBtn.each(function(index){
                $(this)[that.settings.mouseEvent](function(){
                    var BtnA=$(this);

                    setTimeout(function(){
                        BtnA.addClass(that.settings.activeClass).siblings().removeClass(that.settings.activeClass);
                        that.settings.$boxList.eq(index).show().siblings().hide();
                    },100);
                });
            });
        },
        addSpan:function(){
            this.Span=document.createElement("span");
        }
    };
    $.fn.boxShow=function(options){
        var boxShowList=new Init(options);
        return boxShowList;
    };
})(jQuery,window,document);

/*薪资切换*/
$(".con6").boxShow({
    "$boxList":$(".con6_content").find(".con6_list"),
    "$changeBtn":$(".con6_tab").find("li")
});

//师资团队
$(function(){

    var arr=[
                {
                    "num":1,
                    "name":"王老师",
                    "description":"蔻丁HTML5教学总监，蔲丁UI教学总监，<br />蔻丁北科校区校长。原中科院计算所专家，曾任<br />北京市高校师资培训中心特邀讲师,多年担任北京市属高校<br />师资培训工作。11年的UI、WEB前端开发教育培训经验，4年HTML5开发经验，深刻理解教学研究、教学管理工作,热爱教育事业。精通HTML5.0及CSS3.0、JavaScript等前端技术，<br />授课通俗易懂，注重学员学习体验，多次获得教学<br />效果方面奖励，崇尚化繁为简，快乐学习，<br />快乐成功的教学方式。<br>"
                },
                {
                    "num":2,
                    "name":"孙老师",
                    "description":"拥有多年网页设计相关专业<br />授课经验，曾为世界500强SK集团，<br />中国联通，中国平安等多家企业进行过网站<br />和软件登录界面设计，及APP界面设计等；从业多<br />年拥有与多家设计公司保持良好的合作关系，在授课过<br />程中会实时提供给学员最新的项目案例，让学员与企业<br />之间完美结合；授课思路清晰，方法简单易懂，以生<br />活中常见的事物为教学内容，给学员营造轻松<br />易懂的学习氛围；注重对学员的能力<br />培养，深受学员好评。<br>"
                },
                {
                    "num":3,
                    "name":"刘老师",
                    "description":"多年的设计从业积累了<br />大量工作经验，从事内容包括：商业<br />广告、电商网站、互联网门户、专题、企业<br />品牌、移动APP等；对互联网、手机移动端、软件行业<br />有执着的追求与探索。精通Photoshop， 授课经验丰富，<br />在多年与众多学员交流中逐渐理解到每个人的设计感是<br />天生的，但是如何合理得当运用这种感觉，则需要<br />通过讲师不断学引导和调整。从而研究出一套<br />独特的教学方法，授课思路清晰，<br />深入浅出，细致透彻。<br>",
                    "video":""
                },
                // {
                //     "num":4,
                //     "name":"汪老师",
                //     "description":"拥有多年设计从教经验，<br />曾于知名企业及院校担任讲师，精通<br />Photoshop、Illustrator等数字图形交互软件，<br />对互联网行业有深入了解，参与过众多商业项目的<br />研发工作，服务过电商、教育等行业。曾为中青旅，<br />歌华有线，腾讯视频，东跃在线等多家知名企业打造<br />项目视觉设计。本着以学生为本的教学理念，<br />因人而异，因材施教，打造多元化人才。<br />轻松愉快的上课氛围中带领大家走<br />进UI设计神奇世界的大门。<br>",
                //     "video":""
                // },
                {
                    "num":5,
                    "name":"魏老师",
                    "description":"精通Ps、Ai、Axure等设计<br />与交互软件。擅长字体/商标/Vi/海报等设计，<br />主要从事网页UI设计、品牌VI设计及推广、平面广告、<br />设计培训等，有丰富的电商设计、WebUI、移动端UI、软件UI、图标设计经验。实战经验丰富，讲课通俗易懂；授课风<br />趣幽默，知识点讲解详细、深入。实战式教学，一切教学从<br />工作出发，对UI设计，网站设计、平面印刷广告 包装设计，<br />VI设计等有着深刻的研究。对待学生认真耐心,授课<br />风格调理清晰，深入浅出。<br>"
                }

            ];

            var $aTeamSmallPic=$(".aTeamSmallPic"),
                $a_team_name=$(".a_team_name"),
                $a_team_cir1_span=$(".a_team_cir1").find("span"),
                $a_team_pic=$(".a_team_pic"),
                arrN=[],
                t="";

                $.each(arr,function(index){
                    t+='<a href="javascript:void(0);"><img src="http://www.mobiletrain.org/page/img/ui_161129/ui_t'+arr[index].num+'.png" height="118" width="118" alt="'+arr[index].name+'"></a>';
                });
                $aTeamSmallPic.html(t);    //生成小图片

            var $aTeamSmallPic_a=$aTeamSmallPic.find("a");
                $aTeamSmallPic_a.eq(0).addClass("aTeamActive");


                //初始化内容

                $a_team_name.html(arr[0].name);    //添加名字
                $a_team_pic.html('<img src="http://www.mobiletrain.org/page/img/ui_161129/ui_b'+arr[0].num+'.png" height="440" width="285" alt="'+arr[1].name+'">');     //添加乳品
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
                        $a_team_pic.html('<img src="http://www.mobiletrain.org/page/img/ui_161129/ui_b'+arr[index].num+'.png" height="440" width="285" alt="'+arr[index].name+'">');     //添加乳品
                        $a_team_cir1_span.eq(0).html(arr[index].description);  //添加简介


                        if(arr[index].video){
                            $a_team_cir1_span.eq(1).html("<i>授课视频：</i>"+arr[index].video);
                        }else{
                            $a_team_cir1_span.eq(1).html("");
                        }       //添加授课视频

                        $(this).siblings().removeClass("aTeamActive").end().addClass("aTeamActive");   //鼠标点击状态
                        arrN[0]=index;
                    });

                });

});
//向上滚动代码2
    var Approval_wDiv=document.getElementById('chh_iso_Approval_ol');
    var Approval_div=document.getElementById('chh_iso_Approval_div');
    var Approval_ol=Approval_div.getElementsByTagName('ol');
    var  Approval_ol_c=Approval_div.offsetHeight-Approval_wDiv.offsetHeight;
    var iso_iTop=0

    if(Approval_ol_c>0){
            Approval_scroll();
    }

    function Approval_scroll(){

        Approval_div.timer=setInterval(function(){

            iso_iTop=iso_iTop-1;
            if(-iso_iTop>=Approval_ol_c){

                iso_iTop=0;
            }
            Approval_div.style.top=iso_iTop+'px';


        },30);
    }


//向上滚动代码2结束
//视频弹出层js
function getByClass(sClass,parent){

    if( document.getElementsByClassName ){

        return  (parent||document).getElementsByClassName(sClass);

    }

    var aEles = (parent||document).getElementsByTagName('*');
    var arr = [];

    for(var i=0; i<aEles.length; i++){

        var aClass = aEles[i].className.split(' ');

        for(var j=0; j<aClass.length; j++){

            if( aClass[j] == sClass ){

                arr.push( aEles[i] );
                break;

            }

        }

    }

    return arr;
}
    function view(){
    return {
        w : document.documentElement.clientWidth,
        h : document.documentElement.clientHeight
    }
}

function scrollH(){
    return document.body.scrollHeight;
}

function offsetH(){
    return document.body.offsetHeight;
}

function scrollY(){

    return document.body.scrollTop || document.documentElement.scrollTop;

}
    var chh_show=document.getElementById('chh_show');
    var chh_iH=Math.max(view().h,scrollH(),offsetH());
    var chh_video_show=document.getElementById('chh_video_show');
    var chh_videoShow=getByClass('chh_videoShow');
    var chh_close=document.getElementById('chh_close');
    var chh_video_arr=[
                                        // 'XMTQwMzQ0MTQyNA',
                                        'XMTU5MzU5NzI1Mg==',
                                        'XMTU5MzU5NzIzNg==',
                                        'XMTU5MzU5NzM1Ng==',
                                        'XMTU5MzU5ODE4MA=='

                                    ]

    chh_show.style.height=chh_iH+'px';

    chh_close.onclick=function(){
        chh_video_show.removeChild(chh_video_show.children[0]);
        chh_show.style.display="none";

    }

    for(var i=0;i<chh_videoShow.length;i++){

        chh_videoShow[i].index=i;
        chh_videoShow[i].onclick=function(){

            showVideo(chh_video_arr[this.index]);
        };
    }

    function showVideo(value){

        var html='<embed allowscriptaccess="sameDomain" src="http://player.youku.com/player.php/sid/'+value+'/v.swf" quality="high" width="580" height="440" align="9" type="application/x-shockwave-flash"></embed>';
        chh_video_show.innerHTML=html;
        chh_show.style.display="block";
    }
//视频弹出层js代码结束