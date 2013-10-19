// App.QuestionsNewController = Ember.ObjectController.extend({
	// body:null,
	// title:null,
	// user:null,
	// tags:null,
  // save: function(){
  
  // console.log("Saving")
  // console.log(this.get('title'))
  // console.log(this.get('tags'))
  // console.log(this.get('body'))
  // console.log(this.get('user'))
  
    // var newQuestion = App.Question.create({
      // title: this.get('title'),
      // body: this.get('body'),
      // tags: this.get('tags'),
      // user: {user_id: 1}
	  
    // })
	// console.log(newQuestion)

    // newQuestion.save();
  // }
// })


App.QuestionsNewController = Ember.ObjectController.extend({
	body:null,
	title:null,
	user:null,
	tags:null,
  save: function(){
  
  console.log("Saving")
  
    var newQuestion = App.Question.create({
      title: this.get('title'),
      body: this.get('body'),
	  
    })
	console.log(newQuestion)

    newQuestion.save();
	
	var enteredTags = newQuestion.get('tags')
	enteredTags.create({name: this.get('tags') });
	
	}
})