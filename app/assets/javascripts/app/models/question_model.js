// TODO: Might have to make a custom type for text

App.Question = Ember.Model.extend({
	id: Ember.attr("number"),
	title: Ember.attr("string"),
	body: Ember.attr("string"),
	listOfTags: Ember.attr("string"), //for saving only
	user: Ember.belongsTo('App.User', {key: 'user_id', embedded: false }),
	answers: Ember.hasMany('App.Answer', {key: 'answer_ids', embedded: false }),
	tags: Ember.hasMany('App.Tag', {key: 'tag_ids', embedded: false })

});

App.Question.url = "/questions";
App.Question.adapter = Ember.RESTAdapter.create();
App.Question.collectionKey = "questions"