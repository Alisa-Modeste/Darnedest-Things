console.log("Hello")
$(document).ready(function(){

  var tags = $("#bootstrapped_tags").text().split(',');
  console.log("tags are", tags)

  var revealSetting = tags.length < 10 ? {delay: 0, minLength: 0} : {delay: 0, minLength: 1}

  $("#search_tags").tagit({
    // availableTags: tags,
    tagSource: tags,
    select: true,
    autocomplete: revealSetting
  });

});