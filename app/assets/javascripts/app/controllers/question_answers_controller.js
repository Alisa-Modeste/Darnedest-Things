//TODO: Why isn't listOfTags/question_tags in the quesition hash

App.QuestionsQuestionController = Ember.ObjectController.extend({
	response:null,

    save: function(){
		var newAnswer = App.Answer.create({
		
			response: this.get('response'),

			question_id: this.get('model').get('id')
		})

		newAnswer.save();
	},
	
	deleteQuestion: function(){
		var unWantedQuestion = this.get('model.id');
		console.log('q', unWantedQuestion)
		//console.log('q', unWantedQuestion.get('id'))
	},
	
	deleteAnswer: function(answer){
		
		var unWantedAnswer = answer.get('id')
		console.log('a', unWantedAnswer)
		//console.log('q', unWantedQuestion.get('id'))
	}
})