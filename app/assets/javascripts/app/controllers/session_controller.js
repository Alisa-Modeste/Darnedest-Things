App.SessionNewController = Ember.ObjectController.extend({
	email:null,
	password:null,
  save: function(){
  
  console.log("Saving")
  
    var newSession = App.Session.create({
      email: this.get('email'),
      password: this.get('password'),
	  
    })
	
    newSession.save();
	
	}
})