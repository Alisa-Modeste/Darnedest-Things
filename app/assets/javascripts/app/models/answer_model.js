// TODO: Might have to make a custom type for text

App.Answer = Ember.Model.extend({
	id: Ember.attr("number"),

	response: Ember.attr("string"),
	question_id: Ember.attr("number"),
	question: Ember.belongsTo('App.Question', {key: 'question_id', embedded: false }),
	user: Ember.belongsTo('App.User', {key: 'user_id', embedded: false })
});

App.Answer.url = "/answers";
App.Answer.adapter = Ember.RESTAdapter.create();
App.Answer.collectionKey = "answers"