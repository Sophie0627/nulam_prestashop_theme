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
{extends file=$layout}

{block name='head_seo' prepend}
    <link rel="canonical" href="{$product.canonical_url}">
{/block}

{block name='head' append}
    <meta property="og:type" content="product">
    <meta property="og:url" content="{$urls.current_url}">
    <meta property="og:title" content="{$page.meta.title}">
    <meta property="og:site_name" content="{$shop.name}">
    <meta property="og:description" content="{$page.meta.description}">
    <meta property="og:image" content="{$product.cover.large.url}">
    <meta property="product:pretax_price:amount" content="{$product.price_tax_exc}">
    <meta property="product:pretax_price:currency" content="{$currency.iso_code}">
    <meta property="product:price:amount" content="{$product.price_amount}">
    <meta property="product:price:currency" content="{$currency.iso_code}">
    {if isset($product.weight) && ($product.weight != 0)}
        <meta property="product:weight:value" content="{$product.weight}">
        <meta property="product:weight:units" content="{$product.weight_unit}">
    {/if}

{/block}

{block name='content'}
    <div id="gkPageContent" class="vmproduct_page">
        <meta itemprop="url" content="{$product.url}">
        <div class="gkPage">
            <div class="row">
                <div id="gkContent">
                    <section id="gkMainbody">
                        <div class="product-holder">
                            <div class="holder">
                                <div class="product-block product-actions">
                                    {block name='product_buy'}
                                        <form action="{$urls.pages.cart}" method="post" id="add-to-cart-or-refresh"
                                            class="product js-recalculate side-block-wrap">
                                            <input type="hidden" name="token" value="{$static_token}">
                                            <input type="hidden" name="id_product" value="{$product.id}"
                                                id="product_page_product_id">
                                            <input type="hidden" name="id_customization" value="{$product.id_customization}"
                                                id="product_customization_id">
                                            <div class="img-wrap">
                                                <div class="cycle-slideshow" data-cycle-fx="scrollHorz"
                                                    data-cycle-pause-on-hover="true" data-cycle-speed="500"
                                                    data-cycle-loader="wait" style="position: relative; overflow: hidden;">
                                                    {foreach from=$product.images item=image}
                                                        <img src="{$image.bySize.large_default.url|replace:'-large_default':''}"
                                                            alt="{$image.legend}" class="cycle-slide cycle-sentinel" style="">
                                                    {/foreach}
                                                </div>
                                            </div>
                                            {block name='product_variants'}
                                                {include file='catalog/_partials/product-variants.tpl'}
                                            {/block}
                                            {block name='product_prices'}
                                                {include file='catalog/_partials/product-prices.tpl'}
                                            {/block}
                                            <div class="tag_highlight">selecteer gewicht</div>
                                            {block name='product_add_to_cart'}
                                                {include file='catalog/_partials/product-add-to-cart.tpl'}
                                            {/block}
                                        </form>
                                    {/block}
                                </div>
                            </div>
                            {block name='product_description'}
                                <div class="product-description">{$product.description nofilter}</div>
                            {/block}


                            {block name='product_accessories'}
                                {if $accessories}
                                    <div class="holder newcadiv">
                                        <h2>Producten die ook interessant voor u zou kunnen zijn:</h2>
                                    </div>
                                    <div
                                        class="view view-produktliste-nach-kategorie view-id-produktliste_nach_kategorie view-display-id-aehnliche_produkte view-dom-id-b9cbd85ec1525649f0a1ad3be63fce36">
                                        <!-- gallery of the page -->
                                        <div class="intro intro-2">
                                            <div class="title">
                                                <!--<h2>Weitere Produkte, die Sie interessieren könnten: </h2>-->
                                            </div>
                                            <div class="gallery">
                                                <div class="mask">
                                                    <div class="slideset" style="">
                                                        {foreach from=$accessories item="product_accessory"}
                                                            <div class="slide">
                                                                <div class="img-wrap"> <a href="{$product_accessory.url}">
                                                                        <img src="{$product_accessory.cover.bySize.home_default.url}"
                                                                            alt="{if !empty($product_accessory.cover.legend)}{$product_accessory.cover.legend}{else}{$product_accessory.name|truncate:30:'...'}{/if}">
                                                                    </a> </div>
                                                                <div class="description">
                                                                    <h3> <a href="{$product_accessory.url}">
                                                                            <span>{$product_accessory.name|truncate:30:'...'}</span>
                                                                        </a> </h3>
                                                                </div>
                                                            </div>
                                                        {/foreach}
                                                    </div>
                                                </div>
                                                <a href="#" class="btn-prev"><span class="icon-arrow-prev"></span></a> <a href="#"
                                                    class="btn-next"><span class="icon-arrow-next"></span></a>
                                            </div>
                                        </div>
                                    </div>
                                {/if}
                            {/block}

                            {block name='product_footer'}
                                {hook h='displayFooterProduct' product=$product category=$category}
                            {/block}

                        </div>
                    </section>
                </div>
            </div>
        </div>
    </div>

    {block name='page_footer_container'}
        <footer class="page-footer">
            {block name='page_footer'}
                <!-- Footer content -->
            {/block}
        </footer>

    {/block}






{/block}