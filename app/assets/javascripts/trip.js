document.addEventListener("DOMContentLoaded", function() {

  // variables for message js
  var message_form    = document.querySelector('#new_message')
  var message_button  = document.querySelector('#message-button')
  var message         = document.querySelector("#message_message")
  var display_message = document.querySelector("#display_message")
  // variables for todo js
  var todo_form     = document.querySelector('#new_todo')
  var todo_button   = document.querySelector('#todo-button')
  var stuff         = document.querySelector('.new-todo')
  var todo_text     = document.querySelector('#todo_text')
  var display_todo  = document.querySelector('#todo_results')

  if (message_form || todo_form) {

    var tripId      = document.querySelector('#trip-id').innerHTML;

    message_form.addEventListener('submit', function (event) {
      event.preventDefault()
      console.log('message submiting');
      $.ajax({
        url: tripId + '/messages',
        method:'post',
        data: $(message).serialize(),
        dataType:'html',
      }).done(function(data) {
        display_message.innerHTML = data
        message_form.reset();
        message_button.disabled = false
      })
    })

    todo_form.addEventListener('submit', function (event) {
      event.preventDefault()
      $.ajax({
        url: tripId + '/todos',
        method:'post',
        data: $(todo_text),
        dataType:'html',
      }).done(function(data) {
        display_todo.innerHTML = data
          todo_form.reset();
          todo_button.disabled = false
      })
    })
  }

});
