App.ApplicationController = Ember.Controller.extend({
  currentPathDidChange: function() {
    App.set('currentPath', this.get('currentPath'));
	
	if (App.get('currentPath') == ''){
		return true
	}
	else{
		return false
	}
  }.observes('currentPath')
});