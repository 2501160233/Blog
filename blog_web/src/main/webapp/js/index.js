window.onload = function () {

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
    $('.news-list img').mouseover(function () {
        $(this).addClass("animated");
        $(this).addClass("pulse");
    }).mouseout(function () {
        $(this).removeClass("animated");
        $(this).removeClass("pulse");
    });


      /*  if(Number($("#hotBlog_ul li span").html())<=3){
            $("#hotBlog_ul li span").css("background-color","green");
            //console.log('<3');
        }
        else{
            $("#hotBlog_ul li span").css("background-color","yellow");
            console.log('>3');
        }
*/

    /*$("#hotBlog_ul li span").css({"background-color":"yellow"});*/
    $(document).ready(function(){
        var span0=$("#hotBlog_ul li").eq(0);
        var span1=$("#hotBlog_ul li").eq(1);
        var span2=$("#hotBlog_ul li").eq(2);
        $(span0).children().eq(0).css("background-color","red");
        $(span1).children().eq(0).css("background-color","#EF8F31");
        $(span2).children().eq(0).css("background-color","#77D549");

    });
};

