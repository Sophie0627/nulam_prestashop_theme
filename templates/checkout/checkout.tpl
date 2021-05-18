{**
 * 2007-2018 PrestaShop
 *
 * NOTICE OF LICENSE
 *
 * This source file is subject to the Academic Free License 3.0 (AFL-3.0)
 * that is bundled with this package in the file LICENSE.txt.
 * It is also available through the world-wide-web at this URL:
 * https://opensource.org/licenses/AFL-3.0
 * If you did not receive a copy of the license and are unable to
 * obtain it through the world-wide-web, please send an email
 * to license@prestashop.com so we can send you a copy immediately.
 *
 * DISCLAIMER
 *
 * Do not edit or add to this file if you wish to upgrade PrestaShop to newer
 * versions in the future. If you wish to customize PrestaShop for your
 * needs please refer to http://www.prestashop.com for more information.
 *
 * @author    PrestaShop SA <contact@prestashop.com>
 * @copyright 2007-2018 PrestaShop SA
 * @license   https://opensource.org/licenses/AFL-3.0 Academic Free License 3.0 (AFL-3.0)
 * International Registered Trademark & Property of PrestaShop SA
 *}

<!doctype html>
<html lang="{$language.iso_code}">

<head>
    {block name='head'}
        {include file='_partials/head_checkout.tpl'}
    {/block}
    <script src="https://budgetdesinfectie.nl/themes/PRS020/assets/js/nulam/media/jui/jquery.min.js"
        type="text/javascript"></script>
    <script src="https://budgetdesinfectie.nl/themes/PRS020/assets/js/nulam/head.js" type="text/javascript"></script>

</head>

