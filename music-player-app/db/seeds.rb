# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Song.destroy_all
Playlist.destroy_all

puts "I"
s1 = Song.create!(title: "Lose It", artist: "Eminem")
s1 = Song.create!(title: "Space Bound", artist: "Eminem")
s1 = Song.create!(title: "The Way I Am", artist: "Eminem")
s1 = Song.create!(title: "Rap God", artist: "Eminem")
s1 = Song.create!(title: "When I'm Gone", artist: "Eminem")
s1 = Song.create!(title: "The End Is Beautiful", artist: "Jimmy Eat World")
puts "am"

puts "here"
u1 = User.create!(name: "John Wick", email: "james@gmail.com", password: "noticeme", song_id: s1.id, playlist_id: 1)
puts"now"

Playlist.create!(user_id: 1)
# p1 = Playlist.create!(song_id: s1.id, user_id: u1.id)
