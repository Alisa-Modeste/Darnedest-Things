$(document).ready(function(){

	var tags = $("#bootstrapped_tags").text().split(',');
  console.log("tags are", tags)

  $("#search_tags").tagit({
     availableTags: tags //,
    // autocomplete: {delay: 0, minLength: 2}
  });

});