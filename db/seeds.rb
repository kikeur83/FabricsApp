# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Favori.destroy_all
Creation.destroy_all

Creation.create!(name:'test movie', longueur:45, largeur: 60, tissue_type: "test", video_link: "test link", patron_link: "test link", tagline: "wlkljfweljftest", description:" kjkenfvojknefc", instruction: "efjnewfjnckwejfn", time: 45)
Creation.create!(name: 'test', longueur: 45, largeur: 60, tissue_type: "test", video_link: "test link", patron_link: "test link", tagline: "lkjnfvjetest", description:" kjkenfvojknefc", instruction: "efjnewfjnckwejfn", time: 45)
Creation.create!(name: 'movie', longueur: 45, largeur: 60, tissue_type: "test", video_link: "test link", patron_link: "test link", tagline: "elkrngflkertest", description:" kjkenfvojknefc", instruction: "efjnewfjnckwejfn", time: 45)
Creation.create!(name: 'test_movie', longueur: 45, largeur: 60, tissue_type: "test", video_link: "test link", patron_link: "test link", tagline: "welkfnqwrlekftest", description:" kjkenfvojknefc", instruction: "efjnewfjnckwejfn", time: 45)
Creation.create!(name: 'testMovie', longueur: 45, largeur: 60, tissue_type: "test", video_link: "test link", patron_link: "test link", tagline: "wEFLKLNWELKFtest", description:" kjkenfvojknefc", instruction: "efjnewfjnckwejfn", time: 45)
puts "#{Creation.count} creations created"