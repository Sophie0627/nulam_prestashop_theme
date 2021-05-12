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

<div class="block-contact col-lg-3 footer-block">
    <p class="h3 title_block hidden-md-down">
        {l s='Store information' d='Shop.Theme.Global'}
    </p>
    <div class="footer-title clearfix hidden-lg-up collapsed" data-target="#contact-info-container" data-toggle="collapse">
      <span class="h3 title_block">{l s='Store information' d='Shop.Theme.Global'}</span>
      <span class="navbar-toggler collapse-icons">
        <i class="material-icons add">&#xE313;</i>
        <i class="material-icons remove">&#xE316;</i>
      </span>
    </div>
    
    <div id="contact-info-container" class="footer-contact collapse footer-dropdown">
        <div class="block address">
          <span class="icon"><i class="material-icons">&#xE55F;</i></span>
          <div class="content">{$contact_infos.address.formatted nofilter}</div>
        </div>
        {if $contact_infos.phone}
          <div class="block phone">
            <span class="icon phone"><i class="material-icons">&#xE0CD;</i></span>
            <div class="content">
              <a href="tel:{$contact_infos.phone}">{$contact_infos.phone}</a>
            </div>
          </div>
        {/if}
        {if $contact_infos.fax}
          <div class="block fax">
            <span class="icon"><i class="material-icons">&#xE0DF;</i></span>
            <div class="content">
              {$contact_infos.fax}
            </div>
          </div>
        {/if}
        {if $contact_infos.email}
          <div class="block email">
            <span class="icon"><i class="material-icons">&#xE158;</i></span>
            <div class="content">
              <a href="mailto:{$contact_infos.email}">{$contact_infos.email}</a>
            </div>
          </div>
        {/if}
    </div>
</div>
