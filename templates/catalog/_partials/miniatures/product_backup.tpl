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
{block name='product_miniature_item'}
  <article class="product-miniature js-product-miniature col-xs-12 col-sm-6 col-md-4 col-lg-6 col-xl-4" data-id-product="{$product.id_product}" data-id-product-attribute="{$product.id_product_attribute}" itemscope itemtype="http://schema.org/Product">
    <div class="product-container">
        <div class="thumbnail-container">
            <div class="thumbnail-inner">
                {block name='product_thumbnail'}
                    {if $product.cover}
                      <a href="{$product.url}" class="thumbnail product-thumbnail">
                        <img
                          src = "{$product.cover.bySize.home_default.url}"
                         alt = "{if !empty($product.cover.legend)}{$product.cover.legend}{else}{$product.name|truncate:30:'...'}{/if}"
                          data-full-size-image-url = "{$product.cover.large.url}"
                        >
                        {if isset($product.images[1])}
                          <img class="product-img-extra" src = "{$product.images[1].bySize.home_default.url}"/ alt="product-img">
                        {/if}
                      </a>
                    {else}
                      <a href="{$product.url}" class="thumbnail product-thumbnail">
                        <img
                          src = "{$urls.no_picture_image.bySize.home_default.url}"
                        >
                        {if isset($product.images[1])}
                          <img class="product-img-extra" src = "{$product.images[1].bySize.home_default.url}"/ alt="product-img">
                        {/if}
                      </a>
                    {/if}
                {/block}
                <div class="thumbnail-buttons"> 
                    {block name='quick_view'}
                        <div class="quickview-btn">
                                <a href="#" class="quick-view" data-link-action="quickview" >
                                    <i class="material-icons visibility">&#xE8F4;</i>
                                    <span class="lblquickview">{l s='Quick view' d='Shop.Theme.Actions'}</span>
                                </a>
                        </div>
                    {/block} 
                    
                    <div class="wishlist-btn">
                      <a class="wishlist_button" href="#" onclick="WishlistCart('wishlist_block_list', 'add', {$product.id_product}, 0, 1); return false;" title="Add to my wishlist">
                         <span class="lblwishlist"> Add to wishlist</span>
                     </a>
                    </div>

                    <div class="cart-btn">
                      <form action="" method="post">
                          <input class='carttoken' type="hidden" name="token" value="">
                          <input type="hidden" name="id_product" value="{$product.id_product}">
                          <input type="hidden" name="id_customization" value="0">
                          <input type="hidden" name="qty" value="1">
                          <a data-button-action="add-to-cart" class="btn btn-primary ajax_add_to_cart_button add-to-cart">
                              <i class="material-icons shopping-cart"></i>
                              <span class="lblcart">{l s='Add to Cart' d='Shop.Theme.Actions'}</span>
                          </a>
                      </form>
                    </div>
                </div>
                {block name='product_flags'}
                  <ul class="product-flags">
                    {foreach from=$product.flags item=flag}
                      <li class="{$flag.type}">{$flag.label}</li>
                    {/foreach}
                  </ul>
                {/block}
            </div> 
        </div>
        <div class="product-description">
          {block name='product_name'}
            {if $page.page_name == 'index'}
              <h3 class="h3 product-title" itemprop="name"><a href="{$product.url}">{$product.name|truncate:30:'...'}</a></h3>
             {else}
              <h2 class="h3 product-title" itemprop="name"><a href="{$product.url}">{$product.name|truncate:30:'...'}</a></h2>
            {/if}
          {/block}

          {block name='product_reviews'}
              {hook h='displayProductListReviews' product=$product}
          {/block}

          {block name='product_price_and_shipping'}
              {if $product.show_price}
                  <div class="product-price-and-shipping">
                    {if $product.has_discount}
                      {hook h='displayProductPriceBlock' product=$product type="old_price"}

                <span class="sr-only">{l s='Regular price' d='Shop.Theme.Catalog'}</span>
                      <span class="regular-price">{$product.regular_price}</span>
                      {if $product.discount_type === 'percentage'}
                        <span class="discount-percentage discount-product">{$product.discount_percentage}</span>
                      {elseif $product.discount_type === 'amount'}
                        <span class="discount-amount discount-product">{$product.discount_amount_to_display}</span>
                      {/if}
                    {/if}

                    {hook h='displayProductPriceBlock' product=$product type="before_price"}

              <span class="sr-only">{l s='Price' d='Shop.Theme.Catalog'}</span>
                    <span itemprop="price" class="price">{$product.price}</span>

                    {hook h='displayProductPriceBlock' product=$product type='unit_price'}

                  {hook h='displayProductPriceBlock' product=$product type='weight'}
                </div>
              {/if}
          {/block}

          {block name='product_desc'}
              <p class="product-desc" itemprop="description">
                  {$product.description_short|strip_tags:'UTF-8'|truncate:360:'...'}
              </p>
          {/block}
          <div class="highlighted-informations{if !$product.main_variants} no-variants{/if} hidden-sm-down">   
           {block name='product_variants'}
                          {if $product.main_variants}
                              {include file='catalog/_partials/variant-links.tpl' variants=$product.main_variants}
                          {/if}
            {/block}
          </div>
        </div>   
  </div>
  </article>
{/block}
