(function ($) {

    var jsonDataFromAllGroups = [
        ["Desinfectie spray", "Desinfecterende Handgel", "Puppy Brokken", "Desinfectiemiddelen",
            "Persoonlijke hygi\u00ebne", "Perfect Bulldog Junior",
            "https:\/\/budgetdesinfectie.nl\/shop\/nulam-snacks\/non-food\/desinfectiemiddelen\/desinfectie-alcohol-spray-detail.html",
            "https:\/\/budgetdesinfectie.nl\/shop\/nulam-snacks\/non-food\/persoonlijke-hygi\u00ebne\/desinfecterende-handgel-detail.html",
            "http:\/\/budgetdesinfectie.nl\/shop\/nulam-brokken\/puppy\/perfect-bulldog-junior-detail.html",
            "images\/mini-desinfectie-spray.png", "images\/mini-desinfecterend_handgel.png",
            "images\/stories\/virtuemart\/product\/bulldog-junior-front.png"
        ],
        ["", "", "", "", "", "", "", "", "", "", "", ""],
        ["", "", "", "", "", "", "", "", "", "", "", ""],
        ["Nieuw !!!!", "Nieuw !!!!", "Nieuw !!!!", "Nylabone Puppy Chicken",
            "Nylabone Puppy 2 in 1", "Nylabone Breakfast Bone",
            "http:\/\/budgetdesinfectie.nl\/shop\/nulam-snacks\/botten-kluiven\/nylabone-puppy-chew-chicken-detail.html",
            "http:\/\/budgetdesinfectie.nl\/shop\/nulam-snacks\/botten-kluiven\/nylabone-puppy-chew-2in1-detail.html",
            "http:\/\/budgetdesinfectie.nl\/shop\/nulam-snacks\/botten-kluiven\/nylabone-breakfast-bone-adult-detail.html",
            "images\/stories\/virtuemart\/product\/nylabone-front.png",
            "images\/stories\/virtuemart\/product\/nylabone-puppy-2in1-front.png",
            "images\/stories\/virtuemart\/product\/nylabone-breakfastbone-front.png"
        ],
        ["", "", "", "", "", "", "", "", "", "", "", ""]
    ];

    $(document).ready(function () {
        jQuery(document).on("click", "a", function (e) {
            window.location = this.href;
        });

        var groupIndex = 1;

        function animationEngine(dataIndex) {

            jQuery(".item-list li:eq(0) .description .title").animate({ 'opacity': 0 }, 400, function () {
                jQuery(this).html(jsonDataFromAllGroups[dataIndex][0]).animate({ 'opacity': 1 }, 400);
            });
            jQuery(".item-list li:eq(1) .description .title").animate({ 'opacity': 0 }, 400, function () {
                jQuery(this).html(jsonDataFromAllGroups[dataIndex][1]).animate({ 'opacity': 1 }, 400);
            });
            jQuery(".item-list li:eq(2) .description .title").animate({ 'opacity': 0 }, 400, function () {
                jQuery(this).html(jsonDataFromAllGroups[dataIndex][2]).animate({ 'opacity': 1 }, 400);
            });

            jQuery(".item-list li:eq(0) .description .heading").animate({ 'opacity': 0 }, 400, function () {
                jQuery(this).html(jsonDataFromAllGroups[dataIndex][3]).animate({ 'opacity': 1 }, 400);
            });
            jQuery(".item-list li:eq(1) .description .heading").animate({ 'opacity': 0 }, 400, function () {
                jQuery(this).html(jsonDataFromAllGroups[dataIndex][4]).animate({ 'opacity': 1 }, 400);
            });
            jQuery(".item-list li:eq(2) .description .heading").animate({ 'opacity': 0 }, 400, function () {
                jQuery(this).html(jsonDataFromAllGroups[dataIndex][5]).animate({ 'opacity': 1 }, 400);
            });

            jQuery(".item-list li:eq(0) .img-wrap img").animate({ 'opacity': 0 }, 400, function () {
                var imageSrc = jsonDataFromAllGroups[dataIndex][9];
                if (imageSrc.indexOf("http") == -1) {
                    imageSrc = "/" + imageSrc;
                }
                jQuery(this).attr("src", imageSrc).animate({ 'opacity': 1 }, 400, function () {
                    jQuery(".item-list li:eq(0) a").attr("href", jsonDataFromAllGroups[dataIndex][6]);
                });
                var altText = jsonDataFromAllGroups[dataIndex][0] + " " + jsonDataFromAllGroups[dataIndex][3];
                jQuery(this).attr("alt", altText);
            });
            jQuery(".item-list li:eq(1) .img-wrap img").animate({ 'opacity': 0 }, 400, function () {
                var imageSrc = jsonDataFromAllGroups[dataIndex][10];
                if (imageSrc.indexOf("http") == -1) {
                    imageSrc = "/" + imageSrc;
                }
                jQuery(this).attr("src", imageSrc).animate({ 'opacity': 1 }, 400, function () {
                    jQuery(".item-list li:eq(1) a").attr("href", jsonDataFromAllGroups[dataIndex][7]);
                });
                var altText = jsonDataFromAllGroups[dataIndex][1] + " " + jsonDataFromAllGroups[dataIndex][4];
                jQuery(this).attr("alt", altText);
            });
            jQuery(".item-list li:eq(2) .img-wrap img").animate({ 'opacity': 0 }, 400, function () {
                var imageSrc = jsonDataFromAllGroups[dataIndex][11];
                if (imageSrc.indexOf("http") == -1) {
                    imageSrc = "/" + imageSrc;
                }
                jQuery(this).attr("src", imageSrc).animate({ 'opacity': 1 }, 400, function () {
                    jQuery(".item-list li:eq(2) a").attr("href", jsonDataFromAllGroups[dataIndex][8]);
                });
                var altText = jsonDataFromAllGroups[dataIndex][2] + " " + jsonDataFromAllGroups[dataIndex][5];
                jQuery(this).attr("alt", altText);
            });

        }

        function animateFirstGroup() {
            animationEngine(0);
        }

        function animateSecondGroup() {
            animationEngine(1);
        }

        function animateThirdGroup() {
            animationEngine(2);
        }

        function animateFourthGroup() {
            animationEngine(3);
        }

        function animateFifthGroup() {
            animationEngine(4);
        }

        function animateCategoryBanner() {

            if (groupIndex == 0) {
                animateFirstGroup();
            } else if (groupIndex == 1) {
                animateSecondGroup();
            } else if (groupIndex == 2) {
                animateThirdGroup();
            } else if (groupIndex == 3) {
                animateFourthGroup();
            } else if (groupIndex == 4) {
                animateFifthGroup();
            }

            if (groupIndex == 4) {
                groupIndex = 0;
            } else {
                groupIndex++;
            }

        }

        function isAllFieldsFilled(index) {
            if (jsonDataFromAllGroups[index][0] != '' && jsonDataFromAllGroups[index][1] != '' &&
                jsonDataFromAllGroups[index][2] != '' && jsonDataFromAllGroups[index][3] != '' &&
                jsonDataFromAllGroups[index][4] != '' && jsonDataFromAllGroups[index][5] != '' &&
                jsonDataFromAllGroups[index][6] != '' && jsonDataFromAllGroups[index][7] != '' &&
                jsonDataFromAllGroups[index][8] != '' && jsonDataFromAllGroups[index][9] != '' &&
                jsonDataFromAllGroups[index][10] != '' && jsonDataFromAllGroups[index][11] != '') {
                return true;
            } else {
                return false;
            }
        }

        if (isAllFieldsFilled(1) && isAllFieldsFilled(2) && isAllFieldsFilled(3) && isAllFieldsFilled(4)) {
            setInterval(animateCategoryBanner, 5000);
        }


    });

})(jQuery);
