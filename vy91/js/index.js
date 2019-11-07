// ·µ»Ø¶¥²¿
$(function(){
    $(window).scroll(function(){
        var scroll = $(window).scrollTop()
        $('.toTop').hide();
        if(scroll>80){
			$('.toTop').fadeIn(500)
        }else{
			$('.toTop').fadeOut(500)
        }
    })
    $(".toTop").click(function(){
        $('html,body').animate({scrollTop:0},500)
    })
});
// ×ó²àµ¼º½À¸
$(function () {
    $('aside.slide-wrapper').on('touchstart', 'li', function (e) {
        $(this).addClass('current').siblings('li').removeClass('current');
    });

    $('a.slide-menu').on('click', function (e) {
        var wh = $('div.wrapperhove' + 'rtree').height();
        // console.log(wh);
        $('div.slide-mask').show();
        $('aside.slide-wrapper').css('height', wh).addClass('moved');
    });

    $('div.slide-mask').on('click', function () {
        $('div.slide-mask').hide();
        $('aside.slide-wrapper').removeClass('moved');
    });
});

// ÏÔ/ÒþËÑË÷¿ò
$(function() {
    function Width() {
        var wh = $(window).width();
        console.log(wh);
        if(wh <= 768){
            var key = true;
            $('.bock .btn').click(function(e) {
                if(key){
                    $('.button.w100').show();
                    key = false;
                    $('.allgames').css('margin-top', '15px');
                    $('.introduce').css('margin-top', '15px');
                }else{
                    $('.button.w100').hide();
                    key = true;
                    $('.allgames').css('margin-top', '65px');
                    $('.introduce').css('margin-top', '65px');
                }
            })
        }else{
            $('.allgames').css('margin-top', '65px');
            $('.introduce').css('margin-top', '65px');
        }
    }
    $(window).resize(function(){
        var url = window.location.href;
        Width();
        window.location.href = url;
    });
    Width();
})

// help
$(function() {
    $('.bock .help').click(function(e) {
        $('.helptext').toggle();
    })
})

