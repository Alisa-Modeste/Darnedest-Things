//TODO: Password over http
//Pressing enter triggers whatever triggers the button

App.User = Ember.Model.extend({
	id: Ember.attr("number"),
	name: Ember.attr("string"),
	email: Ember.attr("string"),
	password: Ember.attr("string"),
	questions: Ember.hasMany('App.Question', {key: 'question_ids', embedded: false }),
	answers: Ember.hasMany('App.Answer', {key: 'answer_ids', embedded: false })
});

App.User.url = "/users";
App.User.adapter = Ember.RESTAdapter.create();
App.User.collectionKey = "users"