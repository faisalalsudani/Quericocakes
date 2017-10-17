// application.js

//= require jquery
//= require bootstrap-sprockets
//= require jquery_ujs
//= require_tree .
$(document).ready(function() {
  $("#size").click(function() {
    var output = document.getElementById("cake_size_display");
    if($('#size_2').is(':checked')){
    var output = document.getElementById("cake_size_display");
      output.innerHTML = "hello";

      }

  });

  $("#fillings").click(function() {

    var cake_filling = $("#fillings input:checkbox:checked").length >= 2;
    $("#fillings input:checkbox").not(":checked").attr("disabled", cake_filling);
    if(document.getElementById('1_filling').checked){
     var output = document.getElementById("display_here");
      output.innerHTML = "hello";
    }
    if(!document.getElementById('1_filling').checked){
     var output = document.getElementById("display_here");
      output.innerHTML = " ";
    }
  });
  $("#decoration").click(function() {
    var cake_decoration = $("#decoration input:checkbox:checked").length >= 2;
    $("#decoration input:checkbox").not(":checked").attr("disabled", cake_decoration);
  });
  $("#drip").click(function() {
    var cake_drip = $("#drip input:checkbox:checked").length >= 1;
    $("#drip input:checkbox").not(":checked").attr("disabled", cake_drip);
  });


});
