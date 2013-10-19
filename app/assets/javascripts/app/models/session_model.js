App.Session = Ep.Model.extend({
  email: Ep.attr("string"),
  password: Ep.attr("string")
});

App.Session.url = "/session";
App.Session.adapter = Ep.RestAdapter.create();
// App.Tag.collectionKey = "tags"