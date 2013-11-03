# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


q = Question.where(title: "What is the best place to get a nice low-key dinner in LA?").first_or_initialize
q.update_attributes(user_id: 1)

q = Question.where(title: "What was your favorite book as a kid?").first_or_initialize
q.update_attributes(user_id: 1, body: "I loved Ender's Game. I read it now and again and I still treasure it.")

q = Question.where(title: "What did you eat last night?").first_or_initialize
q.update_attributes(user_id: 2, body: "My answer: Chicken parmesan.")

q = Question.where(title: "So tired! How can I get more/better sleep?").first_or_initialize
q.update_attributes(user_id: 2)

Tag.where(name: "eating").first_or_initialize
Tag.where(name: "quality-of-life").first_or_initialize
Tag.where(name: "books").first_or_initialize

Tagging.where([tag_id: , tag_id: ]).first_or_initialize


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
