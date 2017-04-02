

//头部切换
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


//获奖名单js

$(function(){

    var $a_con5_wrap=$(".a_con5_table2"),
        $a_con5_table=$(".a_con5_table2").find("table"),
        $a_con5_tr=$a_con5_table.find("tr"),
        iH=$a_con5_table.innerHeight(),
        m=0,
        h=iH-$a_con5_wrap.height(),
        iHtr=$a_con5_tr.eq(0).height();

        setInterval(function(){

            if(h<0) return;
            m++;
            var $a_con5_tr=$a_con5_table.find("tr");
            if(m==iHtr){
                var s=$a_con5_tr.eq(0).remove();
                $a_con5_table.append(s);

                $a_con5_table.css("top",0);
                m=0;
            }else{
                $a_con5_table.css("top",-m);
            }


        },30);

});

//八大优势

$(function(){

    var $a_adv_title=$(".a_adv_lt").find("h4"),
        $a_adv_p=$(".a_adv_p"),
        $a_adv_li=$(".a_adv_rg").find("li"),
        arr=[
                {
                    "num":1,
                    "title":"1.&nbsp;&nbsp;中国IT职业教育领先品牌",
                    "content":"专注 Android 、HTML5、UI、PHP、JavaEE、大数据开发、VR/AR、iOS等技术研发培训，坚持“用良心做教育，做真实的自己”的理念",
                    "imgWidth":145,
                    "imgHeight":120
                },
                {
                    "num":2,
                    "title":"2.&nbsp;&nbsp;免费试听优惠政策",
                    "content":"推出“两周免费试听，不满意不缴费”的政策，<br />让学员了解更真实的蔲丁、了解自己是否适合做开发；",
                    "imgWidth":452,
                    "imgHeight":108
                },
                {
                    "num":3,
                    "title":"3.&nbsp;&nbsp;业内学员毕业薪水高",
                    "content":"零学费入学，工作后分期还款，业内学员毕业薪水高，<br />培训就业协议明确标明薪资，平均薪水专科7000、本科8000、硕士8000；",
                    "imgWidth":455,
                    "imgHeight":120
                },
                {
                    "num":4,
                    "title":"4.&nbsp;&nbsp;专业师资阵容 ",
                    "content":"有责任心，懂教学，拥有大型项目经验实战派讲师授课，<br />业内专家及企业技术骨干组成教研团队，准确把握企业需求；",
                    "imgWidth":458,
                    "imgHeight":121
                },
                {
                    "num":5,
                    "title":"5.&nbsp;&nbsp;自主研发QFTS教学保障系统",
                    "content":"自主研发 QFTS 教学保障系统，拥有自主知识产权的开发培训课程体系，<br />讲练学相结合，课程内容紧贴当前前沿实用技术和企业实际需求；",
                    "imgWidth":298,
                    "imgHeight":120
                },
                {
                    "num":6,
                    "title":"6.&nbsp;&nbsp;企业级项目实战训练",
                    "content":"从蔲丁科技及众多合作企业项目中研发出企业级教学项目，<br />让学员参与真实的企业级项目研发，最终让学员获得独立设计开发自己的上线项目的能力；",
                    "imgWidth":342,
                    "imgHeight":119
                },
                {
                    "num":7,
                    "title":"7.&nbsp;&nbsp;保证教学就业质量",
                    "content":"严格、科学、负责的教学就业管理制度，班主任、职业规划师全程跟班，<br />把握每个学员的学习状态，拥有专业的职业素养课和就业指导课；",
                    "imgWidth":509,
                    "imgHeight":120
                },
                {
                    "num":8,
                    "title":"8.&nbsp;&nbsp;就业服务体系",
                    "content":"签订《就业培训协议》，在协议里写出明确薪水，开设就业指导课，<br />每年12场名企双选会，搭建学员与企业面对面沟通平台，为学员提供更好的就业服务。",
                    "imgWidth":378,
                    "imgHeight":120
                }
            ];

            //初始化
            $a_adv_title.html(arr[0].title)
            $a_adv_li.eq(0).addClass("adv_active");
            $a_adv_p.html('<p>'+arr[0].content+'</p><img src="http://www.mobiletrain.org/page/img/android/a_con4_pic'+arr[0].num+'.jpg" width="'+arr[0].imgWidth+'" height="'+arr[0].imgHeight+'" alt="">');


            $a_adv_li.each(function(index){
                $(this).on("mouseenter",function(){
                    $a_adv_title.html(arr[index].title);
                    var s='<p>'+arr[index].content+'</p><img src="http://www.mobiletrain.org/page/img/android/a_con4_pic'+arr[index].num+'.jpg" width="'+arr[index].imgWidth+'" height="'+arr[index].imgHeight+'" alt="">';

                    $a_adv_p.html(s);

                    $a_adv_li.removeClass("adv_active").eq(index).addClass("adv_active");
                });
            });

});
//学员作品
    $(function(){

        var $a_pro_img=$(".a_pro_img"),
            $a_pro_ul=$(".a_pro_img").find("ul"),
            $a_pro_li=$a_pro_img.find("li"),
            $a_pro_a_mask=$a_pro_img.find(".a_mask"),
            speed=100,     //滚动速度
            num=0,
            True=false,
            iLen=$a_pro_li.length,
            iW=iLen*$a_pro_li.eq(0).outerWidth(true),
            scrollW=iW-$(window).width(),    //ul的宽度-屏幕的宽度 =要运动的宽度
            n=scrollW/speed;      //滚动最大次数   100为速度
            $a_pro_ul.width(iW);
            $(window).resize(function(){
                scrollW=iW-$(window).width();
                n=scrollW/speed;
            });

            $a_pro_li.each(function(index){

                $(this).hover(function(){
                    $a_pro_a_mask.eq(index).stop().animate({"opacity":0},50);
                    $(this).stop().animate({"top":-40},300);
                },function(){
                    $a_pro_a_mask.eq(index).stop().animate({"opacity":0.5},50);
                    $(this).stop().animate({"top":0},300);
                });
            });


            $a_pro_ul.mousewheel(function(e,delta){

                if(delta>0){
                    num--;
                    if(num<0){
                        num=0;
                        setTimeout(function(){
                             True=true;
                            return True;
                        },300);

                    }else{
                         True=false;
                    }
                }else{

                    num++;

                    if(num>=n){
                        num=scrollW/speed;
                        setTimeout(function(){
                            True=true;
                            return True;
                        },300);
                    }else{
                         True=false;
                    }
                }
              doMove()
              return True;

            });

           function doMove(){

                $a_pro_ul.stop().animate({"left":-num*speed},300);
            }
    });


