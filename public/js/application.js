$(document).ready(function() {
  displayFullDiveDetials();
  addDiveLinkListener();
  exitFrom();
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

var addDiveLinkListener = function(){
  $(".add_dive_button").click(function(event){
    event.preventDefault();
    $(".modal").fadeIn();
  });
}

var exitFrom = function(){
  window.onclick = function(event) {
    if (event.target == $(".modal")) {
        $("modal").style.display = "none";
    }
  }
}


