App.QuestionsRoute = Ember.Route.extend({
  model: function(){

     return App.Question.find();
  }
});

// App.QuestionRoute = Ember.Route.extend({
//   model: function(params){
//
//      return App.Question.find(params.question_id);
//   }
// });