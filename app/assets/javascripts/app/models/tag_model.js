App.Tag = Ember.Model.extend({
	id: Ember.attr("number"),
	name: Ember.attr("string"),
	questions: Ember.hasMany('App.Question', {key: 'question_ids', embedded: false })
});

App.Tag.url = "/tags";
App.Tag.adapter = Ember.RESTAdapter.create();
App.Tag.collectionKey = "tags"