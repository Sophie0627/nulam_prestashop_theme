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
<td class="product-cart-image"> <span class="cart-images">
        <img src="{$product.cover.bySize.cart_default.url}" alt="{$product.name|escape:'quotes'}">
</td>
<td class="product-cart-info">
    <h2><a class="label" href="{$product.url}"
            data-id_customization="{$product.id_customization|intval}">{$product.name}</a></h2>
    <dl class="item-options">
        <dt>{l s='Price' d='Shop.Theme.Catalog'}</dt>
        <dd>
            <div class="PricesalesPrice vm-display vm-price-value"><span class="vm-price-desc"></span><span
                    class="PricesalesPrice">{$product.price} </span></div>
        </dd>
    </dl>
    <div class="vm-customfield-cart">
        {foreach from=$product.attributes key="attribute" item="value"}
            <span class="product-field-type-S">{$attribute} {$value}</span><br>
        {/foreach}
    </div>
</td>
<td class="product-cart-actions nowrap">
    <a class="remove-from-cart vmicon vm2-remove_from_cart" rel="nofollow" href="{$product.remove_from_cart_url}"
        data-link-action="delete-from-cart" data-id-product="{$product.id_product|escape:'javascript'}"
        data-id-product-attribute="{$product.id_product_attribute|escape:'javascript'}"
        data-id-customization="{$product.id_customization|escape:'javascript'}" style="float: left;
        margin: 0;
        padding: 0 !important;
        height: 27px !important;
        float: left !important;
        border-radius: 0 3px 3px 0;
        width: 27px !important;
        border-radius: 50%;
        background-position: 123% -68px !important;
        text-align: center;
        border: #f19300 solid 1px !important;
        padding: 4px 0 0 0 !important;
        line-height: 35px;
        color: #fff !important;">
    </a>

    {block name='hook_cart_extra_product_actions'}
        {hook h='displayCartExtraProductActions' product=$product}
    {/block}

</td>
<td class="vm-cart-item-total">
    <div class="PricesalesPrice vm-display vm-price-value"><span class="vm-price-desc"></span><span
            class="PricesalesPrice">{$product.total} </span></div>
</td>