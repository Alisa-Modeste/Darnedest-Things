App.Tag = Ember.Model.extend({
  name: Ember.attr("string")
});


App.Tag.adapter = Ember.FixtureAdapter.create();
App.Tag.FIXTURES = [
  {
    id: 1,
    name: "Cats"
  },

  {
    id: 2,
    name: "Dogs"
  }
]