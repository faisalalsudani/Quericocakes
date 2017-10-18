// application.js

//= require jquery
//= require bootstrap-sprockets
//= require jquery_ujs
//= require_tree .
$(document).ready(function() {
   var output = document.getElementById("display_here");
  $("#size").click(function() {

    if($('#size_1').is(':checked')){
      output.innerHTML = '<img src="https://i.pinimg.com/736x/81/ed/ed/81eded5fd277769d81b9ec178c53fe7c--cake-serving-chart-cake-serving-guide.jpg" width="300" height="300">';
      }
    else if($('#size_2').is(':checked')){
        output.innerHTML = '<img src="https://i.pinimg.com/736x/81/ed/ed/81eded5fd277769d81b9ec178c53fe7c--cake-serving-chart-cake-serving-guide.jpg" width="300" height="300">';
        }
    else if($('#size_3').is(':checked')){
        output.innerHTML = '<img src="https://i.pinimg.com/736x/81/ed/ed/81eded5fd277769d81b9ec178c53fe7c--cake-serving-chart-cake-serving-guide.jpg" width="300" height="300">';
        }
    else if($('#size_4').is(':checked')){
        output.innerHTML = '<img src="https://i.pinimg.com/736x/81/ed/ed/81eded5fd277769d81b9ec178c53fe7c--cake-serving-chart-cake-serving-guide.jpg" width="300" height="300">';
        }
    else {
        output.innerHTML = '<img src="https://i.pinimg.com/736x/81/ed/ed/81eded5fd277769d81b9ec178c53fe7c--cake-serving-chart-cake-serving-guide.jpg" width="300" height="300">';
        }
  });


  $("#flavor").click(function() {

    if($('#flavor_1').is(':checked')){
      output_size.innerHTML = '<img src="http://1.bp.blogspot.com/_RwkOJsjPVbc/TSfb233OiAI/AAAAAAAAFeg/t5MuG4N3tuk/s1600/01-02-11+Cake+42.JPG" width="300" height="300">';
      }
    else if($('#flavour_2').is(':checked')){
      output.innerHTML = '<img src="https://i.pinimg.com/736x/81/ed/ed/81eded5fd277769d81b9ec178c53fe7c--cake-serving-chart-cake-serving-guide.jpg" width="300" height="300">';
      }
  });


$("#fillings").click(function() {
    var cake_filling = $("#fillings input:checkbox:checked").length >= 2;
    $("#fillings input:checkbox").not(":checked").attr("disabled", cake_filling);
    var output_fillings = document.getElementById("display_here");
    if(document.getElementById('1_filling').checked){
       output_fillings.innerHTML = '<img src="https://d1xs5fw35mbn8b.cloudfront.net/p/m/p-half-kg-round-chocolate-cake-with-chocolate-cream-toppings-4780-m.jpg?v=1508202989000" width="300" height="300">';
    }
    if(!document.getElementById('1_filling').checked){
     var output = document.getElementById("display_here");
      output_fillings.innerHTML = " ";
    }
  });


  $("#decoration").click(function() {
    var cake_decoration = $("#decoration input:checkbox:checked").length >= 2;
    $("#decoration input:checkbox").not(":checked").attr("disabled", cake_decoration);
    var output = document.getElementById("display_here");
    if($('#1_decoration').is(':checked')){
      output.innerHTML = '<img src="https://assets.marthastewart.com/styles/video-preview-1280x720-highdpi/d33/marble_vanilla_and_chocolate_cake/marble_vanilla_and_chocolate_cake_horiz.jpg?itok=PH5pmQ11" width="300" height="300">';
      }
      if($('#6_decoration').is(':checked')){
        output.innerHTML = '<img src="https://static1.squarespace.com/static/53214b7ee4b0f7c737c34999/57031dc640261d8834a90436/58eb2978d482e94e7f4203df/1491806864256/Unicorn-Cake-W-Small.jpg" width="300" height="300">';
        }
  });


  $("#drip").click(function() {
    var cake_drip = $("#drip input:checkbox:checked").length >= 1;
    $("#drip input:checkbox").not(":checked").attr("disabled", cake_drip);
    var output_size = document.getElementById("display_here");
    if($('#drip_yes').is(':checked')){
      output_size.innerHTML = '<img src="https://photo2.foodgawker.com/wp-content/uploads/2017/01/2882116.jpg" width="300" height="300">';
      }
  });


});
