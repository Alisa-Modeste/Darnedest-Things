App.Tag = Ember.Model.extend({
id: Ember.attr("number"),
  name: Ember.attr("string"),
  questions: Ember.hasMany('App.Question', {key: 'question_ids', embedded: false })
});


// App.Tag.adapter = Ember.FixtureAdapter.create();
// App.Tag.FIXTURES = [
//   {
//     id: 1,
//     name: "Cats"
//   },
//
//   {
//     id: 2,
//     name: "Dogs"
//   }
// ]

App.Tag.url = "/tags";
App.Tag.adapter = Ember.RESTAdapter.create();
App.Tag.collectionKey = "tags"