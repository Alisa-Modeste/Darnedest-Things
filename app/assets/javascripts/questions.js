$(document).ready(function(){

	var tags = $("#bootstrapped_tags").text().split(',');
  console.log("tags are", tags)

  $("#question_tags").tagit({
    // availableTags: tags,
    tagSource: tags,
    select: true
  });
// $("#question_tags").autocomplete({
      // source: tags
    // });

});