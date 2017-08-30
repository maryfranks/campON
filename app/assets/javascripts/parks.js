
document.addEventListener("DOMContentLoaded", function() {

var activitiesForm  = document.querySelector('.activities-filter-form')
var activityCheck   = document.querySelectorAll('.activity')

var activitiesForm  = document.querySelector('.facilities-filter-form')
var facilitiesCheck = document.querySelectorAll('.facilities')

var parks = document.querySelectorAll('.parks')

var filterResults = document.querySelector('#parkPartialList')


for (var i = 0; i < activityCheck.length; i++) {
  activityCheck[i].addEventListener('change', function (event) {

    $.ajax({
      url: 'http://localhost:3000/parks/search',
      method: 'get',
      data: $(activitiesForm).serialize(),
      dataType: 'html',
    }).done(function(data) {
      filterResults.innerHTML = data

    })
    })
  }

  for (var i = 0; i < facilitiesCheck.length; i++) {
      facilitiesCheck[i].addEventListener('change', function (event) {

      $.ajax({
        url: 'http://localhost:3000/parks/search',
        method: 'get',
        data: $(activitiesForm).serialize(),
        dataType: 'html',
      }).done(function(data) {
        filterResults.innerHTML = data
      })
      })
    }


})
