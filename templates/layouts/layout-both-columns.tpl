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
    <script src="https://budgetdesinfectie.nl/themes/PRS020/assets/js/nulam/media/jui/jquery.min.js"
        type="text/javascript"></script>
    <script src="https://budgetdesinfectie.nl/themes/PRS020/assets/js/nulam/head.js" type="text/javascript"></script>

</head>

<body id="{$page.page_name}" class="{$page.body_classes|classnames} com_k2 dark-bg" data-tablet-width="1040"
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
                {if $page.page_name == 'index'}
                    {if $language.iso_code == 'en'}
                        {include file='_partials/header_home_en.tpl' banner=$banner}
                    {elseif $language.iso_code == 'de'}
                        {include file='_partials/header_home_de.tpl' banner=$banner}
                    {else}
                        {include file='_partials/header_home_nl.tpl' banner=$banner}
                    {/if}
                {else}
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
            <h3>Log in</h3>

            <form action="https://nulam.nl/component/virtuemart/?Itemid=1272" method="post" id="login-form"
                class="form-inline">
                <fieldset class="userdata">
                    <p class="login-fields">
                        <label>Gebruikersnaam</label>
                        <input id="modlgn-username" type="text" name="username" class="inputbox" size="24">
                    </p>
                    <p class="login-fields">
                        <label>Wachtwoord</label>
                        <input id="modlgn-passwd" type="password" name="password" class="inputbox" size="24">
                    </p>
                    <button class="button">Inloggen</button>
                    <ul>
                        <li> <a href="/login-page.html?view=reset" class="inverse"> Wachtwoord vergeten?</a> </li>
                        <li> <a href="/login-page.html?view=remind" class="inverse"> Gebruikersnaam vergeten?</a> </li>
                        <li class="last"> <a class="btn-border" href="/login-page.html?view=registration"> Account
                                aanmaken?</a> </li>
                    </ul>
                    <input type="hidden" name="option" value="com_users">
                    <input type="hidden" name="task" value="user.login">
                    <input type="hidden" name="return"
                        value="aHR0cHM6Ly9udWxhbS5ubC9jb21wb25lbnQvdmlydHVlbWFydC8/SXRlbWlkPTEyNzI=">
                    <input type="hidden" name="69cbcc25ed4e87787bb947b0ad97395a" value="1">
                </fieldset>
                <div class="posttext"> </div>
            </form>
        </div>

    </div>
    <div id="gk-login-popup-overlay"></div>
    <div id="gk-newsletter-popup" data-display="after_time" data-scroll="1000" data-time="6" class="">
        <a href="#" id="gk-newsletter-popup-close">×</a>

        <h3>Meld je aan</h3>
        <p>Schrijf nu in op onze nieuwsbrief <br>en ontvang de laatste aanbiedingen</p>
        <form action="index.php?option=com_acymailing&amp;ctrl=sub" method="post"><input name="user[email]" required=""
                type="email" id="user_email" placeholder="email:"> <input type="submit" value="Aanmelden"
                id="gk-newsletter-submit"> <input name="acyformname" type="hidden" value="formAcymailing1"> <input
                name="ctrl" type="hidden" value="sub"> <input name="task" type="hidden" value="optin"> <input
                name="option" type="hidden" value="com_acymailing"> <input name="visiblelists" type="hidden" value="">
            <input name="hiddenlists" type="hidden" value="1"> <input name="user[html]" type="hidden" value="1">
        </form>
        <!-- Configuration details: https://www.acyba.com/acymailing/248-acymailing-external-subscription-form.html -->
        <p><small> Lees onze <a href="/index.php/privacy">privacy beleid</a> &amp; <a
                    href="/index.php/algemene-voorwaarden">algemene voorwaarden</a><br> U kunt zich op elke gewenste
                moment uitschrijven</small></p>

    </div>
    <div class="dogbox-sidebar" style="right: -348px;"> </div>
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