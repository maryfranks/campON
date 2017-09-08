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
        dataType: 'html',
      }).done(function(data) {

      var message = document.createElement('p');
      message.innerHTML = data.message;

      var name = document.createElement('p');
      name.innerHTML = data.user;

      displayMessage.appendChild(message);
      displayMessage.appendChild(name);

      displayForm.reset()
      document.querySelector("#new_message input[type='submit']").disabled = false

      });
    });}

  var displayToDo = document.querySelector('.display-todos');
  var displayToDoForm = document.querySelector('.todo_form');

  if (displayToDoForm){

    var tripId = document.querySelector('#trip-id').innerHTML

    displayToDoForm.addEventListener('submit', function(event) {
      event.preventDefault();
      $.ajax({
        url: '/trips/' + tripId + '/todos',
        method: 'post',
        data: $(displayToDoForm).serialize(),
        dataType: 'html',
      }).done(function(data) {
        var newTodo = document.createElement('p');
        newTodo.innerHTML = data.text;
        console.log(newTodo.innerHTML);

        displayToDo.appendChild(newTodo);
        displayToDoForm.reset();
        document.querySelector("#new_todo input[type='submit']").disabled = false
      });
    });

  }

});
