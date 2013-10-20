App.UsersIndexRoute = Ember.Route.extend({
  model: function(){
     return App.User.find();
  }
});

// App.UsersSelfRoute = Ember.Route.extend({
  // model: function(){
  // console.log("in self route")
     // return App.User.find();
  // }
// });

// App.UserRoute = Ember.Route.extend({
//   model: function(params){
//
//      return App.User.find(params.user_id);
//   }
// });