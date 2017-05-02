$(document).ready(function() {
  displayFullDiveDetials();
  addDiveLinkListener();
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
    clickedLink = $(this);
    console.log(clickedLink)

    $.ajax({
      method: "GET",
      url: clickedLink.attr("href")
    })
    .done(function(response){
      $(".container").append(response);
      $(".form_container").addClass("modal")
    })
  })
}


