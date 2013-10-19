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
	//user:null,
	tags:null,
	//question_tags:null,
  save: function(){
  
 // h_tag = App.Tag.create({name: "Tiff"})
  // h_tag = App.Tag.create({name: this.get('tags')})
  // h_tag.save()
  
  console.log("Saving")
  console.log(this.get('tags'))
 // console.log(h_tag.get('id'))
  this.set('tags', [1,2])
    var newQuestion = App.Question.create({
      title: this.get('title'),
      body: this.get('body'),
	//  tags: $H({tags: this.get('tags')})
	 // tag_ids: [h_tag.get('id')]
	 //tags: [ { name: this.get('tags') }]
//	 tags: [ { name: 'tags' }]
	tags: this.get('tags')
    })
	console.log(newQuestion)
	console.log(newQuestion.get('title'))
	console.log(newQuestion.get('tags'))

    newQuestion.save();
	
	//App.Post.load(1, { comments: [ { text: "ohai, Ember Model is awesome" ] });
	//var enteredTags = newQuestion.get('tags')
	// var enteredTags = App.Question.create({
	// name: this.get('tags'),
	// questions
	// enteredTags.create({name: this.get('tags') });
	
	// enteredTags.save();
	}
})