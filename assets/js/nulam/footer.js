// //<![CDATA[ 
//     jQuery(document).ready(function($) {

// 		Virtuemart.product($("form.product"));
// }); //]]>
// //<![CDATA[ 
//     jQuery(document).ready(function() { // GALT: Start listening for dynamic content update.
//         // If template is aware of dynamic update and provided a variable let's
//         // set-up the event listeners.
//         //if (Virtuemart.container)
//             Virtuemart.updateDynamicUpdateListeners();
    
//     }); //]]>
if (jQuery(window).outerWidth() > 600) {
    function startCounting(el, final) {
        var time = el.attr('data-time') || 1000;
        var increase = Math.floor(final / (time / 24));

        if (increase < 1) {
            increase = 1;
        }

        var anim = setInterval(function () {
            var prev = parseInt(el.text(), 10);

            if (prev + increase < final) {
                el.text(prev + increase);
            } else {
                el.text(final);
                clearInterval(anim);
            }
        }, 24);
    }

    if (jQuery('.transparent-tabs').length) {
        jQuery('.transparent-tabs').each(function (i, tabs) {
            jQuery(tabs).find('.gkTabsNav li').each(function (j, tab) {
                jQuery(tab).attr('data-sr', 'wait ' + (0.15 * j) + 's and enter bottom and scale up 30% and move 50px');
            });
        });
    }

    var config = {
        complete: function (el) {
            el = jQuery(el);

            if (el.attr('data-count')) {
                startCounting(el, el.attr('data-count'));
            }

            if (el.hasClass('gk-add-rotate-animation')) {
                el.addClass('gk-rotate-animation');
            }

            if (el.hasClass('bar')) {
                el.addClass('gk-loaded');
            }

            if (el.parent().hasClass('gkNspPM-NewsSlider')) {
                el.attr('style', '');
                el.parent().addClass('gk-run-animation');
            }

            if (el.hasClass('gk-border-anim')) {
                el.addClass('gk-anim-complete');
            }
        },
        mobile: true
    };
    window.sr = new scrollReveal(config);
} else {
    jQuery('span[data-count]').each(function (i, el) {
        if (jQuery(el).attr('data-sr')) {
            jQuery(el).text(jQuery(el).attr('data-count'));
        }
    });

    jQuery('*[data-sr]').each(function (i, el) {
        el = jQuery(el);

        if (el.hasClass('gk-add-rotate-animation')) {
            el.addClass('gk-rotate-animation');
        }

        if (el.hasClass('bar')) {
            el.addClass('gk-loaded');
        }

        if (el.parent().hasClass('gkNspPM-NewsSlider')) {
            el.attr('style', '');
            el.parent().addClass('gk-run-animation');
        }

        if (el.hasClass('gk-border-anim')) {
            el.addClass('gk-anim-complete');
        }
    });
}
if (/iPhone|iPad|iPod/i.test(navigator.userAgent)) {
    document.getElementById('gkHeader').style.display = "none";
    document.getElementById('gkFooter').style.display = "none"
}

jQuery(document).ready(function() {
    jQuery(document).on("click", ".spacer a", function (e) {
        window.location = this.href;
    });
    jQuery(document).on("click", ".description a", function (e) {
        window.location = this.href;
    });
});