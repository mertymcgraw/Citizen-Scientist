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
  $("#DIVEFORM").on("submit", function(event){
    event.preventDefault();

    var newDiveForm = $(this)
    var formData = $(newDiveForm).serialize();

    var request = $.ajax({
      type: newDiveForm.attr("method"),
      url: newDiveForm.attr("action"),
      data: formData
    });

    request.done(function(response){
      console.log(response)
      $('body').empty();
      $('body').append(response);

    });

    request.fail(function(response){
      alert("Something went wrong. Please contact us")
    });

  });
}
