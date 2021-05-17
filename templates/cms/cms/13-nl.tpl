<div id="gkPageContent">
    <section id="gkTop1" class="gk-clearfix">
        <div class="gk-clearfix">
            <div class="box  voeding_cal gkmod-1">
                <div class="box-wrap">
                    <h3 class="header gkPage"><span>Vind de juiste voeding voor u hond met behulp van de Nulam®
                            voedingscalculator</span></h3>
                    <div class="content gkPage">
                        <script type="text/javascript" language="javascript">
                            var select_one_filter_vale = "Selecteer ten minste één filter waarde";

                            function check_value() {
                                var form = document.hotel_search;

                                if (form.dogage.value == '' && form.dogsize.value == '' && form.dogactivity.value ==
                                    '' && form.dogallergy.value == '' && form.dognutrizion.value == '') {
                                    alert(select_one_filter_vale);
                                    return false;
                                q=[];
                                if($('#dogage').val()){
                                    q.push('Age-'+$('#dogage').val());
                                }
                                if($('#dogsize').val()){
                                    q.push('Dog+Size-'+$('#dogsize').val());
                                }
                                if($('#dogactivity').val()){
                                    q.push('Activity-'+$('#dogactivity').val());
                                }
                                if($('#dogallergy').val()){
                                    q.push('Allergy-'+$('#dogallergy').val());
                                }
                                if($('#dognutrizion').val()){
                                    q.push('Nutrition-'+$('#dognutrizion').val());
                                }

                                query = '?q='+q.join('/');
                                window.location = 'https://budgetdesinfectie.nl/shop.html'+query;
                                }
                            }
                        </script>

                        <div class="main-div-form">
                            <form action="#" method="post" id="hotel_search"
                                name="hotel_search">

                                <table cellpadding="5px" cellspacing="5px" width="100%">
                                    <tbody>
                                        <tr>
                                            <td width="20%">Leeftijd</td>
                                            <td><select id="dogage" name="dogage" class="inputtext" size="auto"
                                                    onchange="show_size(this.value)">
                                                    <option value="" selected="selected">Selecteer..</option>
                                                    <option value="Puppy">4 weken-6 maanden</option>
                                                    <option value="Adult">6 maanden-7 jaar</option>
                                                    <option value="Senior">leeftijd 7+ jaar</option>
                                                </select>
                                            </td>
                                        </tr>

                                        <tr id="dog_data">
                                            <td>Formaat</td>
                                            <td><select id="dogsize" name="dogsize" class="inputtext" size="auto">
                                                    <option value="" selected="selected">Selecteer..</option>
                                                    <option value="Medium">Middel</option>
                                                    <option value="Small">Klein</option>
                                                    <option value="Large">groot</option>
                                                </select>
                                            </td>
                                        </tr>

                                        <tr>
                                            <td>Activiteit</td>
                                            <td><select id="dogactivity" name="dogactivity" class="inputtext"
                                                    size="auto">
                                                    <option value="" selected="selected">Selecteer..</option>
                                                    <option value="Normal">Normaal</option>
                                                    <option value="Low">Weinig</option>
                                                    <option value="Active">Actief</option>
                                                    <option value="Veryactive">Zeer actief</option>
                                                </select>
                                            </td>
                                        </tr>

                                        <tr>
                                            <td>Allergie</td>
                                            <td><select id="dogallergy" name="dogallergy" class="inputtext" size="auto">
                                                    <option value="" selected="selected">Selecteer..</option>
                                                    <option value="Noallergy">Geen Allergie</option>
                                                    <option value="Beef">Rund</option>
                                                    <option value="Chicken">Kip</option>
                                                    <option value="Graingluten">Graanvrij</option>
                                                    <option value="Hypoallergenic">Hypoallergeen </option>
                                                </select>
                                            </td>
                                        </tr>

                                        <tr>
                                            <td>Voeding</td>
                                            <td><select id="dognutrizion" name="dognutrizion" class="inputtext"
                                                    size="auto">
                                                    <option value="" selected="selected">Selecteer..</option>
                                                    <option value="Chunks">Brokken</option>
                                                    <option value="Freshmeat">Vers Vlees</option>
                                                    <option value="Snack">Snacks</option>
                                                </select>
                                            </td>
                                        </tr>

                                        <tr>
                                            <td colspan="2" align="center"><input type="button" name="search"
                                                    onclick="return check_value();" value="Zoeken"></td>
                                        </tr>
                                    </tbody>
                                </table>

                                <input type="hidden" name="virtuemart_category_id" id="virtuemart_category_id"
                                    value="0">
                                <input type="hidden" name="virtuemart_manufacturer_id" id="virtuemart_manufacturer_id"
                                    value="0">
                                <input type="hidden" name="virtuemart_manufacturer_id" id="virtuemart_manufacturer_id"
                                    value="0">
                                <input type="hidden" name="custom_filtersearch" id="custom_filtersearch" value="1">
                                <input type="hidden" name="Itemid" id="Itemid" value="1272">
                                <input type="hidden" name="options" value="com_virtuemart">
                                <input type="hidden" name="view" value="category">
                            </form>

                        </div>

                        <script>
                            function show_size(select_val) {
                                if (select_val == 'Puppy')
                                    document.getElementById("dog_data").style.visibility = "hidden";
                                else
                                    document.getElementById("dog_data").style.visibility = "visible";
                            }
                        </script>

                    </div>
                </div>
            </div>
        </div>
    </section>

</div>