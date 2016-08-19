$(document).ready(function() {
  $("body").on("click", "#film", function(event){
    event.preventDefault();

    $(this).parent.show()
  })
});
