App.Router.map(function(){
	
	this.resource("questions", {path: "/questions"}, function(){
		this.route('new', {path: "/new"});
		this.route('question', {path: "/:question_id"});

	});
	
	this.resource("users", {path: "/users"}, function(){
		this.route('new', {path: "/new"});
		this.route('user', {path: "/:user_id"});

	});
	
	this.resource("tags", {path: "/tags"}, function(){
		this.route('new', {path: "/new"});
		this.route('tag', {path: "/:tag_id"});

	});
	
	this.resource("session", {path: "/session"}, function(){
		this.route('new', {path: "/new"});
		this.route('delete', {path: "/delete"});

	});

});