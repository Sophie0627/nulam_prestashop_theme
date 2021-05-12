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

<div class="block_newsletter footer-block col-lg-4 col-xs-12">
<div class="container">
     <div class="row">
      <div class="footer-title clearfix hidden-lg-up collapsed" data-target="#newsletter" data-toggle="collapse">
          <span class="h3">{l s='Newsletter' d='Shop.Theme.Global'}</span>
          <span class="float-xs-right">
            <span class="navbar-toggler collapse-icons">
              <i class="material-icons add">&#xE313;</i>
              <i class="material-icons remove">&#xE316;</i>
            </span>
          </span>
      </div>
    <div class="newsletter_text hidden-md-down">
      <h3 class="title_block">{l s='Newsletter' d='Shop.Theme.Global'}</h3>
      <p class="block-newsletter-label">{l s='Sign up  for latest offers and promotions' d='Shop.Theme.Global'}</p> 
    </div>
    <div id="newsletter" class=" col-lg-12 collapse footer-dropdown">
      <form action="{$urls.pages.index}#footer" method="post">
        <div class="row">
          <div class="col-xs-12">
            <div class="input-wrapper">
              <input
                name="email"
                type="email"
                value="{$value}"
                placeholder="{l s='Your email address' d='Shop.Forms.Labels'}"
                aria-labelledby="block-newsletter-label"
              >
            </div>

            <input
              class="btn btn-primary hidden-sm-down"
              name="submitNewsletter"
              type="submit"
              value="{l s='Submit' d='Shop.Theme.Actions'}"
            >
            <input
              class="btn btn-primary hidden-md-up"
              name="submitNewsletter"
              type="submit"
              value="{l s='Submit' d='Shop.Theme.Actions'}"
            >
            
            <input type="hidden" name="action" value="0">
            <div class="clearfix"></div>
          </div>
          <div class="col-xs-12">
              {if $conditions}
                <p class="conditions">{$conditions}</p>
              {/if}
              {if $msg}
                <p class="alert {if $nw_error}alert-danger{else}alert-success{/if}">
                  {$msg}
                </p>
              {/if}
              {if isset($id_module)}
                {hook h='displayGDPRConsent' id_module=$id_module}
              {/if}
          </div>
        </div>
      </form>
    </div>
  </div>
</div>
</div>
