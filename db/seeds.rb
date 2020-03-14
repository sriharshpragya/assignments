# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Topic.create(name: "Topic 1")
Topic.create(name: "Topic 2")
Topic.create(name: "Topic 3")
Topic.create(name: "Topic 4")

User.create(email: "Pragya1@gmail.com", password:"Pragya", password_confirmation:"Pragya")
User.create(email: "Pragya2@gmail.com", password:"Pragya", password_confirmation:"Pragya")
User.create(email: "Pragya3@gmail.com", password:"Pragya", password_confirmation:"Pragya")
User.create(email: "Pragya4@gmail.com", password:"Pragya", password_confirmation:"Pragya")

Question.create(topic_id: 1, user_id: 1, content: "Why Rails?")
Question.create(topic_id: 1, user_id: 1, content: "What is Rails Association?")
Question.create(topic_id: 2, user_id: 2, content: "Eager Loading?")
Question.create(topic_id: 2, user_id: 2, content: "Include vs Joins?")
Question.create(topic_id: 3, user_id: 3, content: "Is it good React JS for Frontend?")
Question.create(topic_id: 3, content: "Explain Docker?")

Answer.create(question_id: 1, user_id: 1, content: "Will explain it later!")
Answer.create(question_id: 1, user_id: 1, content: "Will explain it later!")
Answer.create(question_id: 2, user_id: 1, content: "Will explain it later!")
Answer.create(question_id: 2, user_id: 1, content: "Will explain it later!")
Answer.create(question_id: 3, user_id: 1, content: "Will explain it later!")
Answer.create(question_id: 3, user_id: 1, content: "Will explain it later!")





