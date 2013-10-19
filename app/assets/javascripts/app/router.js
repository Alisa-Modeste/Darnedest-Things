App.Router.map(function(){

  //New


  //Indexes and Shows
  // this.resource("questions", {path: "/questions"});

	// this.resource("question_new", {path: "/questions/new"});
	// this.resource("question", {path: "/questions/:question_id"});
	
	this.resource("questions", {path: "/questions"}, function(){
		this.route('new', {path: "/questions/new"});
		this.route('question', {path: "/questions/:question_id"});

	});
	
	this.resource("users", {path: "/users"}, function(){
		this.route('new', {path: "/users/new"});
		this.route('user', {path: "/users/:user_id"});

	});

	// this.resource("users");
	// this.resource("user", {path: "/users/:user_id"});

	this.resource("tags");
	this.resource("tag", {path: "/tags/:tag_id"});


});