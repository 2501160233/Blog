window.onload=function () {

    var swiper = new Swiper('.swiper-container', {
        spaceBetween: 30,
        centeredSlides: true,
        autoplay: {
            delay: 2500,
            disableOnInteraction: false,
        },
        pagination: {
            el: '.swiper-pagination',
            clickable: true,
        },
        navigation: {
            nextEl: '.swiper-button-next',
            prevEl: '.swiper-button-prev',
        },
    });

    //图片的css动画
    $('.news-list img').mouseover(function(){
        $(this).addClass("animated");
        $(this).addClass("pulse");
    }).mouseout(function(){
        $(this).removeClass("animated");
        $(this).removeClass("pulse");
    });

   //点赞
        $(".heart").click(function(){
            console.log('aaaaa');
            $(this).addClass("animated");
            $(this).addClass("heartBeat");
            $(this).css("color","red");
        });
        $(".heart").dblclick(function () {
            $(this).removeClass("animated");
            $(this).removeClass("heartBeat");
            $(this).css("color","cornflowerblue");
        });

};

