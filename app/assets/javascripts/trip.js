// document.addEventListener("DOMContentLoaded", function() {
//   var displayMessage = document.querySelector('.display_message');
//   var displayForm = document.querySelector('.message_form');
//
//   displayForm.addEventListener('submit', function(event){
//     event.preventDefault()
//     $.ajax({
//       url: 'http://localhost:3000/message/search',
//       method: 'get',
//
//       dataType: 'html',
//   }).done(function(data) {
//     console.log(data);
//     displayMessage.innterHTML = data
//
// // listen for submit click
// // once it submits on form, we want to capture that messsage info
// // create dom object
// // append message
//   });
// });
// });
