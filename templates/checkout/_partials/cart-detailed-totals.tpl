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
{block name='cart_detailed_totals'}
    {foreach from=$cart.subtotals item="subtotal"}
        {if $subtotal.value && $subtotal.type !== 'tax'}
            <tr class="sectiontableentry1">
                <td>{if 'products' == $subtotal.type}
                        {$cart.summary_string}
                    {else}
                        {$subtotal.label}
                    {/if}</td>
                <td colspan="2" align="right">
                    <div class="PricesalesPrice vm-display vm-price-value"><span class="vm-price-desc"></span><span
                            class="PricesalesPrice">{$subtotal.value} </span></div>
                </td>
                {if $subtotal.type === 'shipping'}
                    <div><small class="value">{hook h='displayCheckoutSubtotalDetails' subtotal=$subtotal}</small></div>
                {/if}
            </tr>

        {/if}
    {/foreach}

    <tr class="sectiontableentry2">
        <td align="right">{$cart.totals.total.label}:</td>
        <td colspan="2" align="right"><strong>
                <div class="PricebillTotal vm-display vm-price-value"><span class="vm-price-desc"></span><span
                        class="PricebillTotal">{$cart.totals.total.value} </span></div>
            </strong></td>
    </tr>
{/block}