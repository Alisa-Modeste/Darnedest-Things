App.ApplicationController = Ember.Controller.extend({
  currentPathDidChange: function() {
    App.set('currentPath', this.get('currentPath'));
	
	if (App.get('currentPath') == ''){
		return true
	}
	else{
		return false
	}
  }.observes('currentPath'),
  
  logout: function(){
	 // Ember.$.AJAX('/session', function(data) {
				// App.store.load(App.User, data);
				// var currentUser = App.store.find(data.id);
				// controller.set('content', currentUser);
			// });
			
		Ember.$.ajax({
			url: '/session',
			type: "DELETE"
	  });
	  }
});