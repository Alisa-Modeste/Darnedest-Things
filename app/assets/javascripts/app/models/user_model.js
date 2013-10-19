App.User = Ember.Model.extend({
id: Ember.attr("number"),
  name: Ember.attr("string"),
  questions: Ember.hasMany('App.Question', {key: 'question_ids', embedded: false }),
  answers: Ember.hasMany('App.Answer', {key: 'answer_ids', embedded: false })
});

App.User.url = "/users";
App.User.adapter = Ember.RESTAdapter.create();
App.User.collectionKey = "users"

// App.User.adapter = Ember.FixtureAdapter.create();
// App.User.FIXTURES = [
//   {
//     id: 1,
//     name: "Bob",
//     question_ids: [1]
//   },
//
//   {
//     id: 2,
//     name: "Sue",
//     question_ids: [2]
//   }
// ]