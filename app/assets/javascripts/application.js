// application.js

//= require jquery
//= require bootstrap-sprockets
//= require jquery_ujs
//= require_tree .
$(document).ready(function() {
  $("#fillings").click(function() {
    var cake_filling = $("#fillings input:checkbox:checked").length >= 2;
    $("#fillings input:checkbox").not(":checked").attr("disabled", cake_filling);
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
