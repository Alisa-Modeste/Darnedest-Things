$(document).ready(function(){

  var tags = [];
  // $("#bootstrapped_tags")[0].html().split(/\D/).forEach(function(tag){
  $("#bootstrapped_tags").html().split(',').forEach(function(tag){
          tags.push(tag.split(/&quot;/)[1])
    });

});