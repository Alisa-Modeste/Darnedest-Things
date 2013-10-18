// TODO: Might have to make a custom type for text

App.Answer = Ember.Model.extend({
 // question_id: Ember.attr("number"),
  response: Ember.attr("string"),
  question: Ember.belongsTo('App.Question', {key: 'question_id', embedded: false }),
});

App.Answer.adapter = Ember.FixtureAdapter.create();
App.Answer.FIXTURES = [
  {
    id: 1,
    //user_id: 1,
    response: "The very long content goes here",
    question_id: 1
  },

  {
    id: 2,
    //user_id: 1,
    response: "Some other response"
  }
]