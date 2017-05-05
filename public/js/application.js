$(document).ready(function() {
  displayFullDiveDetials();
  postNewDiveEventListener();
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

var postNewDiveEventListener = function(){
  $(".new_dive_form").on("submit", function(event){
    event.preventDefault();
    var newDiveForm = $(this)
    var formData = $(newDiveFrom).serialize();

    var request = $.ajax({
      type: newDiveFrom.attr("method")
      url: newDiveFrom.attr("action")
      data: formData
    });

    request.done(function(response){
      console.log(response)
    });


  });
}
