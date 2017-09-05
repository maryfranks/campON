document.addEventListener("DOMContentLoaded", function() {
  var displayMessage = document.querySelector('.display_message');
  var displayForm = document.querySelector('.message_form');

if (displayForm){

  displayForm.addEventListener('submit', function(event){
    event.preventDefault()
    $.ajax({
      url: '/message/search',
      method: 'get',
      dataType: 'html',
    }).done(function(data) {
    console.log(data);
    displayMessage.innterHTML = data

    displayForm.reset()

    });
  });}
});
