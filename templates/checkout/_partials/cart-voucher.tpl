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
{if $cart.vouchers.allowed}
    {block name='cart_voucher'}
        <div class="" id="couponcode_data">
            <div class="coupon_div">
                {hook h="displayPaymentRuleCartVoucher"}
                {if $cart.vouchers.added}
                    {block name='cart_voucher_list'}
                        <ul class="promo-name card-block">
                            {foreach from=$cart.vouchers.added item=voucher}
                                <li class="cart-summary-line">
                                    <span class="label">{$voucher.name}</span>
                                    <a href="{$voucher.delete_url}" data-link-action="remove-voucher" style="background: url(/themes/PRS020/assets/css/images/vm/vm2-sprite.png) no-repeat 100% -64px !important;
                                    height: 24px !important;
                                    width: 15px !important;
                                    display: inline-block;"></a>
                                    <div class="float-xs-right">
                                        {$voucher.reduction_formatted}
                                    </div>
                                </li>
                            {/foreach}
                        </ul>
                    {/block}
                {/if}
                <h2><a class="collapse-button promo-code-button" data-toggle="collapse" href="#promo-code" aria-expanded="false"
                        aria-controls="promo-code">
                        {l s='Have a promo code?' d='Shop.Theme.Checkout'}
                    </a></h2>
                <div class="coupondata_div promo-code collapse{if $cart.discounts|count > 0} in{/if}" id="promo-code">
                    {block name='cart_voucher_form'}
                        <form action="{$urls.pages.cart}" data-link-action="add-voucher" method="post">
                            <input type="hidden" name="token" value="{$static_token}">
                            <input type="hidden" name="addDiscount" value="1">
                            <input class="promo-input coupon" type="text" name="discount_name"
                                placeholder="{l s='Promo code' d='Shop.Theme.Checkout'}">
                            <span class="details-button">
                                <input type="submit" class="btn btn-primary details-button"
                                    value="{l s='Add' d='Shop.Theme.Actions'}">
                            </span>
                        </form>
                    {/block}

                    {block name='cart_voucher_notifications'}
                        <div class="alert alert-danger js-error" role="alert" style="display: none;">
                            <i class="material-icons">&#xE001;</i><span class="ml-1 js-error-text"></span>
                        </div>
                    {/block}

                </div>

                {if $cart.discounts|count > 0}
                    <p class="block-promo promo-highlighted">
                        {l s='Take advantage of our exclusive offers:' d='Shop.Theme.Actions'}
                    </p>
                    <ul class="js-discount card-block promo-discounts">
                        {foreach from=$cart.discounts item=discount}
                            <li class="cart-summary-line">
                                <span class="label"><span class="code">{$discount.code}</span> - {$discount.name}</span>
                            </li>
                        {/foreach}
                    </ul>
                {/if}
            </div>
        </div>
    {/block}
{/if}