App.TagsIndexRoute = Ember.Route.extend({
  model: function(){
     return App.Tag.find();
  }
});

App.TagRoute = Ember.Route.extend({
  model: function(params){

     return App.Tag.find(params.tag_id);
  }
});