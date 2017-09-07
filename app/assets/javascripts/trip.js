document.addEventListener("DOMContentLoaded", function() {
  var displayMessage = document.querySelector('.display_message');
  var displayForm = document.querySelector('.message_form');

if (displayForm){

  var tripId = document.querySelector('#trip-id').innerHTML
  displayForm.addEventListener('submit', function(event){
    event.preventDefault()
    $.ajax({
      url: '/trips/' + tripId + '/messages',
      method: 'post',
      data: $(displayForm).serialize(),
      dataType: 'json',
    }).done(function(data) {

    var message = document.createElement('p');
    message.innerHTML = data.message;

    var name = document.createElement('p');
    name.innerHTML = data.user;
    
    displayMessage.appendChild(message);
    displayMessage.appendChild(name);

    displayForm.reset()

    });
  });}
});
