App.SessionNewController = Ember.ObjectController.extend({
	email:null,
	password:null,
  save: function(){
  
  console.log("Saving")
  
    var newSession = App.Session.create({
      email: this.get('email'),
      password: this.get('password'),
	  
    })
	
    newSession.save().then(function(){
		App.Router.router.transitionTo("questions.index")

		//To reset the forms for now
		this.set('email', null);
		this.set('password', null);
	});

	
	}
})