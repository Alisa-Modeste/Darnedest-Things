App.Router.map(function(){
	
	this.resource("questions", {path: "/questions"}, function(){
		this.route('new', {path: "/questions/new"});
		this.route('question', {path: "/questions/:question_id"});

	});
	
	this.resource("users", {path: "/users"}, function(){
		this.route('new', {path: "/users/new"});
		this.route('user', {path: "/users/:user_id"});

	});
	
	this.resource("tags", {path: "/tags"}, function(){
		this.route('new', {path: "/tags/new"});
		this.route('tag', {path: "/tags/:tag_id"});

	});

});