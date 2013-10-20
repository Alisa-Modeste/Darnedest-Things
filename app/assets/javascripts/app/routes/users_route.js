App.UsersIndexRoute = Ember.Route.extend({
  model: function(){
     return App.User.find();
  }
});
//   }
// });