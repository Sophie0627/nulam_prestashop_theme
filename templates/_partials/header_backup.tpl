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
{block name='header_banner'}
  <div class="header-banner">
    {hook h='displayBanner'}
  </div>
{/block}

{block name='header_nav'}
  <nav class="header-nav">
    <div class="container">
        <div class="row">
        <div class="col-xs-12 col-sm-12 col-md-6 left-nav">
          {hook h='displayNav1'}
        </div>
        <div class="col-xs-12 col-sm-12 col-md-6 right-nav">
            {hook h='displayNav2'}
        </div>
      </div>
    </div>
  </nav>
{/block}

{block name='header_top'}
  <div class="header-top">
    <div class="container">
       <div class="row">
        <div id="desktop_logo">
          {if $page.page_name == 'index'}
            <h1>
              <a href="{$urls.base_url}">
                <img class="logo img-responsive" src="{$shop.logo}" alt="{$shop.name}">
              </a>
            </h1>
            {else}
                <a href="{$urls.base_url}">
                  <img class="logo img-responsive" src="{$shop.logo}" alt="{$shop.name}">
                </a>
          {/if}
        </div>
        {hook h='displayTop'}
        <div class="clearfix"></div>
      </div>
      <div id="mobile_top_menu_wrapper" class="hidden-lg-up" style="display:none;">
        <div id="top_menu_closer">
        <i class="material-icons">&#xE5CD;</i>
        </div>
        <div class="js-top-menu mobile" id="_mobile_top_menu"></div>
      </div>
    </div>
  </div>
  <div class="nav-full-width">
    <div class="container">
      <div class="row">
        {hook h='displayNavFullWidth'}
        <div id="menu-icon" class="menu-icon hidden-lg-up">
        <i class="fa fa-bars" aria-hidden="true"></i>
        </div>
        <div id="_mobile_cart"></div>
        <div id="_mobile_seach_widget"></div>
        <div id="_mobile_user_info"></div>
        <div class="clearfix"></div>
      </div>
    </div>
</div>
{/block}