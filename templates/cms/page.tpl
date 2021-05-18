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
 
 {if $cms.id == 3}
  {block name='content'}
   <section id="content" class="page-content page-cms page-cms-{$cms.id}">
 
     {block name='cms_content'}
       {$cms.content nofilter}
     {/block}
 
     {block name='hook_cms_dispute_information'}
       {hook h='displayCMSDisputeInformation'}
     {/block}
 
     {block name='hook_cms_print_button'}
       {hook h='displayCMSPrintButton'}
     {/block}
 
   </section>
 {/block}
 {else}
 {assign var='file' value="cms/cms/"|cat:$cms.id}
 {assign var='file' value=$file|cat:"-"}
 {assign var='file' value=$file|cat:$language.iso_code}
 {assign var='file' value=$file|cat:".tpl"}

 {assign var='image' value="/images/cms/"|cat:$cms.id}
 {assign var='image' value=$image|cat:"-"}
 {assign var='image' value=$image|cat:$language.iso_code}
 {assign var='banner' value=$image|cat:".jpg"}

 {block name='content'}
  {include file=$file}
{/block}

{/if}

{extends file=$layout}