//师资团队
$(function(){

    var arr=[
                {
                    "num":5,
                    "name":"张老师",
                    "description":"Android学科总监，9年多移动应用<br>相关工作经验，国内Android开发工程师，<br>深入了解移动应用系统，在网络协议与手机浏览器内核<br>设计方面有丰富的经验。从事工作涉及企业办公、移动通<br>讯等领域，为企业培养众多业务骨干。擅长总结归纳，化繁为<br>简，化难为易，教学方法独特，富有激情，擅以理论结合实际、提高学生项目开发实战的能力。技术领域涉及广泛，曾主导<br>定制手机浏览器内核设计、开发工作；参加移动运营声<br>众多项目设计、实施；参与海外移动运营商移动终端<br>软件项目设计、实施。参与多项企业级移动<br>应用开发工作。<br>"
                },
                {
                    "num":6,
                    "name":"狄老师",
                    "description":"Android学科副总监，7年多教育工作经验，<br>3年多Android研发工作经验。2007年进入中科院西安<br>网络中心从事J2EE教育与研发工作，2009年担任陕西省<br>税务局软件开发培训的《软件架构设计》与《Oracle数据库<br>管理》方面的讲师。自2010年以来，先后参与国家基金委<br>基金项目管理系统、中科院公文平台系统、吉林省白城市<br>工商局巡检移动终端Android手机版，并承担与部队有关<br>的Android平板项目研发的技术主管。<br>"
                },
                {
                    "num":2,
                    "name":"老许",
                    "description":"蔲丁教学部Android讲师，之前从事过数<br>据库脚本、ETL算法、Java EE开发，在移动互联<br>方兴未艾之际，投身Android开发事业，四年Android项<br>目经验，两年多教学经验，程序人生，业余时间喜欢写代码，<br>一款《黑白方块》游戏，深受同学们喜爱，语言幽默，描述知识生动形象，讲述知识点化繁为简，更多的结合实际开发中的例子，让同学们更好的理解并加以运用，具体教学重视编码，<br>是一位更倾向于具体代码实现的一位讲师。<br>",
                    "video":""
                },
                {
                    "num":7,
                    "name":"蒋老师",
                    "description":"蔲丁Android学科高级讲师，丰富的JavaEE<br>项目开发经验和Android开发经验。曾多次到大<br>学中进行Android课程培训，参加学生项目实践课程指<br>导，受到学生广泛的好评。对待工作认真负责，要求严格，<br>善于总结，能够清晰把握上课知识脉络，授课思路清晰。<br>对待学生平易近人，耐心解决学生学习中遇到的各种问题。<br>讲解知识点全面，将授课案例贴切并且结合项目实际需<br>求，实战性强，让学生比较容易的接受知识并且<br>灵活运用。",
                    "video":""
                },
                {
                    "num":8,
                    "name":"王老师",
                    "description":"蔲丁Android高级讲师，多年的Android项目<br>开发经验和丰富的教学经验，掌握Android各种<br>基础开发和高级开发的知识。曾参与一些相关sip网络通<br>话，电话会议以及网络加速等项目的开发工作。在教学<br>工作中认真负责，授课思路清晰，实战性强，善于总结<br>分析，帮助学生掌握更多的技能知识，让学生快速开发<br>出高质量的App。",
                    "video":""
                },
                {
                    "num":9,
                    "name":"谢老师",
                    "description":"安卓讲师, 多年开发经验。在北京绩优堂科<br>技有限公司工作多年，参与APP的研发。其中包<br>括早期的智能教辅、名师辅导、错题笔记，其中参与项<br>目的框架的搭建。早期的名师讲题融资1000多万，集合了<br>各大名校的名师，遍布全国，其中主要是北京和河南的名师，<br>致力打造全国最大的慕课平台。后期公司的替代产品天天向上<br>已完全替代名师讲题。智能教辅是一款结合互联网和线下<br>教育的一款软件，实现了教育和网络的无缝隙连接。此<br>软件可以扫描二维码的形式，把公司的所出书上的题<br>目，以视频讲解的方式给用户展现出来，这样使<br>得我们公司的纸质书籍特卖大卖。",
                    "video":""
                },
                {
                    "num":10,
                    "name":"荣老师",
                    "description":"本人性格开朗，待人真诚，对工作有上进心，<br>有很强的适应能力和团队精神。但是属于慢热型性<br>格。本人喜欢研究一些新技术，经常使用gitHub阅读一<br>些源码，并会写相关Demo进行测试，总结一些经验。曾入职互<br>联网金融公司，了解互联网金融运转模式。在家装O2O<br>公司，对家装O2O的产品模型有一定理解。在企业中看到<br>互联网的未来，对互联网的发展充满信心，入职千<br>锋教育也是因为看到了互联网的人才缺口市场，<br>并且对教育事业充满信心。",
                    "video":""
                }
                // {
                //     "num":11,
                //     "name":"李老师",
                //     "description":"曾先后任职于多家大中型企业，具有丰富的项<br>目开发经验，曾参与完成多省、市的警务综<br>合系统的开发;曾参与某数据通信公司主要业务的设计<br>与开发。2008年担任讲师以来，一直从事java方向的专业<br>培训，精通web开发的各种技术;对Android体系结构<br>有深入的理解。授课特点：注重培养学生的动手能力，自我学<br>习能力,课上风趣幽默，具有亲和力，对学生认真、<br>耐心、负责,知识点深入浅出，结合实际开发中的<br>应用进行讲解。",
                //     "video":""
                // },


            ];

            var $aTeamSmallPic=$(".aTeamSmallPic"),
                $a_team_name=$(".a_team_name"),
                $a_team_cir1_span=$(".a_team_cir1").find("span"),
                $a_team_pic=$(".a_team_pic"),
                arrN=[],
                t="";

                $.each(arr,function(index){
                    t+='<a href="javascript:void(0);"><img src="http://www.mobiletrain.org/page/img/android/aTeamSmallPic'+arr[index].num+'.jpg" height="118" width="118" alt="'+arr[index].name+'"></a>';
                });
                $aTeamSmallPic.html(t);    //生成小图片

            var $aTeamSmallPic_a=$aTeamSmallPic.find("a");
                $aTeamSmallPic_a.eq(0).addClass("aTeamActive");


                //初始化内容

                $a_team_name.html(arr[0].name);    //添加名字
                $a_team_pic.html('<img src="http://www.mobiletrain.org/page/img/android/aTeamPic'+arr[0].num+'.jpg" height="435" width="330" alt="'+arr[0].name+'">');     //添加乳品
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
                        $a_team_pic.html('<img src="http://www.mobiletrain.org/page/img/android/aTeamPic'+arr[index].num+'.jpg" height="435" width="330" alt="'+arr[index].name+'">');     //添加乳品
                        $a_team_cir1_span.eq(0).html(arr[index].description);  //添加简介


                        if(arr[index].video){
                            $a_team_cir1_span.eq(1).html("<i>授课视频：</i>"+arr[index].video);
                        }else{
                            $a_team_cir1_span.eq(1).html("");
                        }       //添加授课视频

                        $(this).addClass("aTeamActive").siblings().removeClass("aTeamActive");   //鼠标点击状态
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


//课程体系
$(function(){
    var $a_con9_btn=$(".a_con9_btn"),
          $a_con9_a=$a_con9_btn.find("a"),
          $a_con9_con=$(".a_con9_con"),
          $a_con9_li=$a_con9_con.find("li");

          $a_con9_a.each(function(index){

                $(this).mouseover(function(){

                    $(this).siblings().removeClass("a_con9_active").end().addClass("a_con9_active");
                    $a_con9_li.eq(index).siblings().css("display","none").end().css("display","block");
                });
          });
});


//学院生活
$(function(){
    var $con12Prev=$(".con12Prev"),
        $con12Next=$(".con12Next"),
        $a_con12_con=$(".a_con12_con"),
        $con12_pic_ul=$(".a_con12_pic_wrap"),
        $a_con12_li=$(".a_con12_page"),
        $con12_circle_span=$(".con12_circle").find("span"),
        $con12_spanPrev=$(".con12_spanPrev"),
        $con12_spanNext=$(".con12_spanNext"),
        $a_con12_title=$(".a_con12_title"),
        arr=[
                '温馨舒适安全的住宿环境+味美价廉卫生的营养美食',
                '连续举办大牌名企双选会+校友联盟交流+开发大牛技术分享',
                '舒适惬意的校区环境&nbsp;&nbsp;顶级教学硬件设施&nbsp;&nbsp;畅享完美学习体验',
                '休闲娱乐有爱的课余生活&nbsp;&nbsp;让学习高效起来&nbsp;&nbsp;让学员快乐起来'
            ],
        iW=$a_con12_li.eq(0).outerWidth(true),
        iLen=$a_con12_li.length,
        iNow=0;

        $con12_pic_ul.width(iLen*iW);


        $a_con12_con.hover(function(){
            $con12Prev.css("opacity",1);
            $con12Next.css("opacity",1);
        },function(){
            $con12Prev.css("opacity",0);
            $con12Next.css("opacity",0);
        });

        $con12Next.on("click",function(){

            iNow++;
            if(iNow==iLen){
                $a_con12_li.eq(0).css("left",iNow*iW);
            }
            if(iNow==iLen+1){
                iNow=1;
                $a_con12_li.eq(0).css("left",0);
                $con12_pic_ul.css("left",0);

            }
            con12Base();
        });

        $con12Prev.on("click",function(){
            iNow--;
            if(iNow==-1){
                $a_con12_li.eq(iLen-1).css("left",-iW*iLen);
            }

            if(iNow==-2){
                iNow=iLen-2;
                $a_con12_li.eq(iLen-1).css("left",0);
                $con12_pic_ul.css("left",-iW*iLen+iW);
            }

            con12Base();
        });

        $con12_spanPrev.on("click",function(){

            $con12Prev.trigger("click");
        });
        $con12_spanNext.on("click",function(){

            $con12Next.trigger("click");
        });

        $con12_circle_span.each(function(index){

            $(this).on("mouseover",function(){

                iNow=index;
                con12Base();
            });
        });

        function con12Base(){
            $a_con12_title.html(arr[(iLen+iNow)%iLen]);
            $con12_pic_ul.stop().animate({"left":-iNow*iW},600);
            $con12_circle_span.removeClass("con12_active").eq((iLen+iNow)%iLen).addClass("con12_active");

        }

});





//校区地图
$(function(){
    var $a_con13_map=$(".a_con13_map"),
        $a_con13_li=$a_con13_map.find("li"),
        $a_con13_icon=$(".a_con13_icon"),
        $a_con13_span=$(".a_con13_icon").find("span"),
        $a_con13_pic=$(".a_con13_pic"),
        $a_con13_ul=$a_con13_map.find("ul"),
        s="",

    /*  $a_con13_title=$a_con13_pic.find("span");*/
        arr=[
            {
                "num":1,
                "name":"北京",
                "left":605,                       //left  top  指箭头的位置
                "top":230,
                "title":"进入北京校区>>",
                "href":"http://www.mobiletrain.org/"
            },
            {
                "num":2,
                "name":"大连",
                "left":672,
                "top":205,
                "title":"进入大连校区>>",
                "href":"http://dl.mobiletrain.org/"
            },
            {
                "num":3,
                "name":"郑州",
                "left":586,
                "top":280,
                "title":"进入郑州校区>>",
                "href":"http://zz.mobiletrain.org/"
            },
            {
                "num":4,
                "name":"上海",
/*                "left":669,
                "top":344,*/
                "left":662,
                "top":315,
                "title":"进入上海校区>>",
                "href":"http://sh.mobiletrain.org/"
            },
            {
                "num":5,
                "name":"武汉",
                "left":596,
                "top":337,
                "title":"进入武汉校区>>",
                "href":"http://wh.mobiletrain.org/"
            },
            {
                "num":6,
                "name":"广州",
                "left":582,
                "top":422,
                "title":"进入广州校区>>",
                "href":"http://gz.mobiletrain.org/"
            },
            {
                "num":7,
                "name":"深圳",
                "left":607,
                "top":415,
                "title":"进入深圳校区>>",
                "href":"http://sz.mobiletrain.org/"
            },
            {
                "num":8,
                "name":"成都",
                "left":485,
                "top":338,
                "title":"进入成都校区>>",
                "href":"http://cd.mobiletrain.org/"
            },
            {
                "num":9,
                "name":"杭州",
                "left":666,
                "top":340,
                "title":"进入杭州校区>>",
                "href":"http://hz.mobiletrain.org/"
            },
            {
                "num":10,
                "name":"青岛",
                "left":655,
                "top":255,
                "title":"进入青岛校区>>",
                "href":"http://qd.mobiletrain.org/"
            },
            {
                "num":11,
                "name":"西安",
                "left":540,
                "top":290,
                "title":"进入西安校区>>",
                "href":"http://xa.mobiletrain.org/"
            }

        ];     /*下次添加只需要添加这几块内容
     ,{
     "num":9,     //图片地址 一定要按顺序来   注意图片命名一定要这样命con13Pic9  这个9表示第几张图片
     "name":"成都",
     "left":475,     //移动箭头水平位置
     "top":338,      //移动箭头垂直位置
     "title":"进入成都校区>>",
     "href":"http://cd.mobiletrain.org/"    //分校链接地址
     }
     */

    $.each(arr,function(index){
        s+='<li>'+arr[index].name+'<em></em></li>';
    })

    $a_con13_ul.html(s);

    var $a_con13_li=$a_con13_ul.find("li");

    $a_con13_li.first().addClass("con13Active");

    //初始化值
    start(0);   //对应所在数组的位置
    function start(m){
        $a_con13_icon.css({"left":arr[m].left,"top":arr[m].top});
        $a_con13_li.eq(m).stop().animate({opacity:0},300,function(){
            $a_con13_span.html(arr[m].name).stop().animate({"opacity":1,"left":30},300);
        });

        $a_con13_pic.html('<img src="http://hz.mobiletrain.org/img/hz/con13Pic'+arr[m].num+'.jpg" height="161" width="209" alt="'+arr[m].name+'"><span>'+arr[m].title+'</span>');
        $a_con13_pic.attr("href",arr[m].href);
    }
    //初始化值结束

    //点击移动内容更换
    $a_con13_li.each(function(index){

        $(this).on("click",function(){
            $a_con13_span.css({"opacity":0,"left":50})     //初始化文字状态

            $(this).stop().animate({opacity:0},300,function(){
                $a_con13_span.html(arr[index].name).stop().animate({"opacity":1,"left":30},300);
            });

            $(this).siblings().stop().animate({opacity:1},300);
            $a_con13_icon.css({"left":arr[index].left,"top":arr[index].top})

            $a_con13_pic.html('<img src="http://hz.mobiletrain.org/img/hz/con13Pic'+arr[index].num+'.jpg" height="161" width="209" alt="'+arr[index].name+'"><span>'+arr[index].title+'</span>');    //图片切换
            $a_con13_pic.attr("href",arr[index].href);

        });

    });
});

//底部返回顶部

$(function(){

    var $a_back=$(".a_back");

    $a_back.on("click",function(){
        $("body,html").stop().animate({"scrollTop":0},1000);
    });

    $(document).scroll(scrollTp);
    function scrollTp(){
        if($(document).scrollTop()<200){
            $a_back.css("display","none");
        }else{
            $a_back.css("display","block");
        }

    }
});

        /*表格滚动封装*/
;(function($,window,document,undefined){
    var Init=function(opt){
        this.defaults={
            "$oWrap":null,
            "$scrollBox":null,
            "$firstList":null
        };
        this.settings= $.extend({},this.defaults,opt);
        this.n=0;
        this.timer=null;
        this.firstiH=this.settings.$firstList.outerHeight(true);
    };

    Init.prototype={
        scrollBox:function(){
            var that=this;
            doMove();
            function doMove(){
                that.settings.$oWrap[that.timer]=setInterval(function(){
                    that.n++;
                    if(that.n>that.firstiH){
                        that.n=0;
                        that.settings.$scrollBox.append(that.settings.$scrollBox.find("tr").first());
                    }
                    that.settings.$scrollBox.css("top",-that.n);
                },30);
            }
            this.settings.$oWrap.hover(function(){
                clearInterval(that.settings.$oWrap[that.timer]);
            },function(){
                doMove();
            });
        }
    };

    $.fn.tableScroll=function(options){
        var scrollx=new Init(options);
        return scrollx.scrollBox();
    }
})(jQuery,window,document);

$(".jyxbCon").tableScroll({
    "$oWrap":$(".jyxbCon"),
    "$scrollBox":$(".jyxbCon").find("table"),
    "$firstList":$(".jyxbCon").find("tr")
});


//返回指定位置

$(function(){

    var $fixedBox=$(".fixedBox"),
        $fixedBox_span=$(".fixedBox_con").find("span");
        $aBack=$(".aBack");

    $fixedBox.hover(function(){
        $(this).stop().animate({"bottom":0},400);
    },function(){
        $(this).stop().animate({"bottom":-70},400);
    });

    $fixedBox_span.each(function(index){

        $(this).on("click",function(){
            $("body,html").stop().animate({"scrollTop":$aBack.eq(index).offset().top},600);

        });

    });

});

