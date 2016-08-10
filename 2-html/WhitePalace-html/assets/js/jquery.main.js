function pageLoad() {
}
(function ($) {
    $(window).load(function () {
        $('#slider').nivoSlider({
            pauseOnHover: true,
            autoplaySpeed: 3000,
            speed: 1000,
            directionNav: true,
            animSpeed: 1500,
        });

        $('#slidersub').nivoSlider({
            pauseOnHover: true,
            autoplaySpeed: 3000,
            speed: 1000,
            directionNav: false,
            animSpeed: 1500,
        });
    });
    $(function () {
        myfunload();
        mypageload();
       
    });
})(jQuery);
//function===============================================================================================
/*=============================fun=========================================*/
function myfunload() {
	//$('#overlay-scr .thumnail').transition({ opacity: 1, duration: 1000 });
	//setTimeout(function(){
	//    $('#overlay-scr').transition({ y: '-1100px',duration: 3000 });
	//}, 1000);

    $(".panel-a").mobilepanel();
    $("#menu > li").not(".home").clone().appendTo($("#menuMobile"));
    $("#menuMobile input").remove();
    //$("#menuMobile > li > a").append('<span class="fa fa-chevron-circle-right iconar"></span>');
    //$("#menuMobile li li a").append('<span class="fa fa-angle-right iconl"></span>');
    $("#menu li:last-child").addClass("last");
    $("#menu li:first-child").addClass("fisrt");
    //$("#menu > li > a").append('<span class="arrow-down"></span>');
    jQuery('#menu').superfish({
        animation: { height: 'show' },
        delay: 200
    });
    var a = $(".aboutus-bg").attr("data-img");
    $(".aboutus-bg").css({ "background-image": "url(" + a + ")" });
    $(".wrap-aside").clone().appendTo($("#mobileAside"));
    $(".menu-level").menulevel({
        csscurrent: "active",
        cssicon: true,
        cssdown: "fa fa-caret-down",
        cssup: "fa fa-caret-up"
    });
    $(".menu-level li:last-child").addClass("last");
    $(".menu-level .active").find("ul:first").show();
    /*=================Diện============*/
    $('.slider-banner').slick({
        dots: true,
        arrows: false,
        fade: true,
        pauseOnHover: false,
        autoplay: true,
        speed: 500,
        autoplaySpeed: 3000
    });
    setHeigthImageOnTab();
    //handle when switch the tabs
    $('a[data-toggle="tab"]').off('shown.bs.tab');
    $('a[data-toggle="tab"]').on('shown.bs.tab', function () {
        setHeigthImageOnTab();
    });
    $(".fancybox").fancybox({
        wrapCSS: 'pro-popup',
        openEffect: 'elastic',
        closeEffect: 'elastic',
        //width: 400,
        width: 800,
        //minHeight:590,
        helpers: {
            title: {
                type: 'inside'
            }
        }
    });
    if ($('.slider-tree').size() > 0) {
        $('.slider-tree').slick({
            autoplay: true,
            autoplaySpeed: 5000,
            infinite: true,
            dots: false,
            prevArrow: $(".slidePrevo"),
            nextArrow: $(".slideNexto"),
            slidesToShow: 4,
            slidesToScroll: 1,
            responsive: [
              {
                  breakpoint: 992,
                  settings: {
                      slidesToShow: 4,
                      slidesToScroll: 1
                  }
              },
              {
                  breakpoint: 767,
                  settings: {
                      slidesToShow: 3,
                      slidesToScroll: 1
                  }
              },
              {
                  breakpoint: 639,
                  settings: {
                      slidesToShow: 2,
                      slidesToScroll: 1
                  }
              },
              {
                  breakpoint: 390,
                  settings: {
                      slidesToShow: 1,
                      slidesToScroll: 1
                  }
              }
              // You can unslick at a given breakpoint now by adding:
              // settings: "unslick"
              // instead of a settings object
            ]
        }).textHeight({
            activetit: true,
            listcss: [{ cssname: ".news-img" }, { cssname: ".news-name" }],
            wpointb: true,
            //widthpont: 479,
            desbool: false,
            //listpos: [{ cssnamepos: ".description", cssheightnum: "3" }],
            tbrow: false,
            csstr: ".element-item",
            max: true
        });
    }

    if ($('.slider-tree1').size() > 0) {
        $('.slider-tree1').slick({
            autoplay: false,
            //autoplaySpeed: 5000,
            infinite: true,
            dots: false,
            prevArrow: $(".slidePrevo1"),
            nextArrow: $(".slideNexto1"),
            slidesToShow: 1,
            slidesToScroll: 1,
           
        }).textHeight({
            activetit: true,
            listcss: [{ cssname: ".news-img" }, { cssname: ".news-name" }],
            wpointb: true,
            //widthpont: 479,
            desbool: false,
            //listpos: [{ cssnamepos: ".description", cssheightnum: "3" }],
            tbrow: false,
            csstr: ".element-item",
            max: true
        });
    }

   
    /*=================end============*/
    if ($('#isotopelist').size() == 1) {
        var $container = $('#isotopelist').imagesLoaded(function () {
            $container.isotope({
                itemSelector: '.element-item',
                layoutMode: 'fitRows'
            });
        });
    }
    if ($('#silderProduct').size() == 1)
        var silderProduct = $('#silderProduct').imagesLoaded(function () {
            silderProduct.slick({
                autoplay: true,
                autoplaySpeed: 3000,
                //cssEase: 'linear',
                dots: false,
                infinite: true,
                speed: 300,
                slidesToShow: 6,
                slidesToScroll: 1,
                //prevArrow: $(".control-slider .prev"),
                //nextArrow: $(".control-slider .next"),
                arrow: true,
                responsive: [
                    {
                        breakpoint: 1200,
                        settings: {
                            slidesToShow:5
                        }
                    },
                  {
                      breakpoint: 1000,
                      settings: {
                          slidesToShow: 4
                      }
                  },
                  {
                      breakpoint: 650,
                      settings: {
                          slidesToShow: 3
                      }
                  },

                  {
                      breakpoint: 510,
                      settings: {
                          slidesToShow: 2
                      }
                  },
                  {
                      breakpoint: 370,
                      settings: {
                          slidesToShow: 1
                      }
                  }

                  // You can unslick at a given breakpoint now by adding:
                  // settings: "unslick"
                  // instead of a settings object
                ]
            });
           
        });

    if ($('.list-pro').size() > 0) {
        var newstb = $('.list-pro').imagesLoaded(function () {
            newstb.textHeight({
                activetit: true,
                listcss: [{ cssname: ".product-img" }, { cssname: ".product-name" }],
                wpointb: true,
                //widthpont: 479,
                desbool: false,
                listpos: [{ cssnamepos: ".description", cssheightnum: "3" }],
                tbrow: false,
                csstr: ".element-item",
                max: true
            });
        });
    }
    if ($('#silderProjects').size() == 1) {
        var silderProjects = $('#silderProjects').imagesLoaded(function () {
            silderProjects.slick({
                autoplaySpeed: 3000,
                //cssEase: 'linear',
                dots: false,
                infinite: true,
                speed: 300,
                slidesToShow: 4,
                slidesToScroll: 2,
                prevArrow: $(".control-slider .prev"),
                nextArrow: $(".control-slider .next"),
                responsive: [
                  {
                      breakpoint: 1200,
                      settings: {
                          slidesToShow: 4
                      }
                  },
                  {
                      breakpoint: 1199,
                      settings: {
                          slidesToShow: 3
                      }
                  },
                  {
                      breakpoint: 639,
                      settings: {
                          slidesToShow: 2
                      }
                  },
                  {
                      breakpoint: 479,
                      settings: {
                          slidesToShow: 1
                      }
                  }
                  // You can unslick at a given breakpoint now by adding:
                  // settings: "unslick"
                  // instead of a settings object
                ]
            });
            silderProjects.textHeight({
                activetit: true,
                listcss: [{ cssname: ".product-img" }, { cssname: ".product-name" }],
                desbool: false,
                listpos: [{ cssnamepos: ".description", cssheightnum: "3" }],
                tbrow: false,
                csstr: ".element-item",
                max: true
            });
        });
    }

    mymap();



    /*=========================================
                    SCROLL TOP
        ========================================*/
    var header = $('#header');
    var languge = $('.languge');
    var formsearch = $('.form-search');
    var headercontact = $('.header-contact');
    var hotline = $('.hotline');
    var headerfollow = $('.header-follow');
    var logo = $('.logo');
        $(window).scroll(function () {
            if ($(this).scrollTop() > 150) {
                header.addClass("header_scroll");
            } else {
                header.removeClass("header_scroll");
            }
        });
}
/*=========================================================================*/
function mypageload() {
    $(".select").uniform();
    $(".fullbox-img").bgsizebox({
        fimg: true,
        imgcss: "hideo",
        attrname: "data-src"
    });
    myListTb();
}
/*==============================Diện==========================================*/
function setHeigthImageOnTab() {
    if ($('.tab-picbox').size() > 0) {
        var tabpicbox = $('.tab-picbox').imagesLoaded(function () {
            tabpicbox.textHeight({
                activetit: true,
                listcss: [{ cssname: ".pic-img" }, { cssname: ".tab-pic" }, { cssname: ".pic-name" }],
                wpointb: true,
                //widthpont: 479,
                desbool: false,
                //listpos: [{ cssnamepos: ".description", cssheightnum: "3" }],
                tbrow: true,
                csstr: ".element-item",
                max: true
            });
            setTimeout(function () {
                tabpicbox.isotope({
                    itemSelector: '.element-item',
                    layoutMode: 'fitRows'
                });
            }, 100);
        });

    }
}
/*===================end===============*/
$('#menu li').hover(function () {
    $(this).children('.sub-menu').stop(true, false, true).slideToggle(300);
});
/*========================================================================*/
function myListTb() {
    if ($('.isotopelist').size() > 0) {
        var isolist = $('.isotopelist').imagesLoaded(function () {
            isolist.isotope({
                itemSelector: '.element-item',
                layoutMode: 'fitRows'
            });
        });
    }
    if ($('.product-tb').size() > 0) {
        var tbpro;
        var producttb = $('.product-tb').imagesLoaded(function () {
            producttb.textHeight({
                activetit: true,
                listcss: [{ cssname: ".product-img" }, { cssname: ".product-name" }],
                desbool: false,
                listpos: [{ cssnamepos: ".description", cssheightnum: "3" }],
                tbrow: true,
                csstr: ".element-item",
                max: true
            });
        });
    }
}
/*===============================*/
function mymap() {
    mympp();
    var timeout;
    $(window).resize(function () {
        clearTimeout(timeout);
        setTimeout(function () {
            mympp();
        }, 500);
    });
}
function mympp() {
    $('#mapwrap').remove();
    if ($(window).width() > 768) {
        $('#mapshow').append('<div id="mapwrap"><iframe id="iframe" src="map.aspx" frameborder="0" height="100%" width="100%"></iframe></div>');
    }
}
//==================
