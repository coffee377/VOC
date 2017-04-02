
$(function(){
    var url = $('#url').val();
    var h_=$('.video_tab_r').height();
    $('.video_time').height(h_+72);
    if(h_<440){$('.video_time').height(650)}
    $(".video_tab span").each(function(big_index){
        $(this).click(function(){
            var subject = $(this).attr('id');
            setTimeout(location.href =url+'?subject='+subject+'#vtab',60);
        })
    })
    $(".video_time i").each(function(i_index){
        $(this).click(function(){
            var year = $(this).text();
            var subject = $('.video_tab').children("span[class='active']").attr('id');
            setTimeout(location.href = url+'?subject='+subject+'&year='+year+'#vtab',30);
        })
    })
    $(".video_time span").each(function(span_index){
         $(this).click(function(){
             var month_ = $(this).text();
             var month = parseInt(month_);
             var subject = $('.video_tab').children("span[class='active']").attr('id');
             var year = $('.video_time').children('li').children("i[class='active']").text();
             setTimeout(location.href = url+'?subject='+subject+'&year='+year+'&month='+month+'#vtab',30);
         })
    })

})

