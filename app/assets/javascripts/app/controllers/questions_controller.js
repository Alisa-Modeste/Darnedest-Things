//TODO: Why isn't listOfTags/question_tags in the quesition hash

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
  //this.set('tags', [1,2])
    var newQuestion = App.Question.create({
      title: this.get('title'),
      body: this.get('body'),
	//  tags: $H({tags: this.get('tags')})
	 // tag_ids: [h_tag.get('id')]
	 //tags: [ { name: this.get('tags') }]
//	 tags: [ { name: 'tags' }]
	listOfTags: this.get('tags')
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