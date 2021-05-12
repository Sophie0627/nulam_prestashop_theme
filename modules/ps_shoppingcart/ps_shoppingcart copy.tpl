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
 <div id="_desktop_cart">
  <div class="blockcart cart-preview {if $cart.products_count > 0}active{else}inactive{/if}" data-refresh-url="{$refresh_url}">
      <div class="header">
          <span class="cart-link">
          <span class="cart-img"></span>
          <span class="cart-content">
          <span class="cart-name">{l s='Shopping Cart' d='Shop.Theme.Checkout'}</span>
          <span class="cart-products-count hidden-xs-up">{$cart.totals.total.value} - {$cart.products_count} {l s='items' d='Shop.Theme.Global'}</span>
           <span class="cart-products-count">{$cart.products_count}</span>
        </span>
          </span>
          {if $cart.products_count > 0}
          <div class="cart-dropdown">
            <div class="product-container">
              {foreach from=$cart.products item=product}
                  <div class="product"> 
                      <a class="product-image" href="{$product.url}" data-id_customization="{$product.id_customization|intval}">
                          <img src="{$product.cover.bySize.cart_default.url}" alt="{$product.name|escape:'quotes'}">
                      </a>
                      <div class="product-detail">
                                    <div class="product-name">
                                      <span class="quantity-formated">
                                        <span class="quantity">{$product.cart_quantity}</span>
                                        &nbsp;x&nbsp;
                                      </span>
                                      <a class="cart_block_product_name" href="{$product.url}">{$product.name}</a>
                                    </div>
                                    <div class="price">{$product.price}</div>
                                    {if isset($product.attributes)}
                                      <ul class="product-atributes">
                                        {foreach from=$product.attributes key="attribute" item="value"}
                                            <li class="atributes">
                                              <span class="label">{$attribute}:</span>
                                              <span class="value">{$value}</span>
                                            </li>
                                        {/foreach}
                                      </ul>
                                    {/if}
                      </div> 
                      <div class="remove-product">
                        <a class="remove-from-cart" rel="nofollow" href="{$product.remove_from_cart_url}" data-link-action="delete-from-cart" data-id-product="{$product.id_product|escape:'javascript'}" data-id-product-attribute="{$product.id_product_attribute|escape:'javascript'}" data-id-customization="{$product.id_customization|escape:'javascript'}">
                                      {if !isset($product.is_gift) || !$product.is_gift}
                                        <i class="material-icons">delete</i>
                                      {/if}
                        </a>
                      </div>
                  </div>
              {/foreach}
            </div>
            <div class="billing-info col-xs-12">
                  <div class="row">
                    <div class="billing subtotal-info col-xs-12">
                      <span class="label">{$cart.subtotals.products.label}</span>
                      <span class="value">{$cart.subtotals.products.value}</span>
                    </div>
                    <div class="billing shipping-info col-xs-12">
                      <span class="label">{$cart.subtotals.shipping.label}</span>
                      <span class="value">{$cart.subtotals.shipping.value}</span>
                    </div>
                    <div class="billing tax-info col-xs-12">
                      <span class="label">{$cart.subtotals.tax.label}</span>
                      <span class="value">{$cart.subtotals.tax.value}</span>
                    </div>
                    <div class="billing total-info col-xs-12">
                      <span class="label">{$cart.totals.total.label}</span>
                      <span class="value">{$cart.totals.total.value}</span>
                    </div> 
                  </div>
            </div>
            <div class="cart-btn col-xs-12">
              <a href="{$cart_url}" class="btn btn-primary checkout">{l s='Checkout' d='Shop.Theme.Actions'}</a>
            </div>
          </div>
          {else}
            <div class="cart-dropdown empty">
              <span>{l s='Your cart is empty' d='Shop.Theme.Checkout'}</span>
            </div>
          {/if}
      </div>
  </div>
</div>
