<div id="gkPageContent">
    <div class="gkPage">
        <div>
            <div id="gkContent">
                <section id="gkMainbody">

                    <div class="cart-view">
                        <div class="vm-header">
                            <ul class="datapart">
                                <li class="active"><a href="javascript:void(0)">
                                        <div class="step-title"><span class="number">1</span>
                                            <h2> Details</h2>
                                        </div>
                                    </a></li>
                                <li class="de_active">
                                    <div class="step-title"><span class="number">2</span>
                                        <h2> Shipping Method</h2>
                                    </div>
                                </li>
                                <li class="de_active">
                                    <div class="step-title"><span class="number">3</span>
                                        <h2> Payment Method</h2>
                                    </div>
                                </li>
                                <li class="de_active">
                                    <div class="step-title"><span class="number">4</span>
                                        <h2> Overview</h2>
                                    </div>
                                </li>
                            </ul>
                        </div>
                        <div class="leftpart_editdata">
                            <form method="post" id="userForm" name="userForm" class="form-validate"
                                action="https://nulam.nl/en/component/virtuemart/user.html?Itemid=0">
                                <fieldset>
                                    <ul class="userfield_data">
                                        <li class="dataid_email">
                                            <label class="email" for="email_field">
                                                E-Mail <span class="asterisk">*</span> </label>
                                            <input type="text" id="email_field" name="email" size="30" value=""
                                                class="required" maxlength="100" aria-required="true"
                                                required="required">
                                        </li>
                                        <li class="dataid_username">
                                            <label class="username" for="username_field">
                                                Username </label>
                                            <input type="text" id="username_field" name="username" size="30" value=""
                                                maxlength="25">
                                        </li>
                                        <input type="hidden" name="name" id="name_field" value="">
                                        <li class="dataid_password">
                                            <label class="password" for="password_field">
                                                Password </label>
                                            <input type="password" id="password_field" name="password" size="30"
                                                class="validate-password  inputbox">
                                        </li>
                                        <li class="dataid_password2">
                                            <label class="password2" for="password2_field">
                                                Confirm Password </label>
                                            <input type="password" id="password2_field" name="password2" size="30"
                                                class="validate-password  inputbox">
                                        </li>
                                        <li class="dataid_company">
                                            <label class="company" for="company_field">
                                                Company Name </label>
                                            <input type="text" id="company_field" name="company" size="30" value=""
                                                maxlength="64">
                                        </li>
                                        <li class="dataid_title">
                                            <label class="title" for="title_field">
                                                Title </label>
                                            <select id="title" name="title" class=" vm-chzn-select"
                                                style="width: 210px">
                                                <option value="" selected="selected">-- Select --</option>
                                                <option value="Mr">Mr</option>
                                                <option value="Mrs">Mrs</option>
                                            </select>
                                        </li>
                                        <li class="dataid_first_name">
                                            <label class="first_name" for="first_name_field">
                                                First Name <span class="asterisk">*</span> </label>
                                            <input type="text" id="first_name_field" name="first_name" size="30"
                                                value="" class="required" maxlength="32" aria-required="true"
                                                required="required">
                                        </li>
                                        <li class="dataid_last_name">
                                            <label class="last_name" for="last_name_field">
                                                Last Name <span class="asterisk">*</span> </label>
                                            <input type="text" id="last_name_field" name="last_name" size="30" value=""
                                                class="required" maxlength="32" aria-required="true"
                                                required="required">
                                        </li>
                                        <li class="dataid_address_1">
                                            <label class="address_1" for="address_1_field">
                                                Address 1 <span class="asterisk">*</span> </label>
                                            <input type="text" id="address_1_field" name="address_1" size="30" value=""
                                                class="required" maxlength="64" aria-required="true"
                                                required="required">
                                        </li>
                                        <li class="dataid_House_no">
                                            <label class="House_no" for="House_no_field">
                                                huisnummer <span class="asterisk">*</span> </label>
                                            <input type="text" id="House_no_field" name="House_no" size="30" value=""
                                                class="required" maxlength="7" aria-required="true" required="required">
                                        </li>
                                        <li class="dataid_zip">
                                            <label class="zip" for="zip_field">
                                                Zip / Postal Code <span class="asterisk">*</span> </label>
                                            <input type="text" id="zip_field" name="zip" size="30" value=""
                                                class="required" maxlength="32" aria-required="true"
                                                required="required">
                                        </li>
                                        <li class="dataid_city">
                                            <label class="city" for="city_field">
                                                City <span class="asterisk">*</span> </label>
                                            <input type="text" id="city_field" name="city" size="30" value=""
                                                class="required" maxlength="32" aria-required="true"
                                                required="required">
                                        </li>
                                        <li class="dataid_virtuemart_country_id">
                                            <label class="virtuemart_country_id" for="virtuemart_country_id_field">
                                                Country <span class="asterisk">*</span> </label>
                                            <select id="virtuemart_country_id_field" name="virtuemart_country_id"
                                                class="vm-chzn-select required" style="width: 210px"
                                                aria-required="true" required="required">
                                                <option value="">-- Select --</option>
                                                <option value="21">Belgium</option>
                                                <option value="73">France</option>
                                                <option value="81">Germany</option>
                                                <option value="105">Italy</option>
                                                <option value="150" selected="selected">Netherlands</option>
                                                <option value="222">United Kingdom</option>
                                            </select>
                                        </li>
                                        <li class="dataid_phone_1">
                                            <label class="phone_1" for="phone_1_field">
                                                Phone <span class="asterisk">*</span> </label>
                                            <input type="text" id="phone_1_field" name="phone_1" size="30" value=""
                                                class="required" maxlength="32" aria-required="true"
                                                required="required">
                                        </li>
                                    </ul>
                                </fieldset>
                                <div class="control-buttons">
                                    <div id="reg_text">Please use <strong>Register And Checkout</strong> to easily get
                                        access to your order history, or use <strong>Checkout as Guest</strong></div>
                                    <button name="register" id="submit_save" class="default" type="submit"
                                        onclick="javascript:return myValidator(userForm,true);"
                                        title="Register And Checkout">Register And Checkout</button>
                                    <button name="save" id="submit_save" class="default" title="Checkout as Guest"
                                        type="submit" onclick="javascript:return myValidator(userForm, false);">Checkout
                                        as Guest</button>
                                </div>
                                <input type="hidden" name="option" value="com_virtuemart">
                                <input type="hidden" name="view" value="user">
                                <input type="hidden" name="controller" value="user">
                                <input type="hidden" name="task" value="saveUser">
                                <input type="hidden" name="layout" value="edit_address">
                                <input type="hidden" name="address_type" value="BT">
                                <input type="hidden" name="register_data" id="register_data" value="1"><input
                                    type="hidden" name="c2f627ea1dd1b0a61cc8e120a883b68e" value="1">
                            </form>
                        </div>
                        <div class="rightpart_logindata">
                            <form id="com-form-login"
                                action="https://nulam.nl/en/component/virtuemart/cart/edit_shipment.html?Itemid=0"
                                method="post" name="com-login">
                                <fieldset class="userdata">
                                    <p>When you are already registered, please login directly here</p>
                                    <div class="width30 floatleft" id="com-form-login-username">
                                        <input type="text" name="username" class="inputbox" size="18" title="Username"
                                            value="Username" onblur="if(this.value=='') this.value='Username';"
                                            onfocus="if(this.value=='Username') this.value='';">
                                    </div>

                                    <div class="width30 floatleft" id="com-form-login-password">
                                        <input id="modlgn-passwd" type="password" name="password" class="inputbox"
                                            size="18" title="Password" value="Password"
                                            onblur="if(this.value=='') this.value='Password';"
                                            onfocus="if(this.value=='Password') this.value='';">
                                    </div>

                                    <div class="width30 floatleft" id="com-form-login-remember">
                                        <input type="submit" name="Submit" class="default" value="Login">
                                    </div>
                                    <div class="clr"></div>
                                </fieldset>

                                <div class="width30 floatleft">
                                    <a href="/en/login-register.html?view=remind" rel="nofollow">
                                        Forgot your username?</a>
                                </div>
                                <div class="width30 floatleft">
                                    <a href="/en/login-register.html?view=reset" rel="nofollow">
                                        Forgot your password?</a>
                                </div>

                                <div class="clr"></div>

                                <input type="hidden" name="task" value="user.login">
                                <input type="hidden" name="option" value="com_users">
                                <input type="hidden" name="return"
                                    value="aHR0cHM6Ly9udWxhbS5ubC9lbi9jb21wb25lbnQvdmlydHVlbWFydC9jYXJ0L2VkaXRfc2hpcG1lbnQuaHRtbD9JdGVtaWQ9MA==">
                                <input type="hidden" name="c2f627ea1dd1b0a61cc8e120a883b68e" value="1">
                            </form>


                        </div>
                    </div>
                </section>

            </div>

        </div>
    </div>
</div>