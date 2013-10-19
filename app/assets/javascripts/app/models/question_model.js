// TODO: Might have to make a custom type for text

App.Question = Ember.Model.extend({
  title: Ember.attr("string"),
  body: Ember.attr("string"),
  user: Ember.belongsTo('App.User', {key: 'user_id', embedded: false }),
  answers: Ember.hasMany('App.Answer', {key: 'answer_ids', embedded: false }),
  tags: Ember.hasMany('App.Tag', {key: 'tag_ids', embedded: false })
  //tags: Ember.hasMany('App.Tag', {key: 'tags', embedded: true })
});

App.Question.url = "/questions";
App.Question.adapter = Ember.RESTAdapter.create();
App.Question.collectionKey = "questions"

// App.Question.FIXTURES = [
//   {
//     id: 1,
//     title: "New question",
//     body: "My content",
//     user_id: 1,
//     answer_ids: [1]
//   },
//
//   {
//     id: 2,
//     title: "Second question",
//     body: "Some other content",
//     user_id: 2
//   }
// ]

//App.Question.createRecord({})