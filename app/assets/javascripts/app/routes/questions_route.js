App.QuestionsIndexRoute = Ember.Route.extend({
  model: function(){

     return App.Question.find();
  }
});