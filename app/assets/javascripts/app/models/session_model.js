App.Session = Ember.Model.extend({
  email: Ember.attr("string"),
  password: Ember.attr("string")
});

App.Session.url = "/session";
App.Session.adapter = Ember.RESTAdapter.create();