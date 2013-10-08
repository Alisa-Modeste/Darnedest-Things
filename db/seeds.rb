# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Question.create([
  {
    user_id: 1,
    title: "AAAAAAAaaaa",
    body: "Stuff"
  },

  {
    user_id: 1,
    title: "BBBBBBBBBBBbbbbbbbbbbbbbbb",
    body: "More Stuff"
  },

  {
    user_id: 2,
    title: "Recent Developments in the World of Pastrami",
    body: "Recent Developments and Prosciutto and You: A Retrospective"
  },

  {
    user_id: 2,
    title: "So tired!",
    body: "I snoozed my alarm for fourteen hours today. I bet I can beat that tomorrow! #sleepy"
  },

  {
    user_id: 2,
    title: "Movies?",
    body: "Have you seen Woody Allen's movie entitled Sleeper? Me neither. #boycott"
  }

]);

Tag.create([
  {
    name: "Dogs"
  },
  {
    name: "Cats"
  },
  {
    name: "Farming"
  }
]);

Tagging.create([
  {
    tag_id: 1,
    question_id: 1
  },

  {
    tag_id: 2,
    question_id: 1
  },

  {
    tag_id: 1,
    question_id: 2
  }
]);

User.create([
  {
    email: "a",
    password: "a",
    name: "a"
  },

  {
    email: "b",
    password: "b",
    name: "b"
  }
])

Answer.create([
  {
    question_id: 1,
    user_id: 1,
    response: "fggggg"
  }
])
