/*
 * Custom code goes here.
 * A template should always ship with an empty custom.js
 */

jQuery(document).ready(function( $ ) {

    $('#siteloader').fadeOut();
    $('#spin-wrapper').fadeOut();

    $("img.lazyload").lazyload();
    
    var headerHeight = $('#header').height();
    var navHeight = $('#header .nav-full-width').height();
    $(window).scroll(function(){
        if ($(window).scrollTop() > headerHeight) {
            $('.nav-full-width').addClass('fixed-header');
            $('.blockcart').addClass('change');
        }
        else {
            $('.nav-full-width').removeClass('fixed-header');
            $('.blockcart').removeClass('change');
        }
    });
    
    var rtlFlag = $('body').hasClass('lang-rtl') ? true : false;
    
    adjustTopMenu();

	var isMobile = /Android|webOS|iPhone|iPad|iPod|BlackBerry/i.test(navigator.userAgent);
	if(!isMobile) {
	    if($(".parallax").length) {
	        $(".parallax").sitManParallex({  invert: false });
	    };
	} else {
	    $(".parallax").sitManParallex({  invert: true });
	}

    $(window).resize(function() {
    	adjustTopMenu();
    });


    $('#search_widget .search-logo').click(function() {
        $(this).toggleClass('active').parents('#search_widget').find('form').stop(true,true).slideToggle('medium');
    });

    $(document).on('click','.cart-link',function() {
        $(this).siblings('.cart-dropdown').stop(true,true).slideToggle();
    });

    $('#ishicategoryblock-carousel.owl-carousel').owlCarousel({
        loop:true,
        rtl:rtlFlag,
        autoplay:true,
        responsive:{
            0:{
                items:2
            },
            543:{
                items:2
            },
            767:{
                items:3
            },
            991:{
                items:4
            }
        }
    });

    $('#ishitopbanners-carousel.owl-carousel').owlCarousel({
        loop:true,
        rtl:rtlFlag,
        autoplay:true,
        margin: 0,
        responsive:{
            0:{
                items:1
            },
            543:{
                items:1
            },
            767:{
                items:2
            },
            991:{
                items:3
            }
        }
    });

    $('#ishi-product-accessories.owl-carousel').owlCarousel({
        loop:false,
        nav:true,
        rtl:rtlFlag,
        navText: ["<i class='material-icons'></i>","<i class='material-icons'></i>"],
        responsive:{
            0:{
                items:1
            },
            543:{
                items:2
            },
            767:{
                items:2
            },
            991:{
                items:3
            },
            1199:{
                items:4
            }

        }
    });

    $('#smartblog-carousel').owlCarousel({
        loop:true,
        nav:true,
        navText: ["<i class='material-icons'></i>","<i class='material-icons'></i>"],
        autoplay:false, 
        rtl:rtlFlag,
         responsive:{
            0:{
                items:1
            },
            543:{
                items:2
            },
            767:{
                items:2
            },
            991:{
                items:2
            },
            1200:{
                items:3
            }
        }
    });

    $('.qv-carousel').owlCarousel({
        nav:true,
        margin: 15,
        loop: false,
        rewind: true,
        rtl:$('body').hasClass('lang-rtl') ? true : false,
        navText: ["<i class='material-icons'></i>","<i class='material-icons'></i>"],
        responsive:{
            0:{
                items:0
            },
            543:{
                items:4
            },
            767:{
                items:3
            },
            991:{
                items:3
            },
            1100:{
                items:4
            }
        }
    });

    $('#manufacturer-carousel').owlCarousel({
        loop:true,
        nav:false,
        autoplay:true,
        autoplayTimeout:2000,
        rtl:rtlFlag,
        navText: ["<i class='material-icons'></i>","<i class='material-icons'></i>"],
        responsive:{
            0:{
                items:1
            },
            543:{
                items:3
            },
            767:{
                items:4
            },
            991:{
                items:5
            },
            1200:{
                items:6
            }
        }
    });
    
    $('#supplier-carousel').owlCarousel({
        loop:true,
        nav:false,
        autoplay:true,
        autoplayTimeout:2000,
        rtl:rtlFlag,
        navText: ["<i class='material-icons'></i>","<i class='material-icons'></i>"],
        responsive:{
            0:{
                items:1
            },
            543:{
                items:2
            },
            767:{
                items:4
            },
            991:{
                items:6
            }
        }
    });

    $('#ishitestimonials-carousel').owlCarousel({
        loop:true,
        nav:false,
        rewind:true,
        autoplay:true,
        autoplayTimeout:3000,
        rtl:rtlFlag,
        items:1
    });
    $("#ishitestimonials-carousel").find(".owl-item").each(function(i){var t=$(this).find(".testimonial-img").html(),o=".owl-dot:eq("+i+")";$("#ishitestimonials-carousel").find(".owl-dots").find(o).html(t)}); 
    
    $('.timer').countTo({
        speed: 8000,
        refreshInterval: 50,
    });

    $('#header .blockcart .product-container').slimScroll({
      height: $('#header .blockcart .product-container .product').length > 1 ? '240px':'100%'
    });

    $(window).scroll(function() {
        if ($(this).scrollTop() > 500) {
            $('#slidetop').fadeIn(500);
        } else {
            $('#slidetop').fadeOut(500);
        }
    });

    $('#slidetop').click(function(e) {
        e.preventDefault();     
        $('html, body').animate({scrollTop: 0}, 800);
    });

    $(".read_comment").click(function(e) { 
        $('.product-block-information .nav-tabs .nav-item a').removeClass('active');
        $('.product-block-information .nav-tabs .nav-item:nth-child(3)').find('a').addClass('active');
        $('.product-block-information .tab-pane').removeClass('active');
        $('#reviews').addClass('active');
        e.preventDefault();
        $('html, body').animate({scrollTop: $("#reviews").offset().top}, 2000);
    });

    



/* =============================== Product Layout JS ===============================*/
    var currentLayout = $.totalStorage('productLayout');
    if(currentLayout && currentLayout == 'listView') {
        $('#grid-view').removeClass('checked');
        setProductLayout('listView');
    } else {
        setProductLayout('gridView');
    }

    $(document).on('click', '#list-view', function(e){
    	if($(this).hasClass('checked'))
    		return;

    	$('#js-product-list').fadeOut(500,function() {
        setProductLayout('listView');
    	});	
        $('#js-product-list').fadeIn(500);
    });

    $(document).on('click', '#grid-view', function(e){
    	if($(this).hasClass('checked'))
    		return;
    	$('#js-product-list').fadeOut(500,function() {
        setProductLayout('gridView');
    	});
        $('#js-product-list').fadeIn(500);
    });

});

