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

    //导航条
    $('.hidden-xs li').click(function () {
        var f = this;
        $('.hidden-xs li').each(function () {
            this.className = this == f ? 'active' : 'none'
        });
    });



};

