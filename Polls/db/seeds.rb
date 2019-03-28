# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


10.times do |i|
  username = Faker::Internet.unique.email
  User.create!({username: username})

  poll_name = Faker::Superhero.name
  Poll.create!({title: poll_name, user_id: i})

  question = "#{Faker::TvShows::RickAndMorty.unique.quote}?"
  question2 = "#{Faker::TvShows::RickAndMorty.unique.quote}?"

  Question.create!({question: question, poll_id: i})
  Question.create!({question: question2, poll_id: i})

  answer = Faker::TvShows::Simpsons.unique.character
  AnswerChoice.create!({answer: answer, question_id: i})
end

  Response.create!({user_id: 1, answer_id: 8})
  Response.create!({user_id: 1, answer_id: 7})
  Response.create!({user_id: 1, answer_id: 6})
  Response.create!({user_id: 1, answer_id: 5})
  Response.create!({user_id: 2, answer_id: 4})
  Response.create!({user_id: 1, answer_id: 3})
  Response.create!({user_id: 1, answer_id: 2})
  Response.create!({user_id: 1, answer_id: 1})



