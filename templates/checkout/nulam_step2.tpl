<div id="gkPageContent">


    <div class="gkPage">
        <div>
            <div id="gkContent">


                <section id="gkMainbody">

                    <script>
                        function check_shipping(ship_id) {
                            if (ship_id == 2) {
                                document.getElementById("location_div").style.display = "block";
                                document.getElementById("shipping_cost_div").style.display = "none";
                                document.getElementById("shipping_cost_express").style.display = "none";

                            } else if (ship_id == 3) {
                                document.getElementById("location_div").style.display = "none";
                                document.getElementById("shipping_cost_div").style.display = "block";
                                document.getElementById("shipping_cost_express").style.display = "none";
                            } else if (ship_id == 12) {
                                document.getElementById("location_div").style.display = "none";
                                document.getElementById("shipping_cost_div").style.display = "none";
                                document.getElementById("shipping_cost_express").style.display = "block";
                                document.getElementById("night_delivery").style.display = "none";
                                document.getElementById("morning_delivery").style.display = "block";
                            } else if (ship_id == 13) {
                                document.getElementById("location_div").style.display = "none";
                                document.getElementById("shipping_cost_div").style.display = "none";
                                document.getElementById("shipping_cost_express").style.display = "block";
                                document.getElementById("night_delivery").style.display = "block";
                                document.getElementById("morning_delivery").style.display = "none";
                            }
                        }
                    </script>
                    <ul class="datapart">
                        <li class="activemore"><a
                                href="https://nulam.nl/en/component/virtuemart/user/editaddresscartST.html?Itemid=0">


                                <div class="step-title"><span class="number">1</span>
                                    <h2> Details</h2>
                                </div>



                            </a></li>
                        <li class="active"><a href="javascript:void(0)">
                                <div class="step-title"><span class="number">2</span>
                                    <h2> Shipping Method</h2>
                                </div>




                            </a></li>
                        <li class="de_active">

                            <div class="step-title"><span class="number">3</span>
                                <h2> Payment Method</h2>
                            </div>


                        </li>
                        <li class="de_active">
                            <div class="step-title"><span class="number">4</span>
                                <h2>Overview</h2>
                            </div>



                        </li>
                    </ul>
                    <form method="post" id="userForm" name="chooseShipmentRate" action="/en/component/virtuemart/"
                        class="form-validate">

                        <h1>Please select a shipment method</h1>
                        <fieldset>
                            <input type="radio" onchange="check_shipping(3)" name="virtuemart_shipmentmethod_id"
                                id="shipment_id_3" value="3">
                            <label for="shipment_id_3"><span class="vmshipment"><span class="vmshipment_name">Standaard
                                        bezorging ( 1-2 werkdagen )</span><span class="vmshipment_cost fee"> (Fee
                                        +€14,95 )</span></span></label>
                            <br>
                        </fieldset>
                        <div id="location_div" style="display:none;">
                            <div style="display:none;">
                                <select name="pickup_loc" id="pickup_lock">
                                    <option selected="selected" value="0">Pickup City</option>
                                    <option value="Langedijk">Langedijk</option>
                                </select>
                            </div>
                        </div>
                        <div id="shipping_cost_div" style="display:none;">
                            <h3>&nbsp;</h3>
                        </div>

                        <div id="shipping_cost_express" style="display:none;">

                            <h3 id="express_shiptitle">&nbsp;</h3>
                            <link href="/plugins/system/delivery_date_price_calculation/assets/css/style.css"
                                rel="stylesheet" type="text/css">

                            <div class="smartcms_delivery_date">
                                <ul class="shipdate_data" id="morning_delivery" style="display:none;">
                                    <li class="first_part">
                                        <span class="date_part">
                                            <span class="day_nm">Thu</span>
                                            <span class="date_part">13-05</span>
                                        </span>
                                        <span class="radio_opt">
                                            <input type="radio" name="date_opt" id="date_opt1"
                                                onclick="setdelivery_date(this.value,1);" value="13-05-2021">
                                            <span class="time_part">8:00 - 18:00</span>
                                        </span>
                                    </li>

                                    <li class="second_part">
                                        <span class="date_part">
                                            <span class="day_nm">Fri</span>
                                            <span class="date_part">14-05</span>
                                        </span>
                                        <span class="radio_opt">
                                            <input type="radio" name="date_opt" id="date_opt2"
                                                onclick="setdelivery_date(this.value,2);" value="14-05-2021">
                                            <span class="time_part">8:00 - 18:00</span>
                                        </span>
                                    </li>

                                    <li class="third_part">
                                        <span class="date_part">
                                            <span class="day_nm">Tue</span>
                                            <span class="date_part">18-05</span>
                                        </span>
                                        <span class="radio_opt">
                                            <input type="radio" name="date_opt" id="date_opt3"
                                                onclick="setdelivery_date(this.value,3);" value="18-05-2021">
                                            <span class="time_part">8:00 - 18:00</span>
                                        </span>
                                    </li>
                                </ul>

                                <ul class="shipdate_data" id="night_delivery" style="display:none;">
                                    <li class="first_part">
                                        <span class="date_part">
                                            <span class="day_nm">Thu</span>
                                            <span class="date_part">13-05</span>
                                        </span>
                                        <span class="radio_opt">
                                            <input type="radio" name="date_opt_n" id="date_opt4"
                                                onclick="setdelivery_date(this.value,4);" value="13-05-2021">
                                            <span class="time_part">18:00 - 22:00</span>
                                        </span>
                                    </li>

                                    <li class="second_part">
                                        <span class="date_part">
                                            <span class="day_nm">Fri</span>
                                            <span class="date_part">14-05</span>
                                        </span>
                                        <span class="radio_opt">
                                            <input type="radio" name="date_opt_n" id="date_opt5"
                                                onclick="setdelivery_date(this.value,5);" value="14-05-2021">
                                            <span class="time_part">18:00 - 22:00</span>
                                        </span>
                                    </li>

                                    <li class="third_part">
                                        <span class="date_part">
                                            <span class="day_nm">Tue</span>
                                            <span class="date_part">18-05</span>
                                        </span>
                                        <span class="radio_opt">
                                            <input type="radio" name="date_opt_n" id="date_opt6"
                                                onclick="setdelivery_date(this.value,6);" value="18-05-2021">
                                            <span class="time_part">18:00 - 22:00</span>
                                        </span>
                                    </li>
                                </ul>
                                <input id="delivery_dateval" name="smartcms_delivery_date" type="hidden"
                                    value="13-05-2021">
                                <input id="smartcms_delivery_fee" name="smartcms_delivery_fee" type="hidden">
                            </div>
                            <script>
                                jQuery(function() {
                                    var dates_disable = null;
                                    var price_calculation = null;
                                    var regular_day = [];
                                    var delivery_date = getCookie("delivery_date");
                                    var delivery_opt = getCookie("delivery_opt");
                                    var delivery_opt1 = getCookie("delivery_opt1");
                                    if (!delivery_date) {
                                        delivery_date = document.getElementById("date_opt1").value;
                                        document.getElementById("delivery_dateval").value = delivery_date;
                                        document.getElementById("date_opt1").checked = true;
                                        document.getElementById("date_opt4").checked = true;
                                        eraseCookie("delivery_date");
                                        setCookie("delivery_date", delivery_date);
                                        setCookie("delivery_opt", 1);
                                        setCookie("delivery_opt1", 4);
                                    }
                                    console.log(document.cookie);
                                    if (delivery_date) {
                                        //jQuery("#datepicker").val(delivery_date);
                                        var cdate = '2021-05-12';
                                        var cdate = new Date(cdate);
                                        document.getElementById("delivery_dateval").value = delivery_date;
                                        document.getElementById("date_opt" + delivery_opt).checked = true;
                                        document.getElementById("date_opt" + delivery_opt1).checked = true;
                                        // cover date
                                        var checkChar = "dd-mm-yy".indexOf("-");
                                        if (checkChar >= 0) {
                                            var res = "dd-mm-yy".split("-");
                                            var getDay = delivery_date.split("-");
                                        } else {
                                            var res = "dd-mm-yy".split("/");
                                            var getDay = delivery_date.split("/");
                                        }
                                        if (res) {
                                            if (res[0] == "dd") {
                                                if (res[1] == "mm") {
                                                    var ngay = getDay[0];
                                                    var thang = getDay[1];
                                                    var nam = getDay[2];
                                                } else {
                                                    var ngay = getDay[0];
                                                    var thang = getDay[2];
                                                    var nam = getDay[1];
                                                }
                                            } else if (res[0] == "mm") {
                                                if (res[1] == "dd") {
                                                    var ngay = getDay[1];
                                                    var thang = getDay[0];
                                                    var nam = getDay[2];
                                                } else {
                                                    var ngay = getDay[2];
                                                    var thang = getDay[0];
                                                    var nam = getDay[1];
                                                }
                                            } else {
                                                if (res[1] == "dd") {
                                                    var ngay = getDay[1];
                                                    var thang = getDay[2];
                                                    var nam = getDay[0];
                                                } else {
                                                    var ngay = getDay[2];
                                                    var thang = getDay[1];
                                                    var nam = getDay[0];
                                                }
                                            }
                                        }
                                        // end cover date
                                        if (price_calculation) {
                                            var newarr1 = [];
                                            var pdate = new Date(nam + '-' + thang + '-' + ngay);
                                            var khoangcach = (pdate - cdate) / 86400000;
                                            jQuery.each(price_calculation, function(key, val) {
                                                var rule = val.split("+");
                                                if (rule[0] >= khoangcach) {
                                                    newarr1.push(rule[1]);
                                                } else
                                                    newarr1 = [];
                                            });
                                            var price = newarr1[0];
                                            if (price) {
                                                jQuery.ajax({
                                                    url: "https://nulam.nl/plugins/system/delivery_date_price_calculation/views/getPrices.php",
                                                    type: "POST",
                                                    data: {price : price},
                                                    beforeSend: function(data) {
                                                        jQuery(".smartcms_delivery_date").append(
                                                            "<img class='smartcms_ajax' src='https://nulam.nl/plugins/system/delivery_date_price_calculation/assets/images/ajax-loader.gif'>"
                                                            );
                                                    },
                                                    success: function(data) {
                                                        jQuery(".smartcms_ajax").remove();
                                                        jQuery("span[class=PricebillTotal]").text(
                                                            data + " €");
                                                        jQuery("#smartcms_delivery_fee").val(price);
                                                        jQuery(".smartcms_delivery_date").append(
                                                            "<span class='add_price' style='color: red;'>Delivery date fee: " +
                                                            price + " €</span>");
                                                    }
                                                });
                                            } else
                                                jQuery("#smartcms_delivery_fee").val(0);
                                            //alert(price_calculation.max());
                                        } ////////////////
                                    }

                                    function datesDisable(date) {

                                        dmy = date.getFullYear() + "-" + (date.getMonth() + 1) + "-" + date
                                            .getDate();

                                        if (jQuery.inArray(dmy, dates_disable) > -1) {
                                            return [false, "", "Unavailable"];

                                        }

                                        if (jQuery.inArray(date.getDay(), regular_day) > -1) {
                                            return [false, "", "Unavailable"];
                                        }

                                        return [true, ""];
                                    }
                                    jQuery(".vm-fieldset-customer-note").before(jQuery(
                                        ".smartcms_delivery_date"));
                                    
                                });

                                function setdelivery_date(date_val, optval) {
                                    document.getElementById("delivery_dateval").value = date_val;
                                    document.getElementById("date_opt" + optval).checked = true;
                                    eraseCookie("delivery_date");
                                    setCookie("delivery_date", date_val);
                                    if (optval <= 3)
                                        setCookie("delivery_opt", optval);
                                    else
                                        setCookie("delivery_opt1", optval);
                                    console.log(document.cookie);
                                }
                                // Set cookie
                                function setCookie(name, value, expires, path, domain, secure) {
                                    document.cookie = name + "=" + escape(value) +
                                        ((expires == null) ? "" : "; expires=" + expires.toGMTString()) +
                                        ((path == null) ? "" : "; path=" + path) +
                                        ((domain == null) ? "" : "; domain=" + domain) +
                                        ((secure == null) ? "" : "; secure");
                                }
                                // Read cookie
                                function getCookie(name) {
                                    var cname = name + "=";
                                    var dc = document.cookie;
                                    if (dc.length > 0) {
                                        begin = dc.indexOf(cname);
                                        if (begin != -1) {
                                            begin += cname.length;
                                            end = dc.indexOf(";", begin);
                                            if (end == -1) end = dc.length;
                                            return unescape(dc.substring(begin, end));
                                        }
                                    }
                                    return null;
                                }
                                //delete cookie
                                function eraseCookie(name, path, domain) {
                                    if (getCookie(name)) {
                                        document.cookie = name + "=" +
                                            ((path == null) ? "" : "; path=" + path) +
                                            ((domain == null) ? "" : "; domain=" + domain) +
                                            "; expires=Thu, 18 Dec 2013 00:00:01 GMT";
                                    }
                                }
                            </script>

                        </div>

                        <input type="hidden" name="option" value="com_virtuemart">
                        <input type="hidden" name="view" value="cart">
                        <input type="hidden" name="task" value="updatecart">
                        <input type="hidden" name="controller" value="cart">

                        <div class="buttonBar-right">
                            <button name="updatecart" class="button vm-button-correct" type="submit">Go Next</button>

                        </div>
                    </form>


                    <script id="autoShipment_js" type="text/javascript">
                        //<![CDATA[ 
                        radiobtn = document.getElementById("shipment_id_-1");
                        if (radiobtn !== null) { radiobtn.checked = true; } //]]>
                    </script>



                </section>

            </div>

        </div>
    </div>
</div>