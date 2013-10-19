App.QuestionsNewController = Ember.ObjectController.extend({
  save: function(){
  console.log("Saving")
    var newQuestion = App.Question.create({
      title: this.get('title'),
      body: this.get('body'),
      user: this.get('user_id')
    })
	console.log(newQuestion)
	
	var tags = this.get('tags')

    newQuestion.save();
  }
})