function setProductLayout(layout) {
    if(layout == 'listView') {
        $('#list-view').addClass('checked');
        $('#grid-view').removeClass('checked');
        $('#js-product-list .products').removeClass('grid');    
        $('#js-product-list .products').addClass('list');
        $('#js-product-list .products article').each(function() {
            $(this).removeClass(' col-sm-6 col-md-4 col-lg-6 col-xl-4');
            $(this).find('.thumbnail-container').addClass('col-xs-12 col-sm-6 col-md-4 col-lg-4');
            $(this).find('.product-description').addClass('col-xs-12 col-sm-6 col-md-8 col-lg-8')
            .append('<div class="thumbnail-buttons">'+ $(this).find('.thumbnail-container .thumbnail-inner .thumbnail-buttons').html() + '</div>');
        });
        $.totalStorage('productLayout','listView');
    } else {
        $('#grid-view').addClass('checked');
        $('#list-view').removeClass('checked');
        $('#js-product-list .products').removeClass('list');
        $('#js-product-list .products').addClass('grid');
        $('#js-product-list .products article').each(function() {
            $(this).addClass(' col-sm-6 col-md-4 col-lg-6 col-xl-4');
            $(this).find('.thumbnail-container').removeClass('col-xs-12 col-sm-6 col-md-4 col-lg-4');
            $(this).find('.product-description').removeClass('col-xs-12 col-sm-6 col-md-8 col-lg-8')
            .find('.thumbnail-buttons').remove();
        });
        $.totalStorage('productLayout','gridView');
    }
}

function adjustTopMenu() {
	$('#_desktop_top_menu #top-menu > li').each(function( index ) {
	  var li = $(this).find('.sub-menu > ul > li').length;
	  switch(li) {
	  	case 1 : $(this).find('.sub-menu').css('width','230px');
	  	break;
	  	case 2 : $(this).find('.sub-menu').css('width','430px');
	  	break;
	  	default : $(this).find('.sub-menu').css('width','630px');
	  }
});
}



