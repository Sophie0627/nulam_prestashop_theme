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
*  @author PrestaShop SA <contact@prestashop.com>
*  @copyright  2007-2018 PrestaShop SA
 * @license   https://opensource.org/licenses/AFL-3.0 Academic Free License 3.0 (AFL-3.0)
*  International Registered Trademark & Property of PrestaShop SA
*}
<div id="gkLang">
    <div class="box ">
        <div class="box-wrap">
            <div class="content">
                <div class="mod-languages ">
                    <ul class="lang-inline">
                        {foreach from=$languages item=language}
                            {if $language.iso_code == 'en' && $page.page_name == 'cms' && !$cms.id|in_array:[12, 22, 23, 24, 25, 26, 27]}
                                <li {if $language.id_lang == $current_language.id_lang} class="lang-active" {/if}>
                                    <a href="{$link->getLanguageLink($language.id_lang)}">{$language.name_simple}</a>
                                </li>
                            {elseif $language.iso_code == 'de' && $page.page_name == 'cms' && !$cms.id|in_array:[15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27]}
                                <li {if $language.id_lang == $current_language.id_lang} class="lang-active" {/if}>
                                    <a href="{$link->getLanguageLink($language.id_lang)}">{$language.name_simple}</a>
                                </li>
                            {elseif $language.iso_code == 'nl' || $page.page_name != 'cms'}
                                <li {if $language.id_lang == $current_language.id_lang} class="lang-active" {/if}>
                                    <a href="{$link->getLanguageLink($language.id_lang)}">{$language.name_simple}</a>
                                </li>
                            {/if}
                        {/foreach}

                    </ul>
                </div>
            </div>
        </div>
    </div>
</div>