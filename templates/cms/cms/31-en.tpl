<div id="gkPageContent">

    <div class="gkPage">
        <div>
            <div id="gkContent">

                <section id="gkMainbody">
<div data-es-structure="" class="es es-main  view-account layout-forgetPassword es-responsive wide" id="fd">
    <div class="es-remind es-remind-username mt-20">
        <div class="es-title">
            <h2> Order here your free Nulam® Sample or Puppy pack </h2>
        </div>
        <p></p>
        <div class="es-desp small" style="text-align:center;">
            <h3> Your contact details </h3>
        </div>
        <p></p>
        <div class="es-remind-form-wrap">
            <form action="index.php?option=com_contactform" method="post" name="remindPassword"
                onsubmit="return validate_data();">
                <div class="input-group input-group-sm"> <span class="input-group-addon">Title<span
                            style="color:red;">*</span>: </span>
                    <select id="title" name="title" class="inputtext" size="auto">
                        <option value="" selected="selected">Select..</option>
                        <option value="Mr.">Mr.</option>
                        <option value="Mrs.">Mrs.</option>
                    </select>
                </div>
                <div class="input-group input-group-sm"> <span class="input-group-addon">First Name<span
                            style="color:red;">*</span>: </span>
                    <input type="text" id="fname" value="" name="fname" class="form-control">
                </div>

                <div class="input-group input-group-sm"> <span class="input-group-addon">Sur Name<span
                            style="color:red;">*</span>:</span>
                    <input type="text" value="" name="surname" id="surname" class="form-control">
                </div>

                <div class="input-group input-group-sm"> <span class="input-group-addon">Email<span
                            style="color:red;">*</span>:</span>
                    <input type="text" value="" name="emailid" id="emailid" class="form-control">
                </div>

                <div class="input-group input-group-sm"> <span class="input-group-addon">Address<span
                            style="color:red;">*</span>:</span>
                    <textarea rows="3" cols="20" name="address" id="address"></textarea>
                </div>

                <div class="input-group input-group-sm"> <span class="input-group-addon">Zip<span
                            style="color:red;">*</span>:</span>
                    <input type="text" id="zipcode" value="" name="zipcode" class="form-control">
                </div>

                <div class="input-group input-group-sm"> <span class="input-group-addon">City<span
                            style="color:red;">*</span>:</span>
                    <input type="text" value="" name="citynm" id="citynm" class="form-control">
                </div>

                <div class="input-group input-group-sm"> <span class="input-group-addon">Country<span
                            style="color:red;">*</span>:</span>
                    <input type="text" value="" id="countrynm" name="countrynm" class="form-control">
                </div>
                <p></p>
                <p></p>

                <h3 style="text-align:center;">Details Dog</h3>
                <p></p>
                <div class="input-group input-group-sm"> <span class="input-group-addon">Dog Name<span
                            style="color:red;">*</span>:</span>
                    <input type="text" value="" id="dogname" name="dogname" class="form-control">
                </div>

                <div class="input-group input-group-sm"> <span class="input-group-addon">Microchip number<span
                            style="color:red;">*</span>:</span>
                    <input type="text" value="" id="chip_number" name="chip_number" class="form-control">
                </div>

                <div class="input-group input-group-sm"> <span class="input-group-addon">Breed<span
                            style="color:red;">*</span>:</span>
                    <input type="text" value="" id="breedval" name="breedval" class="form-control">
                </div>

                <div class="input-group input-group-sm"> <span class="input-group-addon">Age<span
                            style="color:red;">*</span>:</span>
                    <input type="text" value="" id="age" name="age" class="form-control">
                </div>

                <div class="input-group input-group-sm"> <span class="input-group-addon">Weight<span
                            style="color:red;">*</span>:</span>
                    <input type="text" value="" id="weight" name="weight" class="form-control">
                </div>

                <div class="input-group input-group-sm"> <span class="input-group-addon">Allergy<span
                            style="color:red;">*</span>:</span>
                    <input type="text" value="" id="allergy" name="allergy" class="form-control">
                </div>

                <div class="input-group input-group-sm"> <span class="input-group-addon">Activity<span
                            style="color:red;">*</span>:</span>
                    <select id="dogactivity" name="dogactivity" class="inputtext" size="auto">
                        <option value="" selected="selected">Select..</option>
                        <option value="Normal">Normal</option>
                        <option value="Low">Low</option>
                        <option value="Active">Active</option>
                        <option value="Very Active">Very Active</option>
                    </select>
                </div>
                <input type="submit" name="sub_val" value="Submit">

                <input type="hidden" value="com_contactform" name="option">
                <input type="hidden" value="transactionhistory" name="controller">
                <input type="hidden" value="savedata" name="task">
            </form>
        </div>
    </div>

</div>
 </section>

            </div>

        </div>
    </div>
</div>
<script>
    var fname_alert = 'Please enter first name';
    var sname_alert = 'Please enter surname';
    var email_alert = 'Please enter email';
    var address_alert = 'Please enter address';
    var zip_alert = 'Please enter zip';
    var city_alert = 'Please enter your city';

    var country_alert = 'Please enter your country';
    var dogname_alert = 'Please enter dog name';
    var microchip_alert = 'Please enter valid microchip number';
    var breed_alert = 'Please enter breed';
    var age_alert = 'Please enter age';
    var weight_alert = 'Please enter weight';
    var allergy_alert = 'Please enter allergy';
    var activity_alert = 'Please select activity';

    function validate_data() {
        var form = document.remindPassword;
        var numbers = /^[0-9]+$/;
        var chipnumber = form.chip_number.value;

        if (form.fname.value == '') {
            alert(fname_alert);
            return false;
        } else if (form.surname.value == '') {
            alert(sname_alert);
            return false;
        } else if (form.emailid.value == '') {
            alert(email_alert);
            return false;
        } else if (form.zipcode.value == '') {
            alert(zip_alert);
            return false;
        } else if (form.citynm.value == '') {
            alert(city_alert);
            return false;
        } else if (form.countrynm.value == '') {
            alert(country_alert);
            return false;
        } else if (form.dogname.value == '') {
            alert(dogname_alert);
            return false;
        } else if (chipnumber == '' || !chipnumber.match(numbers) || chipnumber.length != 15) {
            alert(microchip_alert);
            return false;
        } else if (form.breedval.value == '') {
            alert(breed_alert);
            return false;
        } else if (form.age.value == '') {
            alert(age_alert);
            return false;
        } else if (form.weight.value == '') {
            alert(weight_alert);
            return false;
        } else if (form.allergy.value == '') {
            alert(allergy_alert);
            return false;
        } else if (form.dogactivity.value == '') {
            alert(activity_alert);
            return false;
        }
    }
</script>