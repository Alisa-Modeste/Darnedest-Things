//TODO: Why isn't listOfTags/question_tags in the quesition hash

App.QuestionsQuestionController = Ember.ObjectController.extend({
	response:null,

    save: function(){
		var newAnswer = App.Answer.create({
		
			response: this.get('response'),

			question_id: this.get('model').get('id')
		})

		newAnswer.save();
	}
})