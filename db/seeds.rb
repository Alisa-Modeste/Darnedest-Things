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
  },

  {
    user_id: 2,
    title: "Copied this!",
    body: "I have a rails 4 application where users define for example a tools database and creates fields that store items like brand, year, etc. Then a CRUD interface is presented before them, based on the fields they defined.\r\n\r\nRight now I have a Database model that looks like this:\r\n\r\nclass Database < ActiveRecord::Base\r\n\r\n  has_many :fields\r\nand a Field Model that looks like this:\r\n\r\nclass Field < ActiveRecord::Base\r\n  belongs_to :database\r\nBasically, right now on the Add Fields page (which is after you have a created a database and defined the fields), I'm creating a unique id and storing that with all the fields on that page, which I then use to group fields into a \"row\" (using a rails groupby statement).\r\n\r\nI have two questions: 1. Is the most efficient way to implement a \"database\"? 2. I can't figure out how to best link the field names you define when you create the database with the fields in the CRUD interface. So for example, If I create a name field when I'm initially defining all of the fields, how can I have it associated with fields in the CRUD interface?\r\n\r\nThanks for all help! If I need to clarify more, please tell!"
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
