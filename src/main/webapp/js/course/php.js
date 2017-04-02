/*所有底部html*/
$(function () {
    $(".nav_right a,.nav li a,.hz_nav a,.sz_nav li a,.sz_nav li a,.chh_iso_bot_nav a").each(function () {
        if ($(this).html() == '技术论坛') {
            $(this).html('学员论坛');
        }
        ;
    })
    $("p.hc_floatleft").html("中国IT职业教育领先品牌-蔲丁教育");
    $("strong.floatLeft").html("中国IT职业教育领先品牌-蔲丁教育");

    /**
     * 保留当前url的参数，追加在页面内所有href中
     */
    var s = location.search.substring(1);
    var as = document.getElementsByTagName('a');
    for (var i = 0; i < as.length; i++) {
        as[i].href = as[i].href + (as[i].href.indexOf('?') == -1 ? '?' : '&') + s;
    }
//底部切换
    $(function () {
        $qf_h = $(window).height()
        var hh = (window.innerHeight - 544) / 2;
        $(".base_fixed").css({"top": hh});
        $(document).scroll(function () {
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
        $(".qf_fix02").click(function () {
            $("body,html").animate({
                scrollTop: 0
            })
        })
    })
    $(function () {
        var $botBtn, $botLi;
        $botBtn = $(".c_bot_lt_hd").find("a");
        $botLi = $(".c_bot_lt ul").find("li");
        $botBtn.first().addClass("active");
        $botLi.first().show();

        $botBtn.each(function (index) {
            $(this).mouseover(function () {
                $(this).addClass("active").siblings().removeClass("active");
                $botLi.eq(index).show().siblings().hide();

            });
        });


    });

    $(document).ready(function () {
        $("table").each(function () {
            if ($("tr:nth-child(1) td", this).length == 7) {
                console.log(222);
                $("tr td:nth-child(5)", this).each(function () {
                    if ($(this).html().length >= 6) {

                        $(this).html($(this).html().substr(0, 2) + "**" + $(this).html().substr(-3, 3))
                    }
                })
                $("tr td:nth-child(1)", this).each(function () {
                    if ($(this).html().length == 2) {
                        $(this).html($(this).html().substr(0, 1) + "*")
                    }
                    if ($(this).html().length > 2) {
                        $(this).html($(this).html().substr(0, 1) + "*" + $(this).html().substr(-1, 1))
                    }
                })

            }
            if ($("tr:nth-child(1) td", this).length == 8) {
                $("tr td:nth-child(5)", this).each(function () {
                    if ($(this).html().length >= 6) {

                        $(this).html($(this).html().substr(0, 2) + "**" + $(this).html().substr(-3, 3))
                    }
                })
                $("tr td:nth-child(1)", this).each(function () {
                    if ($(this).html().length == 2) {
                        $(this).html($(this).html().substr(0, 1) + "*")
                    }
                    if ($(this).html().length > 2) {
                        $(this).html($(this).html().substr(0, 1) + "*" + $(this).html().substr(-1, 1))
                    }
                })

            }
        })
    });
    $(function () {
        ;
        (function ($, window, document, undefined) {
            var Init = function (opt) {
                this.defaults = {
                    "$oWrap": null,
                    "$scrollBox": null,
                    "$firstList": null
                };
                this.settings = $.extend({}, this.defaults, opt);
                this.n = 0;
                this.timer = null;
                this.firstiH = this.settings.$firstList.outerHeight(true);
            };

            Init.prototype = {
                scrollBox: function () {
                    var that = this;
                    doMove();
                    function doMove() {
                        that.settings.$oWrap[that.timer] = setInterval(function () {
                            that.n++;
                            if (that.n > that.firstiH) {
                                that.n = 0;
                                that.settings.$scrollBox.append(that.settings.$scrollBox.find("tr").first());
                            }
                            that.settings.$scrollBox.css("top", -that.n);
                        }, 30);
                    }

                    this.settings.$oWrap.hover(function () {
                        clearInterval(that.settings.$oWrap[that.timer]);
                    }, function () {
                        doMove();
                    });
                }
            };

            $.fn.tableScroll = function (options) {
                var scrollx = new Init(options);
                return scrollx.scrollBox();
            }
        })(jQuery, window, document);

        $(".table_ov").tableScroll({
            "$oWrap": $(".table_ov"),
            "$scrollBox": $(".table_ov").find(".xbgdxx"),
            "$firstList": $(".table_ov").find("tr")
        });
    });

    $(function () {
        $(".nav_right .nav").mouseout(function () {
            $(".nav_right .nav").eq(0).addClass('nav_on').siblings().removeClass('nav_on');
        })
        $(".nav_right span,.class170109").hover(function () {
            $(".class170109").addClass('on');
            $(".nav_right span").addClass('on');
            $(".nav_right .nav").eq(0).removeClass('nav_on');
        }, function () {
            $(".class170109").removeClass('on');
            $(".nav_right span").removeClass('on');
            $(".nav_right .nav").eq(0).addClass('nav_on');
        })
        $(".nav_right .nav").each(function (nav_index) {
            $(this).mouseover(function () {
                $(this).addClass('nav_on').siblings().removeClass('nav_on');
            })
        })
    })
})