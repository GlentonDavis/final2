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
Owner.delete_all
Question.delete_all
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

puts "Creating Song owners..."
# Create the owners for Alone
Owner.create(song_id: alone.id, artist_id: davis.id)
# Create the owners for Go Get on the Floor
Owner.create(song_id: go_get_on_the_floor.id, artist_id: davis.id)
# Create the owners for You Should Know
Owner.create(song_id: you_should_know.id, artist_id: davis.id)
# Create the owners for She Don't Have to Know
Owner.create(song_id: she_dont_have_to_know.id, artist_id: media.id)
# Create the owners for Dangerously in Love Two
Owner.create(song_id: dangerously_in_love_two.id, artist_id: media.id)

puts "Creating questions..."
Question.create(text: "How would you describe this artist's voice?", song_id: alone.id, song_id: go_get_on_the_floor.id, song_id: you_should_know.id, song_id: she_dont_have_to_know.id, song_id: dangerously_in_love_two.id, artist_id: davis.id)
Question.create(text: "Is it interesting to you that the artist wrote this during a difficult time he experienced at Yale?", song_id: alone.id, artist_id: davis.id)
Question.create(text: "What would make you like this song more?", song_id: alone.id, song_id: go_get_on_the_floor.id, song_id: you_should_know.id, song_id: she_dont_have_to_know.id, song_id: dangerously_in_love_two.id, artist_id: davis.id)
Question.create(text: "How did you ultimately consume this song?", song_id: alone.id, song_id: go_get_on_the_floor.id, song_id: you_should_know.id, song_id: she_dont_have_to_know.id, song_id: dangerously_in_love_two.id, artist_id: davis.id)
Question.create(text: "Is it interesting to you that the artist wrote this song about a molecular reaction he mixed in a Chemistry class?", song_id: go_get_on_the_floor.id, artist_id: davis.id)
Question.create(text: "Is it interesting to you that the artist founded an arts education nonprofit while on tour in 2010?", song_id: you_should_know.id, artist_id: davis.id)
Question.create(text: "Is it interesting to you that the artist credits fellow Ivy-Leaguer John Legend as a creative influence?", song_id: she_dont_have_to_know.id, artist_id: davis.id)
Question.create(text: "Is it interesting to you that the artist re-arrangned this Beyonce hit to reflect his jazz training?", song_id: dangerously_in_love_two.id, artist_id: davis.id)

User.create(name: "Brian", email: "b-eng@kellogg.northwestern.edu", password: "secret")

puts "There are now #{Song.count} songs, #{Artist.count} artists, and #{Owner.count} Song owners in the database."