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


function Particle( x, y, radius ) {
    this.init( x, y, radius );
}
Particle.prototype = {

    init: function( x, y, radius ) {

        this.alive = true;

        this.radius = radius || 10;
        this.wander = 0.15;
        this.theta = random( TWO_PI );
        this.drag = 0.92;
        this.color = '#fff';

        this.x = x || 0.0;
        this.y = y || 0.0;

        this.vx = 0.0;
        this.vy = 0.0;
    },

    move: function() {

        this.x += this.vx;
        this.y += this.vy;

        this.vx *= this.drag;
        this.vy *= this.drag;

        this.theta += random( -0.5, 0.5 ) * this.wander;
        this.vx += sin( this.theta ) * 0.1;
        this.vy += cos( this.theta ) * 0.1;

        this.radius *= 0.96;
        this.alive = this.radius > 0.5;
    },

    draw: function( ctx ) {

        ctx.beginPath();
        ctx.arc( this.x, this.y, this.radius, 0, TWO_PI );
        ctx.fillStyle = this.color;
        ctx.fill();
    }
};

// ----------------------------------------
// Example
// ----------------------------------------

var MAX_PARTICLES = 280;
var COLOURS = [ '#69D2E7', '#A7DBD8', '#E0E4CC', '#F38630', '#FA6900', '#FF4E50', '#F9D423' ];

var particles = [];
var pool = [];

var java_home = Sketch.create({
    container: document.getElementById( 'container' )
});

java_home.setup = function() {

    // Set off some initial particles.
    var i, x, y;

    for ( i = 0; i < 20; i++ ) {
        x = ( java_home.width * 0.5 ) + random( -100, 100 );
        y = ( java_home.height * 0.5 ) + random( -100, 100 );
        java_home.spawn( x, y );
    }
};

java_home.spawn = function( x, y ) {

    if ( particles.length >= MAX_PARTICLES )
        pool.push( particles.shift() );

    particle = pool.length ? pool.pop() : new Particle();
    particle.init( x, y, random( 5, 5 ) );

    particle.wander = random( 0.5, 2.0 );
    particle.color = random( COLOURS );
    particle.drag = random( 0.9, 0.99 );

    theta = random( TWO_PI );
    force = random( 2, 8 );

    particle.vx = sin( theta ) * force;
    particle.vy = cos( theta ) * force;

    particles.push( particle );
}

java_home.update = function() {

    var i, particle;

    for ( i = particles.length - 1; i >= 0; i-- ) {

        particle = particles[i];

        if ( particle.alive ) particle.move();
        else pool.push( particles.splice( i, 1 )[0] );
    }
};

java_home.draw = function() {

    java_home.globalCompositeOperation  = 'lighter';

    for ( var i = particles.length - 1; i >= 0; i-- ) {
        particles[i].draw( java_home );
    }
};

