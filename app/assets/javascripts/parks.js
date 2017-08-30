
document.addEventListener("DOMContentLoaded", function() {

var activityCheck = document.querySelectorAll('.activity')
var parks = document.querySelectorAll('.parks')
var activityBlock = document.querySelector('.activities-filter-block')

for (var i = 0; i < activityCheck.length; i++) {
  activityCheck[i].addEventListener('change', function (event) {

    $.ajax({
      url: 'http://localhost:3000/parks/search',
      method: 'get',
      data: {data: this.attributes['rel'].value},
      dataType: 'html',
    }).done(function(data) {

    }
    )
    })
  }
})
