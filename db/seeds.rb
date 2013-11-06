# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


q = Question.where(title: "What is the best place to get a nice low-key lunch in LA?").first_or_initialize
q.update_attributes(user_id: 1)

q = Question.where(title: "What was your favorite book as a kid?").first_or_initialize
q.update_attributes(user_id: 1, body: "I loved Ender's Game. I read it now and again and I still treasure it.")

q = Question.where(title: "What did you eat last night?").first_or_initialize
q.update_attributes(user_id: 2, body: "My answer: Chicken parmesan.")

q = Question.where(title: "So tired! How can I get more/better sleep?").first_or_initialize
q.update_attributes(user_id: 2)

q = Question.where(title: "How many kids did you want as a kid? How many do you have now?").first_or_initialize
q.update_attributes(user_id: 2, body: "I wanted six, but I'm satisfied with my one now")

Tag.where(name: "eating").first_or_create
Tag.where(name: "quality-of-life").first_or_create
Tag.where(name: "books").first_or_create
Tag.where(name: "survey").first_or_create
Tag.where(name: "most").first_or_create

Tagging.where({tag_id: 1, question_id: 1}).first_or_create
Tagging.where({tag_id: 1, question_id: 3}).first_or_create
Tagging.where({tag_id: 2, question_id: 4}).first_or_create
Tagging.where({tag_id: 3, question_id: 2}).first_or_create
Tagging.where({tag_id: 4, question_id: 2}).first_or_create
Tagging.where({tag_id: 4, question_id: 3}).first_or_create
Tagging.where({tag_id: 4, question_id: 5}).first_or_create
Tagging.where({tag_id: 5, question_id: 1}).first_or_create
Tagging.where({tag_id: 5, question_id: 2}).first_or_create
Tagging.where({tag_id: 5, question_id: 3}).first_or_create
Tagging.where({tag_id: 5, question_id: 4}).first_or_create
Tagging.where({tag_id: 5, question_id: 5}).first_or_create

u = User.where(email: "bob@gmail.com").first_or_initialize
u.update_attributes({password: "Fluffy123", name: "Bob Parker"})

u = User.where(email: "tom@aol.com").first_or_initialize
u.update_attributes({password: "SecurePassword1", name: ""})

u = User.where(email: "jill@live.com").first_or_initialize
u.update_attributes({password: "Hacker4Life", name: "Jill Scott"})

u = User.where(email: "silent@live.com").first_or_initialize
u.update_attributes({password: "NoOneNoticesMe", name: ""})


a = Answer.where({question_id: 1, user_id: 1}).first_or_initialize
a.update_attributes(response: "I've enjoyed myself at a little bistro near Holland. They are a little family run business and their food is to die for.")

a = Answer.where({question_id: 2, user_id: 1}).first_or_initialize
a.update_attributes(response: "My favorite book was Anne of Green Gables believe it or not. I admired her wit and her spunk. I consider her a personal role model to this day.")

a = Answer.where({question_id: 2, user_id: 2}).first_or_initialize
a.update_attributes(response: "My favorite was Green Eggs and Ham. I was so proud of myself. It was the first book I could read all on my own.")

a = Answer.where({question_id: 2, user_id: 3}).first_or_initialize
a.update_attributes(response: "I was comforted in my own struggles by reading Are You There God? It's Me, Margaret.")

a = Answer.where({question_id: 4, user_id: 1}).first_or_initialize
a.update_attributes(response: "The first thing to do is figure out why you aren't getting enough sleep. Are you actually not spending enough time in bed? Are you supposed to be asleep but awake worrying about your life? Can you not get comfortable? (Whether it's too hot or the bed's to lumpy or whatever.) Once you figure that out then you go about changing things. Keep a regular bedtime, decide to stop thinking about your cares once you get into the bed (take a break from them a solution might soon show itself), exercise 3 hours before bedtime.")

a = Answer.where({question_id: 5, user_id: 1}).first_or_initialize
a.update_attributes(response: "I have never wanted kids and never did have any. I'm 55.")

a = Answer.where({question_id: 5, user_id: 2}).first_or_initialize
a.update_attributes(response: "8 as a kid. Now I'm loving the two I have now (and don't want any more)")

a = Answer.where({question_id: 5, user_id: 3}).first_or_initialize
a.update_attributes(response: "33. (I was going to adopt.)")
