window.App = Ember.Application.create({
  LOG_TRANSITIONS: true, // basic logging of successful transitions
    LOG_TRANSITIONS_INTERNAL: true // detailed logging of all routing steps
});

App.Router.map(function(){
  this.route("about");
  this.route("contact");
});