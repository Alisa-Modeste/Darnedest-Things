$(document).ready(function(){

	var tags = $("#bootstrapped_tags").text().split(',');
  console.log("tags are", tags)

  $("#question_tags").tagit({
    availableTags: tags
  });

});