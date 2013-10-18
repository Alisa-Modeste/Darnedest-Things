App.Router.map(function(){
	this.route("about");
	this.route("contact");


  //New


  //Indexes and Shows
  this.resource("questions");
  // this.resource('questions', function(){
    // this.route('new');

  // });
	this.resource("question_new", {path: "/questions/new"});
	this.resource("question", {path: "/questions/:question_id"});

	this.resource("users");
	this.resource("user", {path: "/users/:user_id"});

	this.resource("tags");
	this.resource("tag", {path: "/tags/:tag_id"});


});