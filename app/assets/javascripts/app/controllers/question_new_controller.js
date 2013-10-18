App.QuestionNewController = Ember.ArrayController.extend({
  save: function(){
    var newQuestion = App.Question.create({
      title: this.get('title'),
      body: this.get('body'),
      user: this.get('user_id')
    })

    newQuestion.save();
  }
})