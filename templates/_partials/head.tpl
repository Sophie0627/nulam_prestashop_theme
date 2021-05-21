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
{block name='head_charset'}
  <meta charset="utf-8">
{/block}
{block name='head_ie_compatibility'}
  <meta http-equiv="x-ua-compatible" content="ie=edge">
{/block}
{block name='head_seo'}
  {if $page.page_name == 'category'}
    {assign var='meta_title' value=$category.meta_title}
    {assign var='meta_description' value=$category.meta_description}
    {assign var='meta_keywords' value=$category.meta_keywords}
  {elseif $page.page_name == 'product'}
    {assign var='meta_title' value=$product.meta_title}
    {assign var='meta_keywords' value=$product.meta_keywords}
    {assign var='meta_description' value=$product.meta_description}
  {elseif $page.page_name == 'cms'}
    {assign var='meta_title' value=$cms.meta_title}
    {assign var='meta_keywords' value=$cms.meta_keywords}
    {assign var='meta_description' value=$cms.meta_description}
  {else}
    {assign var='meta_keywords' value=$page.meta.keywords}
    {assign var='meta_title' value=$page.meta.title}
    {assign var='meta_description' value=$page.meta.description}
  {/if}
  <title>{block name='head_seo_title'}{$meta_title}{/block}</title>
  <meta name="title" content="{block name='head_seo_description'}{$meta_title}{/block}">
  <meta name="description" content="{block name='head_seo_description'}{$meta_description}{/block}">
  <meta name="keywords" content="{block name='head_seo_keywords'}{$meta_keywords}{/block}">
  {if $page.meta.robots !== 'index'}
    <meta name="robots" content="{$page.meta.robots}">
  {/if}
  {if $page.canonical}
    <link rel="canonical" href="{$page.canonical}">
  {/if}
  {block name='head_hreflang'}
      {foreach from=$urls.alternative_langs item=pageUrl key=code}
            <link rel="alternate" href="{$pageUrl}" hreflang="{$code}">
      {/foreach}
  {/block}
{/block}
{block name='head_viewport'}
  <meta name="viewport" content="width=device-width, initial-scale=1">
{/block}

{block name='head_icons'}
  <link rel="icon" type="image/vnd.microsoft.icon" href="{$shop.favicon}?{$shop.favicon_update_time}">
  <link rel="shortcut icon" type="image/x-icon" href="{$shop.favicon}?{$shop.favicon_update_time}">
{/block}

{block name='stylesheets'}
  {include file="_partials/stylesheets.tpl" stylesheets=$stylesheets}
{/block}

{block name='javascript_head'}
  {include file="_partials/javascript.tpl" javascript=$javascript.head vars=$js_custom_vars}
{/block}

{block name='hook_header'}
  {$HOOK_HEADER nofilter}
{/block}

{block name='hook_extra'}{/block}
