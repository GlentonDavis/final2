# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
puts "Deleting all records from the database..."
Artist.delete_all
Song.delete_all
Survey.delete_all
Question.delete_all
Answer.delete_all
User.delete_all

puts "Creating artists..."
davis = Artist.create(name: "Glenton Davis")
media = Artist.create(name: "MediaSoulPop")

puts "Creating songs..."
alone = Song.create(name: "Alone", year_released: "2008", artist_id: davis.id)
go_get_on_the_floor = Song.create(name: "Go Get on the Floor - Extended Club Remix", year_released: "2010", artist_id: davis.id)
you_should_know = Song.create(name: "You Should Know", year_released: "2008", artist_id: davis.id)
she_dont_have_to_know = Song.create(name: "She Don't Have to Know", year_released: "2009", artist_id: media.id)
dangerously_in_love_two = Song.create(name: "Dangerously In Love Part 2", year_released: "2009", artist_id: media.id)

puts "Creating surveys..."
survey_one = Survey.create(name: "Alone", song_id: alone.id, rating: "")
#survey_two = Survey.create(name: "Go Get on the Floor", song_id: go_get_on_the_floor.id)
#survey_three = Survey.create(name: "You Should Know", song_id: you_should_know.id) 
#survey_four = Survey.create(name: "She Don't Have to Know", song_id: she_dont_have_to_know.id) 
#survey_five = Survey.create(name: "Dangerously In Love Part 2", song_id: dangerously_in_love_two.id)

puts "Creating questions..."

# Create the questions for Alone
Question.create(song_id: alone.id, survey_id: survey_one.id, text: "How would you describe this artist's voice?")

# Create the questions for Go Get on the Floor
#Question.create(song_id: go_get_on_the_floor.id, survey_id: content.id, text: "How would you describe this artist's voice?")
#Question.create(song_id: go_get_on_the_floor.id, survey_id: survey_two.id, text: "Is it interesting to you that the artist wrote this song about a molecular reaction he mixed in a Chemistry class?")

# Create the questions for You Should Know
#Question.create(song_id: you_should_know.id, survey_id: content.id, text: "How would you describe this artist's voice?")
#Question.create(song_id: you_should_know.id, survey_id: community.id, text: "Is it interesting to you that the artist founded an arts education nonprofit while on tour in 2010?")
#Question.create(song_id: you_should_know.id, survey_id: survey_three.id, text: "What would make you like this song more?")

# Create the questions for She Don't Have to Know
#Question.create(song_id: she_dont_have_to_know.id, survey_id: content.id, text: "How would you describe this artist's voice?")
#Question.create(song_id: she_dont_have_to_know.id, survey_id: community.id, text: "Is it interesting to you that the artist credits fellow Ivy-Leaguer John Legend as a creative influence?")
#Question.create(song_id: she_dont_have_to_know.id, survey_id: critique.id, text: "What would make you like this song more?")
#Question.create(song_id: she_dont_have_to_know.id, survey_id: survey_four.id, text: "How did you ultimately consume this song?")

# Create the questions for Dangerously in Love Two
#Question.create(song_id: dangerously_in_love_two.id, survey_id: content.id, text: "How would you describe this artist's voice?")
#Question.create(song_id: dangerously_in_love_two.id, survey_id: community.id, text: "Is it interesting to you that the artist re-arrangned this Beyonce hit to reflect his jazz training?")
#Question.create(song_id: dangerously_in_love_two.id, survey_id: critique.id, text: "What would make you like this song more?")
#Question.create(song_id: dangerously_in_love_two.id, survey_id: consumption.id, text: "How did you ultimately consume this song?")
#Question.create(song_id: dangerously_in_love_two.id, survey_id: survey_five.id, text: "Is it interesting to you that the artist wrote this during a difficult time he experienced at Yale?")


puts "Creating answers..."
# Create the answers to Alone
Answer.create(survey_id: survey_one.id, text: "Happy")
Answer.create(survey_id: survey_one.id, text: "Sad")
#Answer.create(survey_id: survey_one.id, text: "Excited")
#Answer.create(survey_id: survey_one.id, text: "Bored")
# Create the answers to Go Get on the Floor
#Answer.create(survey_id: survey_two.id, text: "Yes")
#Answer.create(survey_id: survey_two.id, text: "No")
# Create the answers to You Should Know
#Answer.create(survey_id: survey_three.id, text: "More cowbell")
#Answer.create(survey_id: survey_three.id, text: "Better sound quality")
#Answer.create(survey_id: survey_three.id, text: "More radio-friendly")
# Create the answers to She Don't Have to Know
#Answer.create(survey_id: survey_four.id, text: "Streamed it for free on Bandcamp")
#Answer.create(survey_id: survey_four.id, text: "Paid money for it on Bandcamp")
#Answer.create(survey_id: survey_four.id, text: "Purchased it on iTunes")
# Create the answers to Dangerously in Love 2
#Answer.create(survey_id: survey_five.id, text: "Yes")
#Answer.create(survey_id: survey_five.id, text: "No")


User.create(name: "Brian", email: "b-eng@kellogg.northwestern.edu", password: "secret")

puts "There are now #{Artist.count} artists, #{Song.count} songs, #{Question.count} questions, #{Survey.count} surveys, #{Answer.count} answers, and #{User.count} users in the database."