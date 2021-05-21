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
        {include file='_partials/head.tpl'}
    {/block}
    <script src="/themes/PRS020/assets/js/nulam/media/jui/jquery.min.js"
        type="text/javascript"></script>
    <script src="/themes/PRS020/assets/js/nulam/head.js" type="text/javascript"></script>

</head>

<body id="{$page.page_name}" class="{$page.body_classes|classnames} com_k2 dark-bg" data-tablet-width="1040"
    data-mobile-width="640" data-zoom-size="150" data-parallax="true">
    <script src="/themes/PRS020/assets/js/nulam/first.js" type="text/javascript">
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
                {if !isset($banner)}{assign var="banner" value='/images/banner-test.jpg'}{/if}
                {if $page.page_name == 'index'}
                    {if $language.iso_code == 'en'}
                        {include file='_partials/header_home_en.tpl' banner=$banner}
                    {elseif $language.iso_code == 'de'}
                        {include file='_partials/header_home_de.tpl' banner=$banner}
                    {else}
                        {include file='_partials/header_home_nl.tpl' banner=$banner}
                    {/if}
                {else}
                    {if $page.page_name == 'category'}
                        {if $category.id == 2}
                            {assign var='banner' value='/images/cms/13-nl.jpg'}
                        {/if}
                        {if $category.id|in_array:[3,4,5,6,7]}
                            {if $language.iso_code == 'nl'}
                                {assign var='banner' value='/images/banner-all-chunks-nl-2.jpg'}
                            {else}
                                {assign var='banner' value='/images/banner-all-chunks-uk.jpg'}
                            {/if}
                        {/if}
                        {if $category.id|in_array:[8,9,10]}
                            {if $language.iso_code == 'nl'}
                                {assign var='banner' value='/images/banner-all-Fresh-nl.jpg'}
                            {else}
                                {assign var='banner' value='/images/banner-all-Fresh-uk.jpg'}
                            {/if}
                        {/if}
                        {if $category.id|in_array:[11,12,13,14]}
                            {assign var='banner' value='/images/banner-snacks.jpg'}
                        {/if}
                        {if $category.id|in_array:[15,16,17]}
                            {assign var='banner' value='/images/banner-noon-food.jpg'}
                        {/if}
                    {elseif $page.page_name == 'product'}
                        {assign var="images" value=[1	=> '/images/stories/virtuemart/product/1482313169_puppy-banner.jpg',2	=> '/images/stories/virtuemart/product/1482276090_banner-bulldog-junior-3.jpg',4	=> '/images/stories/virtuemart/product/1482308149_banner-rijst-2.jpg',5	=> '/images/stories/virtuemart/product/1481959129_banner-sea-2.jpg',6	=> '/images/stories/virtuemart/product/1519984986_banner-salmon-potatoes.jpg',7	=> '/images/stories/virtuemart/product/1518428005_Nulam_banner-energy.jpg',8	=> '/images/stories/virtuemart/product/1481806666_banner-ennergy-plus.jpg',9	=> '/images/stories/virtuemart/product/1481794773_banner-mini-adult-2.jpg',10	=> '/images/stories/virtuemart/product/1521254376__banner-lamb-potatoes.jpg',12	=> '/images/stories/virtuemart/product/1482142125_banner-bulldog.jpg',13	=> '/images/stories/virtuemart/product/1518962986__banner-vetanary.png',15	=> '/images/stories/virtuemart/product/1482318366_Header-Light-senior.jpg',16	=> '/images/stories/virtuemart/product/1483686622_banner-14.jpg',17	=> '/images/stories/virtuemart/product/1482389031_banner-3.jpg',18	=> '/images/stories/virtuemart/product/1534840280_1482660184_banner-27.jpg',19	=> '/images/stories/virtuemart/product/1522582093_pure-bulldog-puppy-banner.jpg',20	=> '/images/stories/virtuemart/product/1482935334_banner-nature.jpg',22	=> '/images/stories/virtuemart/product/1482935739_banner-sintbernad.jpg',23	=> '/images/stories/virtuemart/product/1482661413_banner-zee.jpg',24	=> '/images/stories/virtuemart/product/1482661145_banner-17.jpg',25	=> '/images/stories/virtuemart/product/1482659241_banner-voer.jpg',26	=> '/images/stories/virtuemart/product/1482660857_banner-21.jpg',27	=> '/images/stories/virtuemart/product/1482392327_banner-senior-2.jpg',29	=> '/images/stories/virtuemart/product/1482388821_banner-4.jpg',30	=> '/images/stories/virtuemart/product/1482391266_banner-24.jpg',31	=> '/images/stories/virtuemart/product/1482389667_banner-19.jpg',33	=> '/images/stories/virtuemart/product/1482389489_banner-10.jpg',34	=> '/images/stories/virtuemart/product/1482662094_banner-3.jpg',35	=> '/images/stories/virtuemart/product/1522579420_banner-pure-bulldog-complete.jpg',36	=> '/images/stories/virtuemart/product/1507813113_nulam-banner-frensch-puppy.jpg',37	=> '/images/stories/virtuemart/product/',40	=> '/images/stories/virtuemart/product/1507968802_banner-nulam-2.jpg',41	=> '/images/stories/virtuemart/product/1507814185_banner-bulldog-adult.jpg',42	=> '/images/stories/virtuemart/product/1507971443_banner-nulam-5.jpg',43	=> '/images/stories/virtuemart/product/1507972627_banner-nulam-6.jpg',45	=> '/images/stories/virtuemart/product/1507805557_Nulam_banner-3.jpg',46	=> '/images/stories/virtuemart/product/1483083213_banner-9.jpg',47	=> '/images/stories/virtuemart/product/1483082352_banner31.jpg',48	=> '/images/stories/virtuemart/product/1483082027_banner-40.jpg',49	=> '/images/stories/virtuemart/product/1507747648_banner-nulam-1.jpg',50	=> '/images/stories/virtuemart/product/1507121006_banner-ganz.jpg',51	=> '/images/stories/virtuemart/product/1507747910_banner-nulam-3.jpg',57	=> '/images/stories/virtuemart/product/1483080564_banner-33.jpg',58	=> '/images/stories/virtuemart/product/1483081112_banner-37.jpg',59	=> '/images/stories/virtuemart/product/1483079110_banner-35.jpg',60	=> '/images/stories/virtuemart/product/1483035587_banner-32.jpg',61	=> '/images/stories/virtuemart/product/1483035562_banner-38.jpg',62	=> '/images/stories/virtuemart/product/1521254553_banner-duck-potatoes.jpg',53	=> '/images/stories/virtuemart/product/1584692795_banner-noon-food.jpg',56	=> '/images/stories/virtuemart/product/1584695975_banner-noon-food.jpg',37 => '/images/stories/virtuemart/product/1482389489_banner-10-Copy.jpg']}
                        {foreach from=$images item=item key=key}
                            {if $key == $product.id}
                                {assign var="banner" value=$item}
                            {/if}
                        {/foreach}
                    {/if}
                    {if $language.iso_code == 'en'}
                        {include file='_partials/header_en.tpl' banner=$banner}
                    {elseif $language.iso_code == 'de'}
                        {include file='_partials/header_de.tpl' banner=$banner}
                    {else}
                        {include file='_partials/header_nl.tpl' banner=$banner}
                    {/if}
                {/if}
            {/block}
        </header>

        {block name='notifications'}
            {include file='_partials/notifications.tpl'}
        {/block}

        {if $page.page_name == 'index'}
            {capture name='displayHomeTop'}{hook h='displayHomeTop'}{/capture}
            {if $smarty.capture.displayHomeTop}
                <div id="top_home">
                    {$smarty.capture.displayHomeTop nofilter}
                </div>
            {/if}
        {/if}

        {hook h="displayWrapperTop"}
        {block name="left_column"}
            <div id="_desktop_left_column">
                <div id="left-column" class="col-xs-12 col-sm-12 col-md-12 col-lg-3">
                    {if $page.page_name == 'product'}
                        {hook h='displayLeftColumnProduct'}
                    {else}
                        {hook h="displayLeftColumn"}
                    {/if}
                </div>
            </div>
        {/block}

        {block name="content_wrapper"}
            {hook h="displayContentWrapperTop"}
            {block name="content"}
                <p>Hello world! This is HTML5 Boilerplate.</p>
            {/block}
            {hook h="displayContentWrapperBottom"}
        {/block}

        {block name="right_column"}
            <div id="_desktop_right_column" class="col-lg-3">
                <div id="right-column" class="col-xs-12 col-sm-12 col-md-12 col-lg-3">
                    {if $page.page_name == 'product'}
                        {hook h='displayRightColumnProduct'}
                    {else}
                        {hook h="displayRightColumn"}
                    {/if}
                </div>
            </div>
        {/block}
        {hook h="displayWrapperBottom"}

        {if $page.page_name == 'index'}
            {capture name='displayHomeBottom'}{hook h='displayHomeBottom'}{/capture}
            {if $smarty.capture.displayHomeBottom}
                <div id="bottom_home">
                    {$smarty.capture.displayHomeBottom nofilter}
                </div>
            {/if}
        {/if}

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
    <div id="gk-login-popup">
        <a href="#" id="gk-login-popup-close">×</a>
        <div class="login">
            <h3>{l s='Sign in' d='Shop.Theme.Actions'}</h3>
            {block name='login_form_errors'}
            {/block}
            <form action="{$urls.pages.authentication}" method="post" id="login-form" class="form-inline">
                <fieldset class="userdata">
                    <p class="login-fields">
                        <label>{l s='Email' d='Shop.Theme.Actions'}</label>
                        <input id="modlgn-username" type="text" name="email" class="inputbox" size="24">
                    </p>
                    <p class="login-fields">
                        <label>{l s='Password' d='Shop.Theme.Actions'}</label>
                        <input id="modlgn-passwd" type="password" name="password" class="inputbox" size="24">
                    </p>
                    <input type="hidden" name="submitLogin" value="1">
                    <button class="button" type="submit">{l s='Sign in' d='Shop.Theme.Actions'}</button>
                    <ul>
                        <li> <a href="{$urls.pages.password}" class="inverse">
                                {l s='Forgot your password?' d='Shop.Theme.Customeraccount'}</a> </li>
                        <li class="last"> <a class="btn-border" href="{$urls.pages.register}"
                                data-link-action="display-register-form">{l s='No account? Create one here' d='Shop.Theme.Customeraccount'}</a>
                        </li>
                    </ul>
                </fieldset>
                <div class="posttext"> </div>
            </form>
        </div>

    </div>
    <div id="gk-login-popup-overlay"></div>

    {if $page.page_name == 'index'}
        <div id="gk-newsletter-popup" data-display="after_time" data-scroll="1000" data-time="6" class="">
            <a href="#" id="gk-newsletter-popup-close">×</a>
        {if $language.iso_code=='en'}
            <h3>Sign In</h3>
            <p>Subscribe now to our newsletter and receive the latest offers</p>
            <form action="{$urls.pages.index}#blockEmailSubscription_displayFooterBefore method="post"><input name="email" required="" type="email" id="user_email"
                    placeholder="email:"> <input type="submit" name="submitNewsletter" value="OK" id="gk-newsletter-submit">
                <input type="hidden" name="blockHookName" value="displayFooterBefore">
                <input type="hidden" name="action" value="0">
            </form>
            <p><small> Read our <a href="/en/privacy-security.html">privacy policy</a> &amp; <a
                        href="/en/terms-and-conditions.html">terms and conditions.</a><br> You can unsubscribe at any time.</small></p>
        {elseif $language.iso_code=='nl'}
            <h3>Meld je aan</h3>
            <p>Schrijf nu in op onze nieuwsbrief <br>en ontvang de laatste aanbiedingen</p>
            <form action="{$urls.pages.index}" method="post"><input name="email" required="" type="email" id="user_email"
                    placeholder="email:"> <input type="submit" name="submitNewsletter" value="Aanmelden" id="gk-newsletter-submit">
                <input type="hidden" name="action" value="0" />
            </form>
            <p><small> Lees onze <a href="/privacy-policy.html">privacy beleid</a> &amp; <a
                        href="/algemene-voorwaarden.html">algemene voorwaarden</a><br> U kunt zich op elke gewenste
                    moment uitschrijven</small></p>
        {elseif $language.iso_code=='de'}
            <h3>einloggen</h3>
            <p>Abonnieren Sie jetzt unseren Newsletter und erhalten Sie die neuesten Angebote</p>
            <form action="{$urls.pages.index}" method="post"><input name="email" required="" type="email" id="user_email"
                    placeholder="email:"> <input type="submit" name="submitNewsletter" value="Anmeldung" id="gk-newsletter-submit">
                <input type="hidden" name="action" value="0" />
            </form>
            <p><small> Lesen Sie unsere <a href="/de/privatsphäre-sicherheit.html">Datenschutzbestimmungen</a> und <a
                        href="/de/geschäftsbedingungen.html"> Geschäftsbedingungen.</a><br> Sie können jederzeit wieder abbestellen.</small></p>
        {/if}

        </div>
    {/if}

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
    <script src="/themes/PRS020/assets/js/nulam/media/jui/jquery-migrate.min.js"
        type="text/javascript"></script>
    <script src="/themes/PRS020/assets/js/nulam/media/k2/k2.frontend.js"
        type="text/javascript">
    </script>
    <script src="/themes/PRS020/assets/js/nulam/media/system/core.js"
        type="text/javascript">
    </script>
    {if $page.page_name == 'index'}
        <script src="/themes/PRS020/assets/js/nulam/slider.js" type="text/javascript"></script>
    {else}
        <script src="/themes/PRS020/assets/js/nulam/components/com_virtuemart/topsliderjs.js"
            type="text/javascript"></script>
    {/if}
    <script
        src="/themes/PRS020/assets/js/nulam/components/com_virtuemart/vmsite.js?vmver=9293"
        type="text/javascript"></script>
    <script
        src="/themes/PRS020/assets/js/nulam/components/com_virtuemart/dynupdate.js?vmver=9293"
        type="text/javascript"></script>
    <script
        src="/themes/PRS020/assets/js/nulam/components/com_virtuemart/vmprices.js?vmver=9293"
        type="text/javascript"></script>
    <script
        src="/themes/PRS020/assets/js/nulam/components/com_virtuemart/fancybox/jquery.fancybox-1.3.4.pack.js?vmver=9293"
        type="text/javascript"></script>
    <script src="/themes/PRS020/assets/js/nulam/gk_guark/modernizr.js"
        type="text/javascript">
    </script>
    <script src="/themes/PRS020/assets/js/nulam/gk_guark/gk.scripts.js"
        type="text/javascript">
    </script>
    <script src="/themes/PRS020/assets/js/nulam/gk_guark/gk.menu.js" type="text/javascript">
    </script>
    <script src="/themes/PRS020/assets/js/nulam/gk_guark/kalendae.js"
        type="text/javascript">
    </script>
    <script src="/themes/PRS020/assets/js/nulam/gk_guark/photoswipe.min.js"
        type="text/javascript"></script>
    <script src="/themes/PRS020/assets/js/nulam/gk_guark/photoswipe-ui.min.js"
        type="text/javascript"></script>
    <script src="/themes/PRS020/assets/js/nulam/gk_guark/scrollreveal.js"
        type="text/javascript"></script>
    <script src="/themes/PRS020/assets/js/nulam/gk_guark/gk.ecommerce.js"
        type="text/javascript"></script>

    <script src="/themes/PRS020/assets/js/nulam/media/jui/jquery-noconflict.js"
        type="text/javascript"></script>

    <script src="/themes/PRS020/assets/js/nulam/media/jui/bootstrap.min.js"
        type="text/javascript"></script>
    <script src="/themes/PRS020/assets/js/nulam/media/system/mootools-core.js"
        type="text/javascript"></script>
    <script src="/themes/PRS020/assets/js/nulam/media/system/mootools-more.js"
        type="text/javascript"></script>


    <!--[if lte IE 9]>
<script type="text/javascript" src="/themes/PRS020/assets/js/nulam/gk_guark/ie.js"></script>
<![endif]-->

    <!--[if (gte IE 6)&(lte IE 8)]>
<script type="text/javascript" src="/themes/PRS020/assets/js/nulam/gk_guark/respond.js"></script>
<script type="text/javascript" src="/themes/PRS020/assets/js/nulam/gk_guark/selectivizr.js"></script>
<![endif]-->
    <script src="/themes/PRS020/assets/js/nulam/footer.js" type="text/javascript"></script>
{if $page.page_name == 'product'}
    <script src="/themes/PRS020/assets/js/nulam/product.js" type="text/javascript"></script>

{/if}
</body>

</html>