<body id="{$page.page_name}" class="{$page.body_classes|classnames} hide_header" data-tablet-width="1040"
    data-mobile-width="640" data-zoom-size="150" data-parallax="true">
    <script src="https://budgetdesinfectie.nl/themes/PRS020/assets/js/nulam/first.js" type="text/javascript">
    </script>
    {block name='hook_after_body_opening_tag'}
        {hook h='displayAfterBodyOpeningTag'}
    {/block}

    <div id="gkBg">
        {block name='product_activation'}
            {include file='catalog/_partials/product-activation.tpl'}
        {/block}

        <header id="gkHeader" class="gk-clearfix">
            {block name='header'}

                {include file='_partials/header_nl.tpl'}

            {/block}
        </header>

        {block name='notifications'}
            {include file='_partials/notifications.tpl'}
        {/block}

        {hook h="displayWrapperTop"}


        {block name="content_wrapper"}
            {hook h="displayContentWrapperTop"}
            {block name="content"}
                <div id="gkPageContent">
                    <div class="gkPage">
                        <div>
                            <div id="gkContent">
                                <section id="gkMainbody">
                                    {block name='cart_summary'}
                                        {render file='checkout/checkout-process.tpl' ui=$checkout_process}
                                    {/block}
                                </section>
                            </div>
                        </div>
                    </div>
                </div>
            {/block}
            {hook h="displayContentWrapperBottom"}
        {/block}



        <footer id="gkFooter" style="min-height: 0px;">
            {block name="footer"}
                {if $language.iso_code == 'en'}
                    {include file='_partials/footer_en.tpl'}
                {elseif $language.iso_code == 'de'}
                    {include file='_partials/footer_de.tpl'}
                {else}
                    {include file='_partials/footer_nl.tpl'}
                {/if}
            {/block}
        </footer>
        <div class="pswp" tabindex="-1" role="dialog" aria-hidden="true">
            <div class="pswp__bg"></div>
            <div class="pswp__scroll-wrap">
                <div class="pswp__container">
                    <div class="pswp__item"></div>
                    <div class="pswp__item"></div>
                    <div class="pswp__item"></div>
                </div>

                <div class="pswp__ui pswp__ui--hidden">
                    <div class="pswp__top-bar">
                        <div class="pswp__counter"></div>

                        <div class="pswp__preloader"></div>

                        <button class="pswp__button pswp__button--fs" title="Toggle fullscreen"></button>
                        <button class="pswp__button pswp__button--zoom" title="Zoom in/out"></button>
                        <button class="pswp__button pswp__button--share" title="Share"></button>
                        <button class="pswp__button pswp__button--close" title="Close (Esc)"></button>
                    </div>

                    <div class="pswp__share-modal pswp__share-modal--hidden pswp__single-tap">
                        <div class="pswp__share-tooltip"></div>
                    </div>

                    <button class="pswp__button pswp__button--arrow--left" title="Previous (arrow left)"></button>
                    <button class="pswp__button pswp__button--arrow--right" title="Next (arrow right)"></button>

                    <div class="pswp__caption">
                        <div class="pswp__caption__center"></div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    </div>
    {if $language.iso_code == 'en'}
    <a href="/en/contact-for-sample.html"><div class="dogbox-sidebar" style="right: -348px;"> </div></a>
    {elseif $language.iso_code == 'nl'}
    <a href="/contact-for-sample.html"><div class="dogbox-sidebar" style="right: -348px;"> </div></a>
    {elseif $language.iso_code == 'de'}
    <a href="/de/contact-for-sample.html"><div class="dogbox-sidebar" style="right: -348px;"> </div></a>
    {/if}
    {block name='javascript_bottom'}
        {include file="_partials/javascript.tpl" javascript=$javascript.bottom}
    {/block}
    {block name='hook_before_body_closing_tag'}
        {hook h='displayBeforeBodyClosingTag'}
    {/block}
    <script async="" src="//www.google-analytics.com/analytics.js"></script>
    <script src="https://budgetdesinfectie.nl/themes/PRS020/assets/js/nulam/media/jui/jquery-migrate.min.js"
        type="text/javascript"></script>
    <script src="https://budgetdesinfectie.nl/themes/PRS020/assets/js/nulam/media/k2/k2.frontend.js"
        type="text/javascript">
    </script>
    <script src="https://budgetdesinfectie.nl/themes/PRS020/assets/js/nulam/media/system/core.js"
        type="text/javascript">
    </script>
    {if $page.page_name == 'index'}
        <script src="https://budgetdesinfectie.nl/themes/PRS020/assets/js/nulam/slider.js" type="text/javascript"></script>
    {else}
        <script src="https://budgetdesinfectie.nl/themes/PRS020/assets/js/nulam/components/com_virtuemart/topsliderjs.js"
            type="text/javascript"></script>
    {/if}
    <script
        src="https://budgetdesinfectie.nl/themes/PRS020/assets/js/nulam/components/com_virtuemart/vmsite.js?vmver=9293"
        type="text/javascript"></script>
    <script
        src="https://budgetdesinfectie.nl/themes/PRS020/assets/js/nulam/components/com_virtuemart/dynupdate.js?vmver=9293"
        type="text/javascript"></script>
    <script
        src="https://budgetdesinfectie.nl/themes/PRS020/assets/js/nulam/components/com_virtuemart/vmprices.js?vmver=9293"
        type="text/javascript"></script>
    <script
        src="https://budgetdesinfectie.nl/themes/PRS020/assets/js/nulam/components/com_virtuemart/fancybox/jquery.fancybox-1.3.4.pack.js?vmver=9293"
        type="text/javascript"></script>
    <script src="https://budgetdesinfectie.nl/themes/PRS020/assets/js/nulam/gk_guark/modernizr.js"
        type="text/javascript">
    </script>
    <script src="https://budgetdesinfectie.nl/themes/PRS020/assets/js/nulam/gk_guark/gk.scripts.js"
        type="text/javascript">
    </script>
    <script src="https://budgetdesinfectie.nl/themes/PRS020/assets/js/nulam/gk_guark/gk.menu.js" type="text/javascript">
    </script>
    <script src="https://budgetdesinfectie.nl/themes/PRS020/assets/js/nulam/gk_guark/kalendae.js"
        type="text/javascript">
    </script>
    <script src="https://budgetdesinfectie.nl/themes/PRS020/assets/js/nulam/gk_guark/photoswipe.min.js"
        type="text/javascript"></script>
    <script src="https://budgetdesinfectie.nl/themes/PRS020/assets/js/nulam/gk_guark/photoswipe-ui.min.js"
        type="text/javascript"></script>
    <script src="https://budgetdesinfectie.nl/themes/PRS020/assets/js/nulam/gk_guark/scrollreveal.js"
        type="text/javascript"></script>
    <script src="https://budgetdesinfectie.nl/themes/PRS020/assets/js/nulam/gk_guark/gk.ecommerce.js"
        type="text/javascript"></script>

    <script src="https://budgetdesinfectie.nl/themes/PRS020/assets/js/nulam/media/jui/jquery-noconflict.js"
        type="text/javascript"></script>

    <script src="https://budgetdesinfectie.nl/themes/PRS020/assets/js/nulam/media/jui/bootstrap.min.js"
        type="text/javascript"></script>
    <script src="https://budgetdesinfectie.nl/themes/PRS020/assets/js/nulam/media/system/mootools-core.js"
        type="text/javascript"></script>
    <script src="https://budgetdesinfectie.nl/themes/PRS020/assets/js/nulam/media/system/mootools-more.js"
        type="text/javascript"></script>


    <!--[if lte IE 9]>
 <script type="text/javascript" src="https://budgetdesinfectie.nl/themes/PRS020/assets/js/nulam/gk_guark/ie.js"></script>
 <![endif]-->

    <!--[if (gte IE 6)&(lte IE 8)]>
 <script type="text/javascript" src="https://budgetdesinfectie.nl/themes/PRS020/assets/js/nulam/gk_guark/respond.js"></script>
 <script type="text/javascript" src="https://budgetdesinfectie.nl/themes/PRS020/assets/js/nulam/gk_guark/selectivizr.js"></script>
 <![endif]-->
    <script src="https://budgetdesinfectie.nl/themes/PRS020/assets/js/nulam/footer.js" type="text/javascript"></script>

</body>

</html>