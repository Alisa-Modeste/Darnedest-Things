App.UsersNewController = Ember.ObjectController.extend({
	email:null,
	password:null,
	name:null,
  save: function(){
  
  console.log("Saving")
  
    var newUser = App.User.create({
      email: this.get('email'),
      password: this.get('password'),
	  name: this.get('name'),
	  
    })
	
    newUser.save();
	
	//To reset the forms for now
		this.set('email', null);
		this.set('password', null);
		this.set('name', null);
	
	}
})