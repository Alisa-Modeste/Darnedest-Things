DT.User = DS.Model.extend({
  //email: DS.attr("string"),
  //password_digest:
  name: DS.attr("string")

})

DT.User.FIXTURES = [
  {
    id: 1,
    name: "Bob Smith"
  },

  {
    id: 2,
    name: "Sue White"
  },

  {
    id: 3,
    name: "Henry Blue"
  }
]