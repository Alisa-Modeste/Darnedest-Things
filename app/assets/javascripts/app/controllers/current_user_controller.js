App.CurrentUserController = Ember.ObjectController.extend({
    content: null,

    retrieveCurrentUser: function() {
        var controller = this;
        Ember.$.getJSON('/self/user', function(data) {
            App.store.load(App.User, data);
            var currentUser = App.store.find(data.id);
            controller.set('content', currentUser);
        });
    }
});