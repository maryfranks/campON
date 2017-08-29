
document.addEventListener("DOMContentLoaded", function() {

var activityCheck = document.querySelectorAll('.activity')
var parks = document.querySelectorAll('.parks')
var activityResults = document.querySelector('#parkPartialList')
var activitiesForm = document.querySelector('.activities-filter-form')


for (var i = 0; i < activityCheck.length; i++) {
  activityCheck[i].addEventListener('change', function (event) {

    $.ajax({
      url: 'http://localhost:3000/parks/search',
      method: 'get',
      data: $(activitiesForm).serialize(),
      dataType: 'html',
    }).done(function(data) {

      activityResults.innerHTML = data

    })
    })
  }
})
