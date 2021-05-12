/* global jQuery, prestashop */

/**
 * This module exposes an extension point in the form of the `showModal` function.
 *
 * If you want to override the way the modal window is displayed, simply define:
 *
 * prestashop.blockcart = prestashop.blockcart || {};
 * prestashop.blockcart.showModal = function myOwnShowModal (modalHTML) {
 *   // your own code
 *   // please not that it is your responsibility to handle closing the modal too
 * };
 *
 * Attention: your "override" JS needs to be included **before** this file.
 * The safest way to do so is to place your "override" inside the theme's main JS file.
 *
 */

jQuery(document).ready(function () {
  prestashop.blockcart = prestashop.blockcart || {};

  var showModal = prestashop.blockcart.showModal || function (modal) {
    var jQuerybody = jQuery('body');
    jQuerybody.append(modal);
    jQuerybody.one('click', '#blockcart-modal', function (event) {
      if (event.target.id === 'blockcart-modal') {
        jQuery(event.target).remove();
      }
    });
  };

  jQuery(document).ready(function () {
    prestashop.on(
      'updateCart',
      function (event) {
        var refreshURL = jQuery('.blockcart').data('refresh-url');
        var requestData = {};

        if (event && event.reason) {
          requestData = {
            id_product_attribute: event.reason.idProductAttribute,
            id_product: event.reason.idProduct,
            action: event.reason.linkAction
          };
        }
        jQuery.post(refreshURL, requestData).then(function (resp) {
          // jQuery('.blockcart').parent().replaceWith(resp.preview);
          //   jQuery('#header .blockcart .product-container').slimScroll({
          //     height: jQuery('#header .blockcart .product-container .product').length > 1 ? '270px':'100%'
          //   });
          if (resp.modal) {
            // showModal(resp.modal);
          }
          window.location = prestashop.urls.pages.cart;
        }).fail(function (resp) {
          prestashop.emit('handleError', {eventType: 'updateShoppingCart', resp: resp});
        });
      }
    );
  });
});
