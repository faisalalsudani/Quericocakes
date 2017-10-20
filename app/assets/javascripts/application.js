// application.js

//= require jquery
//= require bootstrap-sprockets
//= require jquery_ujs
//= require_tree .
$(document).ready(function() {


  var output = document.getElementById("display_here");
  $("#size").click(function() {

    if ($('#size_1').is(':checked')) {
      output.innerHTML = '<img src="http://res.cloudinary.com/deborahjoshi/image/upload/v1508488633/Screen_Shot_2017-10-19_at_16.56.26_poqbag.png" width="300" height="300">';
    } else if ($('#size_2').is(':checked')) {
      output.innerHTML = '<img src="http://res.cloudinary.com/deborahjoshi/image/upload/v1508488634/Screen_Shot_2017-10-19_at_16.56.29_mfotxa.png" width="300" height="300">';
    } else if ($('#size_3').is(':checked')) {
      output.innerHTML = '<img src="http://res.cloudinary.com/deborahjoshi/image/upload/v1508488633/Screen_Shot_2017-10-19_at_16.56.32_xhvrne.png" width="300" height="300">';
    } else if ($('#size_4').is(':checked')) {
      output.innerHTML = '<img src="http://res.cloudinary.com/deborahjoshi/image/upload/v1508488633/Screen_Shot_2017-10-19_at_16.56.52_ydjvjc.png" width="300" height="300">';
    } else if ($('#size_5').is(':checked')) {
      output.innerHTML = '<img src="http://res.cloudinary.com/deborahjoshi/image/upload/v1508488633/Screen_Shot_2017-10-19_at_16.56.58_jdbkbr.png" width="300" height="300">';
    } else if ($('#size_6').is(':checked')) {
      output.innerHTML = '<img src="http://res.cloudinary.com/deborahjoshi/image/upload/v1508488633/Screen_Shot_2017-10-19_at_16.57.04_eu9qyw.png" width="300" height="300">';
    } else if ($('#size_7').is(':checked')) {
      output.innerHTML = '<img src="http://res.cloudinary.com/deborahjoshi/image/upload/v1508488633/Screen_Shot_2017-10-19_at_16.57.08_jixrrg.png" width="300" height="300">';
    } else if ($('#size_8').is(':checked')) {
      output.innerHTML = '<img src="http://res.cloudinary.com/deborahjoshi/image/upload/v1508488633/Screen_Shot_2017-10-19_at_16.57.17_a5jo38.png" width="300" height="300">';
    } else if ($('#size_9').is(':checked')) {
      output.innerHTML = '<img src="http://res.cloudinary.com/deborahjoshi/image/upload/v1508488633/Screen_Shot_2017-10-19_at_16.57.46_da13ep.png" width="300" height="300">';
    } else {
      output.innerHTML = '<img src="http://res.cloudinary.com/deborahjoshi/image/upload/v1508488633/Screen_Shot_2017-10-19_at_16.57.52_mbqe3i.png" width="300" height="300">';
    }
  });


  $("#flavor").click(function() {

    if ($('#flavor_1').is(':checked')) {
      output.innerHTML = '<img src="https://files.slack.com/files-tmb/T3EFKFK5Z-F7KBXRMCG-e4ac96db72/vanilla1_360.png" width="300" height="300">';
    } else if ($('#flavour_2').is(':checked')) {
      output.innerHTML = '<img src="https://files.slack.com/files-tmb/T3EFKFK5Z-F7L391P2Q-7b60122a35/chocolate1_360.png" width="300" height="300">';
    } else {
      output.innerHTML = '<img src="https://files.slack.com/files-tmb/T3EFKFK5Z-F7L5T0JLD-1a90b1ce61/citroen1_360.png" width="300" height="300">';
    }
  });


  $("#fillings").click(function() {
    var cake_filling = $("#fillings input:checkbox:checked").length >= 2;
    $("#fillings input:checkbox").not(":checked").attr("disabled", cake_filling);

    if (document.getElementById('1_filling').checked) {
      output.innerHTML = '<img src="https://d1xs5fw35mbn8b.cloudfront.net/p/m/p-half-kg-round-chocolate-cake-with-chocolate-cream-toppings-4780-m.jpg?v=1508202989000" width="300" height="300">';
    }

  });


  $("#decoration").click(function() {

    var output = document.getElementById("display_here");
    if ($('#1_decoration').is(':checked')) {
      output.innerHTML = '<img src="https://assets.marthastewart.com/styles/video-preview-1280x720-highdpi/d33/marble_vanilla_and_chocolate_cake/marble_vanilla_and_chocolate_cake_horiz.jpg?itok=PH5pmQ11" width="300" height="300">';
    }
    if ($('#6_decoration').is(':checked')) {
      output.innerHTML = '<img src="https://static1.squarespace.com/static/53214b7ee4b0f7c737c34999/57031dc640261d8834a90436/58eb2978d482e94e7f4203df/1491806864256/Unicorn-Cake-W-Small.jpg" width="300" height="300">';
    }
  });

  $("#decoration-color").click(function() {
    var cake_decoration = $("#decoration-color input:checkbox:checked").length >= 2;
    $("#decoration-color input:checkbox").not(":checked").attr("disabled", cake_decoration);
  });


  $("#drip").click(function() {
    var cake_drip = $("#drip input:checkbox:checked").length >= 1;
    $("#drip input:checkbox").not(":checked").attr("disabled", cake_drip);

    if ($('#drip_yes').is(':checked')) {
      $("#cake-drip-color").slideDown('fast')
      output.innerHTML = '<img src="https://photo2.foodgawker.com/wp-content/uploads/2017/01/2882116.jpg" width="300" height="300">';
    } else {
      $("#cake-drip-color").slideUp('fast')
    }
  });

  $("#drip-color").click(function() {
    var cake_drip = $("#drip-color input:checkbox:checked").length >= 1;
    $("#drip-color input:checkbox").not(":checked").attr("disabled", cake_drip);
  });


});
