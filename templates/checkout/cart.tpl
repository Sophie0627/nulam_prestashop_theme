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

{block name='content'}
    <div id="gkPageContent">
        <div class="gkPage">
            <div>
                <div id="gkContent">
                    <section id="gkMainbody">
                        <div id="cart-view" class="cart-view">
                            <div class="card-block vm-cart-header-container">
                                <div class="width50 floatleft vm-cart-header">
                                    <h1 class="h1">{l s='Shopping Cart' d='Shop.Theme.Checkout'}</h1>
                                    <div class="payments_signin_button"></div>
                                </div>

                                <div class="clear"></div>
                            </div>
                            <div class="cart-grid vm-fieldset-pricelist">

                                <!-- Left Block: cart product informations & shpping -->
                                <div class="cart-grid-body left_part">
                                    <table class="cart-summary cart-overview js-cart" cellspacing="0" cellpadding="0" border="0" width="100%">
                                            <!-- cart products detailed -->

                                            {block name='cart_overview'}
                                                {include file='checkout/_partials/cart-detailed.tpl' cart=$cart}
                                            {/block}
                                                
                                    </table>
                                    <!-- shipping informations -->
                                    {block name='hook_shopping_cart_footer'}
                                        {hook h='displayShoppingCartFooter'}
                                    {/block}
                                </div>

                                <!-- Right Block: cart subtotal & cart total -->
                                <div class="cart-grid-right right_part">

                                    {block name='cart_summary'}
                                        <div class="topleft card cart-summary">
                                            <table cellspacing="0" cellpadding="0" border="0" width="100%">
                                                <tbody>
                                                    <tr class="heading_part">
                                                        <td colspan="3">
                                                            <h3 class="head_title">Overzicht</h3>
                                                        </td>
                                                    </tr>
                                                    {block name='hook_shopping_cart'}
                                                        {hook h='displayShoppingCart'}
                                                    {/block}

                                                    {block name='cart_totals'}
                                                        {include file='checkout/_partials/cart-detailed-totals.tpl' cart=$cart}
                                                    {/block}
                                                    
                                                    <tr>
                                                        {block name='cart_actions'}
                                                            {include file='checkout/_partials/cart-detailed-actions.tpl' cart=$cart}
                                                        {/block}
                                                        
                                                    </tr>
                                                    <tr class="showspace_btw">
                                                        <td colspan="3"></td>
                                                    </tr>

                                                </tbody>
                                            </table>
                                        </div>
                                        <div class="bottmdiv">
                                            <table class="newclass" cellpadding="0" cellspacing="0" border="0">
                                                <tbody>
                                                    <tr class="sectiontableentry2">
                                                        <td colspan="3" align="left">
                                                        {block name='cart_voucher'}
                                                            {include file='checkout/_partials/cart-voucher.tpl'}
                                                        {/block}
                                                            
                                                        </td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                        </div>
                                    {/block}

                                    {block name='hook_reassurance'}
                                        {hook h='displayReassurance'}
                                    {/block}

                                </div>

                            </div>
                        </div>
                    </section>
                </div>
            </div>
        </div>
    </div>
{/block}