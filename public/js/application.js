$(document).ready(function() {
  displayFullDiveDetials();
});

var displayFullDiveDetials = function(){
    $('.dive_entry_details').mouseover(
    function () {

      $(this).find(".secondary_dive_details").slideDown();
    });

    $('.dive_entry_details').mouseleave(function(){
      $(this).find(".secondary_dive_details").slideUp();
    });
}
