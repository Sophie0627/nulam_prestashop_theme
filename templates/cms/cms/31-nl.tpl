<div id="gkPageContent">

    <div class="gkPage">
        <div>
            <div id="gkContent">

                <section id="gkMainbody">
  <div data-es-structure="" class="es es-main  view-account layout-forgetPassword es-responsive wide" id="fd">
    <div class="es-remind es-remind-username mt-20">
      <div class="es-title">
        <h2> Vraag hier u gratis Nulam® Proef of Puppy pakket aan </h2>
      </div>
      <p></p>
      <div class="es-desp small" style="text-align:center;">
        <h3> Uw gegevens </h3>
      </div>
      <p></p>
      <div class="es-remind-form-wrap">
        <form action="index.php?option=com_contactform" method="post" name="remindPassword"
          onsubmit="return validate_data();">
          <div class="input-group input-group-sm"> <span class="input-group-addon">Titel<span
                style="color:red;">*</span>: </span>
            <select id="title" name="title" class="inputtext" size="auto">
              <option value="" selected="selected">Selecteer..</option>
              <option value="Dhr.">Dhr.</option>
              <option value="Mw.">Mw.</option>
            </select>
          </div>
          <div class="input-group input-group-sm"> <span class="input-group-addon">Voornaam<span
                style="color:red;">*</span>: </span>
            <input type="text" id="fname" value="" name="fname" class="form-control">
          </div>

          <div class="input-group input-group-sm"> <span class="input-group-addon">Achternaam<span
                style="color:red;">*</span>:</span>
            <input type="text" value="" name="surname" id="surname" class="form-control">
          </div>

          <div class="input-group input-group-sm"> <span class="input-group-addon">Email<span
                style="color:red;">*</span>:</span>
            <input type="text" value="" name="emailid" id="emailid" class="form-control">
          </div>

          <div class="input-group input-group-sm"> <span class="input-group-addon">Adres<span
                style="color:red;">*</span>:</span>
            <textarea rows="3" cols="20" name="address" id="address"></textarea>
          </div>

          <div class="input-group input-group-sm"> <span class="input-group-addon">Postcode<span
                style="color:red;">*</span>:</span>
            <input type="text" id="zipcode" value="" name="zipcode" class="form-control">
          </div>

          <div class="input-group input-group-sm"> <span class="input-group-addon">Plaats<span
                style="color:red;">*</span>:</span>
            <input type="text" value="" name="citynm" id="citynm" class="form-control">
          </div>

          <div class="input-group input-group-sm"> <span class="input-group-addon">Land<span
                style="color:red;">*</span>:</span>
            <input type="text" value="" id="countrynm" name="countrynm" class="form-control">
          </div>
          <p></p>
          <p></p>

          <h3 style="text-align:center;">Gegevens hond</h3>
          <p></p>
          <div class="input-group input-group-sm"> <span class="input-group-addon">Naam Hond<span
                style="color:red;">*</span>:</span>
            <input type="text" value="" id="dogname" name="dogname" class="form-control">
          </div>

          <div class="input-group input-group-sm"> <span class="input-group-addon">Microchip nummer<span
                style="color:red;">*</span>:</span>
            <input type="text" value="" id="chip_number" name="chip_number" class="form-control">
          </div>

          <div class="input-group input-group-sm"> <span class="input-group-addon">Ras<span
                style="color:red;">*</span>:</span>
            <input type="text" value="" id="breedval" name="breedval" class="form-control">
          </div>

          <div class="input-group input-group-sm"> <span class="input-group-addon">Leeftijd<span
                style="color:red;">*</span>:</span>
            <input type="text" value="" id="age" name="age" class="form-control">
          </div>

          <div class="input-group input-group-sm"> <span class="input-group-addon">Gewicht<span
                style="color:red;">*</span>:</span>
            <input type="text" value="" id="weight" name="weight" class="form-control">
          </div>

          <div class="input-group input-group-sm"> <span class="input-group-addon">Allergie<span
                style="color:red;">*</span>:</span>
            <input type="text" value="" id="allergy" name="allergy" class="form-control">
          </div>

          <div class="input-group input-group-sm"> <span class="input-group-addon">Activiteit<span
                style="color:red;">*</span>:</span>
            <select id="dogactivity" name="dogactivity" class="inputtext" size="auto">
              <option value="" selected="selected">Selecteer..</option>
              <option value="Normal">Normaal</option>
              <option value="Low">Weinig</option>
              <option value="Active">Actief</option>
              <option value="Very Active">Zeer actief</option>
            </select>
          </div>
          <input type="submit" name="sub_val" value="Aanvragen">

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
    var fname_alert = 'Voer voornaam';
    var sname_alert = 'Voer achternaam';
    var email_alert = 'Voer e-mail';
    var address_alert = 'Voer adres';
    var zip_alert = 'Voer zip';
    var city_alert = 'Voer uw stad';

    var country_alert = 'Voer uw land';
    var dogname_alert = 'Voer naam van de hond';
    var microchip_alert = 'Voer geldige microchip nummer';
    var breed_alert = 'Voer breed';
    var age_alert = 'Vul age';
    var weight_alert = 'Voer het gewicht';
    var allergy_alert = 'Voer allergie';
    var activity_alert = 'Selecteer de activiteit';

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