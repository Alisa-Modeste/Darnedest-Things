App.UsersRoute = Ember.Route.extend({
  model: function(){
     return App.User.find();
  }
});

// App.UserRoute = Ember.Route.extend({
//   model: function(params){
//
//      return App.User.find(params.user_id);
//   }
// });