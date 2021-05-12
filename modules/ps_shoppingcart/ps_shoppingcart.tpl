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

<div id="gkPopupCart" style="display: none; opacity: 0;">
    <div class="gkPopupWrap blockcart" data-refresh-url="{$refresh_url}">
        <div id="gkAjaxCart">
            <div class="vmGkCartModule ">
                <h3><span>My cart</span></h3>
                {if $cart.products_count > 0}
                    <div class="vmGkCartProducts">
                        {foreach from=$cart.products item=product}
                            <div><img src="{$product.cover.bySize.cart_default.url}" alt="{$product.name|escape:'quotes'}">
                                <div>
                                    <div class="productHeader"><span>{$product.cart_quantity}×</span><a
                                            href="{$product.url}">{$product.name}</a></div>
                                    {if isset($product.attributes)}
                                        <div class="customProductData product-price">
                                            <div class="vm-customfield-mod">
                                                {foreach from=$product.attributes key="attribute" item="value"}
                                                    <span class="product-field-type-S">{$value}</span><br>
                                                {/foreach}
                                            </div>
                                        </div>
                                    {/if}
                                </div>
                            </div>
                            <span class="gkPrice num1">{$product.price}</span>

                        {/foreach}
                    </div>

                    <div class="gkTotal"> {$cart.totals.total.value} </div>
                    <div class="gkShowCart"> <a style="float:right;" href="{$cart_url}"
                            rel="nofollow">{l s='Checkout' d='Shop.Theme.Actions'}</a>
                    </div>
                    <script>var is_cart_empty = false;</script>
                {else}
                    <p><small>Your cart is empty</small></p>
                    <script>var is_cart_empty = true;</script>
                {/if}
                <noscript>
                    Please wait </noscript>
            </div>

        </div>
    </div>
</div>
