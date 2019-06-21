# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# User.destroy_all
# Song.destroy_all
# Playlist.destroy
Song.create!(title: "Lose It", artist: "Eminem", url: "https://www.youtube.com/watch?v=9dcVOmEQzKA")
Song.create!(title: "Space Bound", artist: "Eminem", url: "https://www.youtube.com/watch?v=JByDbPn6A1o")
Song.create!(title: "The Way I Am", artist: "Eminem", url: "https://www.youtube.com/watch?v=KWmG0ZsUAag")
Song.create!(title: "Rap God", artist: "Eminem", url: "https://www.youtube.com/watch?v=XbGs_qK2PQA")
Song.create!(title: "When I'm Gone", artist: "Eminem", url: "https://www.youtube.com/watch?v=cmSbXsFE3l8")
Song.create!(title: "The End Is Beautiful", artist: "Jimmy Eat World", url: "https://www.youtube.com/watch?v=_zA0bWbT4Dg")
Song.create!(title: "Angel of Death", artist: "Slayer", url: "https://www.youtube.com/watch?v=K6_zsJ8KPP0")
Song.create!(title: "Amor Clandestino", artist: "Mana", url: "https://www.youtube.com/watch?v=HL4HjQwMx-o")
Song.create!(title: "You're the one for me", artist: "D Train", url: "https://www.youtube.com/watch?v=OZ5KE_XzORA")
Song.create!(title: "Stronger", artist: "Kanye West", url: "https://www.youtube.com/watch?v=PsO6ZnUZI0g")
Song.create!(title: "Black Me Out", artist: "Against Me!", url: "https://www.youtube.com/watch?v=iWB_b480-9c")
Song.create!(title: "Creep", artist: "Radiohead", url: "https://www.youtube.com/watch?v=XFkzRNyygfk")
Song.create!(title: "Waitin On A Sunny Day", artist: "Bruce Springsteen", url: "https://www.youtube.com/watch?v=OAxm_GSM7L4")
Song.create!(title: "Enter Sandman", artist: "Metallica", url: "https://www.youtube.com/watch?v=CD-E-LDc384")
Song.create!(title: "Peace Sells", artist: "Megadeth", url: "https://www.youtube.com/watch?v=aiQpRQeIiHY")
Song.create!(title: "Sudden Death", artist: "Megadeth", url: "https://www.youtube.com/watch?v=7qSzf0oGQoc")


u1 = User.create!(name: "John Wick", email: "james@gmail.com", password: "noticeme", playlist_id: 1)

Playlist.create!(user_id: 1)
# p1 = Playlist.create!(song_id: s1.id, user_id: u1.id)
