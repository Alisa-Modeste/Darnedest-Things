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
    });

    newQuestion.save().then(function(question){
	console.log("in then",this)
		//this.transitionToRoute("questions.question", question.get('id'))
		//App.Router.router.transitionTo("questions.index")
		App.Router.router.transitionTo("questions.question", question.get('id'))

	});
		//TODO
		//To reset the forms for now
		this.set('title', null);
		this.set('body', null);
		this.set('tags', null);

	}
})