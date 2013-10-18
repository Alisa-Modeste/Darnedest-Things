App.QuestionsRoute = Ember.Route.extend({
  model: function(){
   // return App.Question.find();
    // //return App.Question.find('question', 1);
   //  console.log("In here before the return", App)
   //  console.log("app", App.Question, App.Moo, App.Question.find)
   //  var rename = App.Question.find
   //  console.log("In between", rename())
    // console.log("next line", App.Question.find())
 //    return App.Question.find();

     return App.Question.find();
  }
});

App.QuestionsIndexRoute = Ember.Route.extend({
  model: function(){

     return App.Question.find();
  }
});

App.QuestionRoute = Ember.Route.extend({
  model: function(params){
   // return App.Question.find();
    // //return App.Question.find('question', 1);
   //  console.log("In here before the return", App)
   //  console.log("app", App.Question, App.Moo, App.Question.find)
   //  var rename = App.Question.find
   //  console.log("In between", rename())
    // console.log("next line", App.Question.find())
 //    return App.Question.find();
 console.log("In question route")
     return App.Question.find(params.question_id);
  }
});