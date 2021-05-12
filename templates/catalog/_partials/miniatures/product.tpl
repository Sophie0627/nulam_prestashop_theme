<div class="row">
    <div class="product floatleft width100 ">
        <div class="spacer">
            <a title="{$product.name|truncate:30:'...'}" href="{$product.url}">
                <img src="{$product.cover.bySize.large_default.url|replace:'-large_default':''}" alt="{if !empty($product.cover.legend)}{$product.cover.legend}{else}{$product.name|truncate:30:'...'}{/if}" class="browseProductImage">
            </a>
            <h3 class="catProductTitle"><a href="{$product.url}">{$product.name|truncate:30:'...'}</a></h3>
            <div class="product_shortdesc">{$product.description_short|strip_tags:'UTF-8'|truncate:360:'...'}</div>
            <a href="{$product.url}" class="readon detail_btn">Artikelgegevens</a>
        </div>
    </div>
</div>