//TODO: Why isn't listOfTags/question_tags in the quesition hash

App.QuestionsNewController = Ember.ObjectController.extend({
	body:null,
	title:null,
	tags:null,

  save: function(){
    var newQuestion = App.Question.create({
	
		title: this.get('title'),
		body: this.get('body'),

		listOfTags: this.get('tags')
    })

    newQuestion.save();

	}
})