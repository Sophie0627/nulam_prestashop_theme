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
                                }
                            }
                        </script>

                        <div class="main-div-form">
                            <form action="/component/virtuemart/?Itemid=1272" method="post" id="hotel_search"
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
                                                    <option value="Very Active">Zeer actief</option>
                                                </select>
                                            </td>
                                        </tr>

                                        <tr>
                                            <td>Allergie</td>
                                            <td><select id="dogallergy" name="dogallergy" class="inputtext" size="auto">
                                                    <option value="" selected="selected">Selecteer..</option>
                                                    <option value="No allergy">Geen Allergie</option>
                                                    <option value="Beef">Rund</option>
                                                    <option value="Chicken">Kip</option>
                                                    <option value="Grain gluten">Graanvrij</option>
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
                                                    <option value="Fresh meat">Vers Vlees</option>
                                                    <option value="Snack">Snacks</option>
                                                </select>
                                            </td>
                                        </tr>

                                        <tr>
                                            <td colspan="2" align="center"><input type="submit" name="search"
                                                    onclick="return check_value();" value="Zoeken" <="" td=""></td>
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

    <div>
        <div>
            <div id="gkContent">

                <section id="gkMainbody">

                    <article id="comContentContainer" class="itemView single-page " itemscope=""
                        itemtype="http://schema.org/Article">
                        <meta itemprop="inLanguage" content="nl-NL">

                        <div class="gkPage">
                            <div id="gk-content-wrapper">

                                <div class="item-content">
                                    <div class="item-info">
                                        <ul>

                                        </ul>
                                    </div><!-- .itemInfo -->

                                    <div class="item-body" itemprop="articleBody">

                                        <p></p>

                                    </div><!-- .item-body -->

                                    <span class="gk-social-icons">
                                        <i class="fa fa-share-alt"></i>

                                        <span>
                                            <a href="https://www.facebook.com/sharer.php?u=https://nulam.nl/voedingsadvies/voedingsadvies-op-maat.html"
                                                target="_blank"><i class="fa fa-facebook"></i> Facebook</a>

                                            <a href="http://twitter.com/intent/tweet?source=sharethiscom&amp;url=https://nulam.nl/voedingsadvies/voedingsadvies-op-maat.html"
                                                target="_blank"><i class="fa fa-twitter"></i> Twitter</a>

                                            <a href="https://plus.google.com/share?url=https://nulam.nl/voedingsadvies/voedingsadvies-op-maat.html"
                                                target="_blank"><i class="fa fa-google-plus"></i> Google+</a>

                                            <a
                                                href="javascript:void((function()%7Bvar%20e=document.createElement('script');e.setAttribute('type','text/javascript');e.setAttribute('charset','UTF-8');e.setAttribute('src','//assets.pinterest.com/js/pinmarklet.js?r='+Math.random()*99999999);document.body.appendChild(e)%7D)());"><i
                                                    class="fa fa-pinterest-p"></i> Pinterest</a>

                                        </span>
                                    </span>

                                </div><!-- .item-content -->

                            </div>

                        </div>
                    </article>

                </section>

            </div>

        </div>
    </div>
</div>