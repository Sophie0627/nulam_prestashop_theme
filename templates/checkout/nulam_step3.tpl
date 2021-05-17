<div id="system-message-container">
    <dl id="system-message">
        <dt class="warning">Warning</dt>
        <dd class="warning message">
            <ul>
                <li>Key folder in safepath unaccessible </li>
            </ul>
        </dd>
    </dl>
</div>

<div id="gkPageContent">


    <div class="gkPage">
        <div>
            <div id="gkContent">


                <section id="gkMainbody">

                    <ul class="datapart">
                        <li class="activemore"><a
                                href="https://nulam.nl/en/component/virtuemart/user/editaddresscartST.html?Itemid=0">

                                <div class="step-title"><span class="number">1</span>
                                    <h2> Details</h2>
                                </div>



                            </a></li>
                        <li class="activemore"><a
                                href="https://nulam.nl/en/component/virtuemart/cart/edit_shipment.html?Itemid=0">



                                <div class="step-title"><span class="number">2</span>
                                    <h2> Shipping Method</h2>
                                </div>
                            </a></li>
                        <li class="active"><a href="javascript:void(0)">

                                <div class="step-title"><span class="number">3</span>
                                    <h2> Payment Method</h2>
                                </div>

                            </a></li>
                        <li class="de_active">
                            <div class="step-title"><span class="number">4</span>
                                <h2> Overview</h2>
                            </div>


                        </li>
                    </ul>
                    <form method="post" id="paymentForm" name="choosePaymentRate" action="/en/component/virtuemart/"
                        class="form-validate ">
                        <h1>Please select a payment method</h1>
                        <fieldset><input type="radio" name="virtuemart_paymentmethod_id" id="payment_id_2" value="2">
                            <label for="payment_id_2"><span class="vmpayment"><span class="vmpayment_name">Credit
                                        Card</span><span class="vmpayment_cost fee"> (Fee +€0,94 )</span></span></label>
                            <div id="wrapper_paymentdetails2" style="display:none;" class="wrapper_paymentdetails">
                                <br>
                                <span class="vmpayment_cardinfo">
                                    Pay With Credit Card, Please enter your Credit Card information: <table border="0"
                                        cellspacing="0" cellpadding="2" width="100%">
                                        <tbody>
                                            <tr valign="top">
                                                <td nowrap="" width="10%" align="right">
                                                    <label for="creditcardtype">Credit Card Type: </label>
                                                </td>
                                                <td>

                                                    <ul class="cards">

                                                    </ul>
                                                    <select id="cc_type_2" name="cc_type_2" class="cc_type" rel="2">
                                                        <option value="Visa">Visa</option>
                                                        <option value="Mastercard">MasterCard</option>
                                                        <option value="Amex">American Express</option>
                                                        <option value="Discover">Discover</option>
                                                        <option value="Maestro">Maestro</option>
                                                    </select>
                                                </td>
                                            </tr>
                                            <tr valign="top">
                                                <td nowrap="" width="10%" align="right">
                                                    <label for="cc_type">Credit Card Number: </label>
                                                </td>
                                                <td>
                                                    <input type="text" size="30" class="inputbox" id="cc_number_2"
                                                        name="cc_number_2" value="" autocomplete="off" onchange="ccError=razCCerror(2);
                            CheckCreditCardNumber(this . value, 2);
                        if (!ccError) {
                        this.value='';}">
                                                    <div id="cc_cardnumber_errormsg_2"></div>
                                                </td>
                                            </tr>
                                            <tr valign="top">
                                                <td nowrap="" width="10%" align="right">
                                                    <label for="cc_cvv">CVV: </label>
                                                </td>
                                                <td>
                                                    <input type="text" class="inputbox" id="cc_cvv_2" name="cc_cvv_2"
                                                        maxlength="4" size="5" value="" autocomplete="off">
                                                    <span class="hasTip"
                                                        title="What is CVV?::CVV is the three or four-digit number on the back of a credit card (on the front for American Express). ">
                                                        What is CVV? </span>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td nowrap="" width="10%" align="right">Expiration Date: </td>
                                                <td>
                                                    <select id="cc_expire_month_2" name="cc_expire_month_2">
                                                        <option value="0">MONTH</option>
                                                        <option value="01">January</option>
                                                        <option value="02">February</option>
                                                        <option value="03">March</option>
                                                        <option value="04">April</option>
                                                        <option value="05" selected="selected">May</option>
                                                        <option value="06">June</option>
                                                        <option value="07">July</option>
                                                        <option value="08">August</option>
                                                        <option value="09">September</option>
                                                        <option value="10">October</option>
                                                        <option value="11">November</option>
                                                        <option value="12">December</option>
                                                    </select>
                                                    / <select id="cc_expire_year_2" name="cc_expire_year_2"
                                                        onchange="var month = document.getElementById('cc_expire_month_'2); if(!CreditCardisExpiryDate(month.value,this.value, '2')){this.value='';month.value='';}">
                                                        <option value="0">YEAR</option>
                                                        <option value="2021" selected="selected">2021</option>
                                                        <option value="2022">2022</option>
                                                        <option value="2023">2023</option>
                                                        <option value="2024">2024</option>
                                                        <option value="2025">2025</option>
                                                        <option value="2026">2026</option>
                                                        <option value="2027">2027</option>
                                                        <option value="2028">2028</option>
                                                        <option value="2029">2029</option>
                                                        <option value="2030">2030</option>
                                                        <option value="2031">2031</option>
                                                        <option value="2032">2032</option>
                                                    </select>
                                                    <div id="cc_expiredate_errormsg_2"></div>
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </span>
                            </div>
                            <br><input type="radio" name="virtuemart_paymentmethod_id" id="payment_id_9" value="9">
                            <label for="payment_id_9"><span class="vmpayment"><span class="vmpayment_name">Paypal
                                    </span><span class="vmpayment_cost fee"> (Fee +€1,42 )</span></span></label>
                            <br><input type="radio" name="virtuemart_paymentmethod_id" id="payment_id_5" value="5">
                            <label for="payment_id_5"><span class="vmpayment"><span
                                        class="vmpayment_name">iDeal</span></span></label>
                            <div id="wrapper_paymentdetails5" class="wrapper_paymentdetails" style="display: none;">
                                <table>
                                    <tbody>
                                        <tr>
                                            <td class="brq_label">Selecteer uw bank</td>
                                            <td> <select id="brq_service_ideal_issuer" name="brq_service_ideal_issuer"
                                                    class="selectlist">
                                                    <option value="ABNAMRO">ABN AMRO</option>
                                                    <option value="ASNBANK">ASN Bank</option>
                                                    <option value="INGBANK">ING</option>
                                                    <option value="RABOBANK">Rabobank</option>
                                                    <option value="SNSBANK">SNS Bank</option>
                                                    <option value="SNSREGIO">RegioBank</option>
                                                    <option value="TRIODOS">Triodos Bank</option>
                                                    <option value="LANSCHOT">Van Lanschot</option>
                                                    <option value="KNAB">Knab</option>
                                                    <option value="BUNQ">Bunq</option>
                                                </select>
                                            </td>
                                        </tr>
                                    </tbody>
                                </table><small><i>All fields with an asterisk(*) are mandatory</i></small>
                            </div><br>
                        </fieldset> <input type="hidden" name="option" value="com_virtuemart">
                        <input type="hidden" name="view" value="cart">
                        <input type="hidden" name="task" value="updatecart">
                        <!--<input type="hidden" name="setval" value="1" />-->
                        <input type="hidden" name="controller" value="cart">


                        <div class="buttonBar-right">
                            <button name="updatecart" class="button vm-button-correct" type="submit">Go Next</button>

                        </div>
                    </form>

                    <script id="creditcard_js" type="text/javascript">
                        //<![CDATA[ 
                        var ccErrors = new Array()
                        ccErrors[0] = 'Unknown card type';
                        ccErrors[1] = 'No card number provided';
                        ccErrors[2] = 'Credit card number has in invalid format';
                        ccErrors[3] = 'Credit card number is invalid';
                        ccErrors[4] = 'Credit card number has an inappropriate number of digits';
                        ccErrors[5] = 'Credit Card has expired'; //]]>
                    </script>

                    <script id="autoPayment_js" type="text/javascript">
                        //<![CDATA[ 
                        radiobtn = document.getElementById("payment_id_-1");
                        if (radiobtn !== null) { radiobtn.checked = true; } //]]>
                    </script>



                </section>

            </div>

        </div>
    </div>
</div>