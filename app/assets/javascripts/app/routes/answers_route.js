// TODO: Find it's parent - the question

App.AnswersRoute = Ember.Route.extend({
  model: function(){


     return App.Answer.find();
  }
});

App.AnswerRoute = Ember.Route.extend({
  model: function(params){

     return App.Answer.find(params.answer_id);
  }
});