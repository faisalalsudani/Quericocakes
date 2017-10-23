// application.js

//= require jquery
//= require bootstrap-sprockets
//= require jquery_ujs
//= require_tree .
$(document).ready(function() {


  var output = document.getElementById("display_here");
  $("#size").click(function() {

    if ($('#size_1').is(':checked')) {
      console.log('test');
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
    } else if ($('#size_10').is(':checked')){
      output.innerHTML = '<img src="http://res.cloudinary.com/deborahjoshi/image/upload/v1508488633/Screen_Shot_2017-10-19_at_16.57.52_mbqe3i.png" width="300" height="300">';
    }
  });



  $("#flavor").click(function() {
    if ($('#flavor_1').is(':checked')) {
      output.innerHTML = '<img src="http://res.cloudinary.com/dvmfuraf4/image/upload/v1508492116/cake_holder_yi9roh.png" width="300" height="300">';
    } else if ($('#flavour_2').is(':checked')) {
      output.innerHTML = '<img src="http://res.cloudinary.com/dvmfuraf4/image/upload/v1508492116/cake_holder_yi9roh.png" width="300" height="300">';
    } else if ($('#flavour_3').is(':checked')) {
      output.innerHTML = '<img src="http://res.cloudinary.com/dvmfuraf4/image/upload/v1508492116/cake_holder_yi9roh.png" width="300" height="300">';
    }
  });



  $("#fillings").click(function() {
    var cake_filling = $("#fillings input:checkbox:checked").length >= 2;
    $("#fillings input:checkbox").not(":checked").attr("disabled", cake_filling);
    output.innerHTML = '<img src="http://res.cloudinary.com/dvmfuraf4/image/upload/v1508492116/cake_holder_yi9roh.png" width="300" height="300">';
  });


 $("#style").click(function() {
   if ($('#1_style').is(':checked')) {
      output.innerHTML = '<img src="http://res.cloudinary.com/dvmfuraf4/image/upload/v1508492116/even_wju7jv.png" width="300" height="300">';
    }else if ($('#2_style').is(':checked')) {
      output.innerHTML = '<img src="http://res.cloudinary.com/dvmfuraf4/image/upload/v1508492114/marbel_jdarvx.png" width="300" height="300">';
    }else if ($('#3_style').is(':checked')) {
      output.innerHTML = '<img src="http://res.cloudinary.com/dvmfuraf4/image/upload/v1508492114/ombre_huzw6l.png" width="300" height="300">';
    }else if ($('#4_style').is(':checked')) {
        output.innerHTML = '<img src="http://res.cloudinary.com/dvmfuraf4/image/upload/v1508492115/naked_icpzms.png" width="300" height="300">';
    }
  });



  $("#drip").click(function() {
    var cake_drip = $("#drip input:checkbox:checked").length >= 1;
      $("#drip input:checkbox").not(":checked").attr("disabled", cake_drip);
    if ($('#drip_yes').is(':checked')) {
        $("#cake-drip-color").slideDown('fast')
        if ($('#2_style').is(':checked')) {
          output.innerHTML = '<img src="http://res.cloudinary.com/dvmfuraf4/image/upload/v1508492115/marbel_drip_pjntxy.png" width="300" height="300">';
        }
        if ($('#4_style').is(':checked')) {
          output.innerHTML = '<img src="http://res.cloudinary.com/dvmfuraf4/image/upload/v1508492115/naked_drip_ghknid.png" width="300" height="300">';
        }
      } else if ($('#drip_no').is(':checked')){
        $("#cake-drip-color").slideUp('fast')
      }
    });



 $("#decoration").click(function() {
   var cake_decoration = $("#decoration input:checkbox:checked").length >= 2;
   $("#decoration input:checkbox").not(":checked").attr("disabled", cake_decoration);

   if ($('#7_decoration').is(':checked')) {
     debugger;
     output.innerHTML = '<img src="http://res.cloudinary.com/dvmfuraf4/image/upload/v1508500087/3_wyihte.png" width="300" height="300">';
   }

    if ($('#1_decoration').is(':checked')) {
      if(($('#2_style').is(':checked'))){
        if($('#drip_yes').is(':checked')){
          output.innerHTML = '<img src="http://res.cloudinary.com/dvmfuraf4/image/upload/v1508492115/marbel_drip_candy_lavp3s.png" width="300" height="300">';
         }
        }
      }

      if ($('#1_decoration').is(':checked')) {
        if(($('#4_style').is(':checked'))){
          if($('#drip_yes').is(':checked')){
            output.innerHTML = '<img src="http://res.cloudinary.com/dvmfuraf4/image/upload/v1508494349/naked_drip_candy_party_ow3js5.png" width="300" height="300">';
           }
          }
        }

        if ($('#3_decoration').is(':checked')) {
          if(($('#4_style').is(':checked'))){
            if($('#drip_yes').is(':checked')){
              output.innerHTML = '<img src="http://res.cloudinary.com/dvmfuraf4/image/upload/v1508494447/naked_drip_flower_lmc5ro.png" width="300" height="300">';
             }
            }
          }


          if ($('#5_decoration').is(':checked')) {
            if(($('#2_style').is(':checked'))){
              if($('#drip_yes').is(':checked')){
                output.innerHTML = '<img src="http://res.cloudinary.com/dvmfuraf4/image/upload/v1508492116/Candy_party_drip_sn1frj.png" width="300" height="300">';
               }
              }
            }

            if ($('#3_decoration').is(':checked')) {
              if(($('#4_style').is(':checked'))){
                if($('#drip_yes').is(':checked')){
                  output.innerHTML = '<img src="http://res.cloudinary.com/dvmfuraf4/image/upload/v1508500023/1_c2lldp.png" width="300" height="300">';
                 }
                }
              }

              if ($('#1_decoration').is(':checked')) {
                if(($('#1_style').is(':checked'))){
                  if($('#drip_yes').is(':checked')){
                    output.innerHTML = '<img src="http://res.cloudinary.com/dvmfuraf4/image/upload/v1508500082/2_ql6tpr.png" width="300" height="300">';
                   }
                  }
                }



                if ($('#4_decoration').is(':checked')) {
                  if(($('#1_style').is(':checked'))){
                  output.innerHTML = '<img src="http://res.cloudinary.com/dvmfuraf4/image/upload/v1508500092/4_aodfxe.png" width="300" height="300">';
                }
              }

              if ($('#6_decoration').is(':checked')) {
                if(($('#3_style').is(':checked'))){
                output.innerHTML = '<img src="http://res.cloudinary.com/dvmfuraf4/image/upload/v1508500096/unicorn_xegwie.png" width="300" height="300">';
              }
            }



            if ($('#2_decoration').is(':checked')) {
              if(($('#2_style').is(':checked'))){
                if($('#drip_yes').is(':checked')){
                  output.innerHTML = '<img src="http://res.cloudinary.com/dvmfuraf4/image/upload/v1508492116/Candy_party_drip_sn1frj.png" width="300" height="300">';
                 }
                }
              }
  });

  $("#decoration-color").click(function() {
    var cake_decoration = $("#decoration-color input:checkbox:checked").length >= 2;
    $("#decoration-color input:checkbox").not(":checked").attr("disabled", cake_decoration);
  });


  $("#drip-color").click(function() {
    var cake_drip = $("#drip-color input:checkbox:checked").length >= 1;
    $("#drip-color input:checkbox").not(":checked").attr("disabled", cake_drip);
  });

});
