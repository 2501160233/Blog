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
    $('.ani1').mouseover(function(){
        $('.animate1').addClass("animated");
        $('.animate1').addClass("pulse");
    }).mouseout(function(){
        $('.animate1').removeClass("animated");
        $('.animate1').removeClass("pulse");
    });
    $('.ani2').mouseover(function(){
        $('.animate2').addClass("animated");
        $('.animate2').addClass("pulse");
    }).mouseout(function(){
        $('.animate2').removeClass("animated");
        $('.animate2').removeClass("pulse");
    });
    $('.ani3').mouseover(function(){
        $('.animate3').addClass("animated");
        $('.animate3').addClass("pulse");
    }).mouseout(function(){
        $('.animate3').removeClass("animated");
        $('.animate3').removeClass("pulse");
    });
    $('.ani4').mouseover(function(){
        $('.animate4').addClass("animated");
        $('.animate4').addClass("pulse");
    }).mouseout(function(){
        $('.animate4').removeClass("animated");
        $('.animate4').removeClass("pulse");
    });
    //导航条
    $('.hidden-xs li').click(function () {
        var f = this;
        $('.hidden-xs li').each(function () {
            this.className = this == f ? 'active' : 'none'
        });
    });



};