java_home.mousemove = function() {

    var particle, theta, force, touch, max, i, j, n;

    for ( i = 0, n = java_home.touches.length; i < n; i++ ) {

        touch = java_home.touches[i], max = random( 1, 4 );
        for ( j = 0; j < max; j++ ) java_home.spawn( touch.x, touch.y );
    }
};
$(function(){
    $('.base').parallax();
    $('.contain9').parallax();
})
/*切换封装*/
;(function($,window,document,undefined){
    var Init=function(ele,opt){
        this.$element=ele;
        this.defaults={
            "aBtn":$(".cont1_tb").find("a"),
            "contentList":$(".con1_tb_content div").find("p"),
            "activeClass":"con1_on1",
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
$(".con1").Tab();
$(".con3").Tab({"aBtn":$(".con3_tab_title").find("li"),"contentList":$(".java_table").find("div"),"activeClass":"con3_on1","mouseActive":"mouseover","line":true});
$(".contain4").Tab({"aBtn":$(".fr").find("li"),"contentList":$(".fl").find(".con4_con"),"activeClass":"hover","mouseActive":"mouseover","line":true});
$(".contain5").Tab({"aBtn":$(".con5_list1").find("li"),"activeClass":"hover","mouseActive":"mouseover","line":true});

//师资团队
$(function(){

    var arr=[
                // {
                //     "num":1,
                //     "name":"尹老师",
                //     "description":"毕业于清华大学，微软全球最具价值<br />专家，微软Tech.Ed大会金牌讲师，清华大学<br />Oracle-java技术俱乐部，清华大学谷歌俱乐部，清华<br />大学微软俱乐部创始人,资深软件架构师，intel软件技术专家，<br />CSDN著名技术专家，具备多年的世界顶尖IT公司微软谷歌的<br />工作经验。具备多年的软件编程经验与讲师授课经历，并在人<br />机交互，教育，信息安全，广告系统开发诸多产品，具备深<br />厚的项目管理经验以及研发经验,拥有两项发明专利。业界<br /> 拥有极高的教学口碑与业界名声，培养学员进入360，<br />乐视，百度等名企。先后巡讲数十所中学与高校，<br />影响数十万人。<br>"
                // },
                {
                    "num":2,
                    "name":"田老师",
                    "description":"6年软件开发经验，2年多教学经验，主<br />持并参与青海翔光物业管理系统、宝鸡XXXX快<br />乐淘书项目的开发，擅长Java基础、精通My SQL及<br />Oracle数据库的使用及调优，对JavaScript有着较长<br />时间的深入研究，并录有网络教学视频，深受网友一<br />致好评!授课耐心细致、条理清晰、喜欢<br />钻研、探索，随和质朴、平易近人!"
                },
                {
                    "num":3,
                    "name":"郑老师",
                    "description":"10年软件开发经验，曾先后担任国际知<br />名IT公司的软件研发、项目规划及策划工作，主<br />持并参与P-Gate, USonline,TPM2009等要求高、时间<br />紧的多个大型欧美项目的开发，积累了丰富的代码编写、<br />调试及系统级别的评估等实战经验。授课有<br />激情、关注每一环节，要求学生在开<br />发过程中注重细节!"
                },
                {
                    "num":4,
                    "name":"黄老师",
                    "description":"有多年的项目实战经验，曾在全通教育，<br />中兴通讯等上市公司担任高级软件工程师，<br />项目经理一职，曾主导的项目有中国移动营销管理平<br />台，全通企业大学学习云平台，高校教学信息化管理云<br />平台，中兴学习云平台等众多项目；现在教育培训<br />方向也有自己的心得体会，深知学习的难度曲线，<br />注重学员学习引导，倡导实战，注重学<br />员理论基本功的沉淀。"
                },
                {
                    "num":5,
                    "name":"王老师",
                    "description":"蔲丁武汉校区教学部培训主管，从业软件<br />行业10多年，有着丰富的前端、后端开发和管理<br />经验。参与过华为和IBM联合项目MEAP的开发，中南<br />财经政法大学的机房管理系统开发、东风雪铁龙多个企业<br />项目开发、龙工、三一重工、安琪等多个大型企业的项目<br />开发，能为学员项目实战提供丰富的经验。5年多的<br />教学经验，授课幽默风趣，善于跟学员沟通，<br />教授过的学员不少成功入职腾讯、百度、<br />阿里巴巴，且均有不错的口碑。"
                },
                {
                    "num":6,
                    "name":"李老师",
                    "description":"蔲丁教学部Java讲师，多年软件开发经验，<br />曾经参与中国人寿保险投保项目(PICC人寿保险)<br />的开发工作，现此项目已经上线。有java培训从业经<br />验，曾从事互联网开发相关课程的教学工作，具有丰富的<br />教学经验，深厚的编程底蕴，有趣的学习氛围，洪亮的声<br />音把您带入移动互联网开发的知识殿堂；授课由浅入深、<br />生动实用，把生活案例引入到学习中，让枯燥的<br />学习变成有趣的事，在愉快的氛围里学<br />到了知识。"
                },
                {
                    "num":7,
                    "name":"王老师",
                    "description":"多年项目实战经验，熟练掌握主流框架Spring<br />和SpringMVC、mybatis的使用、架构、原理，<br />Struts，hibernate架构、原理，jsp/servlet技术、<br />JavaSE核心语法、SQL语句的书写、Oracle和MySQL的使<br />用；熟悉HTML，DIV+CSS前台页面开发技术，javaScript、<br />Ajax及jQuery技术并在实际项目中得到应用。曾主导的<br />企业级项目有：人力资源管理系统、电子商务鲜花商城、<br />银行IC卡web管理系统等。授课思路清晰，多角度剖<br />析开发语言的专业知识，善于通过案例式讲解，<br />培养学生的综合应用与项目整合思维能力。"
                },
                {
                    "num":8,
                    "name":"邢老师",
                    "description":"毕业于清华大学微软全球最具价值专家，<br />微软 Tech.Ed大会金牌讲师清华大学Oracle-java<br />技术俱乐部，清华大学谷歌俱乐部，清华大学微软俱乐部<br />创始人,资深软件架构师，intel软件技术专家，CSDN著名<br />技术专家，具备多年的软件编程经验与讲师授课经历，并在人<br />机交互，教育，信息安全，广告系统开发诸多产品，具备深厚的<br />项目管理经验以及研发经验, 拥有两项发明专利。业界拥有极高<br />的教学口碑与业界名声，曾带领学生微软编程大赛获得大奖。曾<br />经先后巡讲数十所中学与高校，影响数十万人。并指导衡水<br />中学学生获得信息学奥林匹克竞赛金牌1枚，银牌两枚，<br />铜牌一枚，金牌获得保送清华大学计算机系的资格，<br />银牌分别获得上海交通大学与中国科学技<br />术大学的保送资格。"
                },
                {
                    "num":9,
                    "name":"曹老师",
                    "description":"2009~2010在华为从事U2000(统一网络管理系<br />统)平台研发，2011~2015在NEC从事IMS-PTN网络<br />管理系统研发，工作期间主要负责SBI（南向业务接口）、<br />客户端在线升级、时间时钟接口，擅长Servlet编程、RMI、<br />Socket、线程池、多任务并发等等。"
                }

            ];

            var $aTeamSmallPic=$(".aTeamSmallPic"),
                $a_team_name=$(".a_team_name"),
                $a_team_cir1_span=$(".a_team_cir1").find("span"),
                $a_team_pic=$(".a_team_pic"),
                arrN=[],
                t="";

                $.each(arr,function(index){
                    t+='<a href="javascript:void(0);"><img src="http://www.mobiletrain.org/java/img/javaee/t'+arr[index].num+'.png" height="118" width="118" alt="'+arr[index].name+'"></a>';
                });
                $aTeamSmallPic.html(t);    //生成小图片

            var $aTeamSmallPic_a=$aTeamSmallPic.find("a");
                $aTeamSmallPic_a.eq(0).addClass("aTeamActive");


                //初始化内容

                $a_team_name.html(arr[0].name);    //添加名字
                $a_team_pic.html('<img src="http://www.mobiletrain.org/java/img/javaee/teacher'+arr[0].num+'.png" height="435" width="330" alt="'+arr[0].name+'">');     //添加乳品
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
                        $a_team_pic.html('<img src="http://www.mobiletrain.org/java/img/javaee/teacher'+arr[index].num+'.png" height="435" width="330" alt="'+arr[index].name+'">');     //添加乳品
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
$(".con4_1").picScroll({
    "$oWrap":$(".con4_1"),
    "$moveBox":$(".con4_1").find(".con4_list"),
    "$moveList":$(".con4_1").find("img"),
    "$btnPrev":$(".con4_btn_r1"),
    "$btnNext":$(".con4_btn_l1"),
    "setTime":true,
    "delayTime":5000,
    "moveTime":1000
});
$(".con4_2").picScroll({
    "$oWrap":$(".con4_2"),
    "$moveBox":$(".con4_2").find(".con4_list"),
    "$moveList":$(".con4_2").find("img"),
    "$btnPrev":$(".con4_btn_r2"),
    "$btnNext":$(".con4_btn_l2"),
    "setTime":true,
    "delayTime":5000,
    "moveTime":1000
});
$(".con4_3").picScroll({
    "$oWrap":$(".con4_3"),
    "$moveBox":$(".con4_3").find(".con4_list"),
    "$moveList":$(".con4_3").find("img"),
    "$btnPrev":$(".con4_btn_r3"),
    "$btnNext":$(".con4_btn_l3"),
    "setTime":true,
    "delayTime":5000,
    "moveTime":1000
});
$(".con4_4").picScroll({
    "$oWrap":$(".con4_4"),
    "$moveBox":$(".con4_4").find(".con4_list"),
    "$moveList":$(".con4_4").find("img"),
    "$btnPrev":$(".con4_btn_r4"),
    "$btnNext":$(".con4_btn_l4"),
    "setTime":true,
    "delayTime":5000,
    "moveTime":1000
});
$(".con4_5").picScroll({
    "$oWrap":$(".con4_5"),
    "$moveBox":$(".con4_5").find(".con4_list"),
    "$moveList":$(".con4_5").find("img"),
    "$btnPrev":$(".con4_btn_r5"),
    "$btnNext":$(".con4_btn_l5"),
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