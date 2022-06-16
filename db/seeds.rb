require "open-uri"
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Favori.destroy_all
puts "favoris destroy ok"

Creation.destroy_all
puts "creation destroy ok"

puts "debut seed"

foulard_chouchou = Creation.create!(name: 'Chouchou foulard', longueur: 50, largeur: 35, tissue_type: "", video_link: "src='https://www.youtube.com/embed/5y9jsSfDNYs' title='YouTube video player' frameborder='0' allow='accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture'", patron_link: "test link", tagline: "Les chouchous foulards, c’est notre astuce pour une coiffure toujours chic.", description:"Je vous avoue un secret. La plupart du temps, si vous me voyez coiffée d’un chouchou, c’est que je n’ai pas eu l’énergie de me coiffer. Je ramasse mes cheveux d’un côté, je noue mon chouchou et me voilà parée d’une belle coiffure vite fait, bien fait ! C’est une couture très facile et rapide à réaliser. Je vous recommande ce projet si vous débutez la couture. Ou pour coudre avec les enfants par exemple.
", instruction: "Je vous propose deux versions de nœud : un nœud court et un nœud long, de type foulard. Pour coudre un foulchie, comme on l’entend parfois.", time: 1)
file1 = URI.open('https://res.cloudinary.com/wagui/image/upload/v1655373341/FabricsApp/Chouchou_foulard/chouchou_foulard_photo_principale_huc1eq.jpg')
foulard_chouchou.photos.attach(io: file1, filename: 'foulard_chouchou.jpg', content_type: 'image/jpg')
file2 = URI.open('https://res.cloudinary.com/wagui/image/upload/v1655373342/FabricsApp/Chouchou_foulard/chouchou_foulard_photo_2_fmvzfx.jpg')
foulard_chouchou.photos.attach(io: file2, filename: 'foulard_chouchou2.jpg', content_type: 'image/jpg')
file3 = URI.open('https://res.cloudinary.com/wagui/image/upload/v1655373342/FabricsApp/Chouchou_foulard/chouchou_foulard_photo_3_xiiao8.jpg')
foulard_chouchou.photos.attach(io: file3, filename: 'foulard_chouchou3.jpg', content_type: 'image/jpg')
file4 = URI.open('https://res.cloudinary.com/wagui/image/upload/v1655373342/FabricsApp/Chouchou_foulard/chouchou_foulard_photo_3bis_ddtmra.jpg')
foulard_chouchou.photos.attach(io: file4, filename: 'foulard_chouchou4.jpg', content_type: 'image/jpg')
file5 = URI.open('https://res.cloudinary.com/wagui/image/upload/v1655373342/FabricsApp/Chouchou_foulard/chouchou_foulard_photo_4_bipiry.jpg')
foulard_chouchou.photos.attach(io: file5, filename: 'foulard_chouchou5.jpg', content_type: 'image/jpg')

puts "#{Creation.count} creations created"

doudou_lapin = Creation.create!(name: 'Doudou lapin', longueur: 60, largeur: 40, tissue_type: "test", video_link: "test link", patron_link: "test link", tagline: "Le lapin le plus mignon et le plus doux depuis que les doudous existent !", description:"Les doudous font partie des premiers jouets et procurent un sentiment rassurant de sécurité. Notre doudou lapin peut être cousu de manière typique en tissu peluche, mais aussi en polaire ou en tissu nid d’abeille.", instruction: "Avec un patch ou une broderie, le doudou devient un cadeau individuel et très spécial.", time: 3)
file1 = URI.open('https://res.cloudinary.com/wagui/image/upload/v1655373483/FabricsApp/Doudou_lapin/doudou_lapin_photo_1_m3oxfv.webp')
doudou_lapin.photos.attach(io: file1, filename: 'doudou_lapin.webp', content_type: 'image/webp')
file2 = URI.open('https://res.cloudinary.com/wagui/image/upload/v1655373483/FabricsApp/Doudou_lapin/doudou_lapin_photo_2_kmylle.webp')
doudou_lapin.photos.attach(io: file2, filename: 'doudou_lapin2.webp', content_type: 'image/webp')
file3 = URI.open('https://res.cloudinary.com/wagui/image/upload/v1655373483/FabricsApp/Doudou_lapin/doudou_lapin_photo_3_vzyxcu.webp')
doudou_lapin.photos.attach(io: file3, filename: 'doudou_lapin3.webp', content_type: 'image/webp')
file4 = URI.open('https://res.cloudinary.com/wagui/image/upload/v1655373483/FabricsApp/Doudou_lapin/doudou_lapin_photo_4_lpfbwi.webp')
doudou_lapin.photos.attach(io: file4, filename: 'doudou_lapin4.webp', content_type: 'image/webp')
file5 = URI.open('https://res.cloudinary.com/wagui/image/upload/v1655373483/FabricsApp/Doudou_lapin/doudou_lapin_photo_5_ur50mp.jpg')
doudou_lapin.photos.attach(io: file5, filename: 'doudou_lapin5.webp', content_type: 'image/webp')

puts "#{Creation.count} creations created"

ballon = Creation.create!(name: 'Ballon', longueur: 90, largeur: 63, tissue_type: "test", video_link: "test link", patron_link: "test link", tagline: "Ce ballon devient un objet ludique unique et résistant ", description:"La housse est lavable, réutilisable à l’infini et constitue également une excellente idée de cadeau pour l’anniversaire
d’un enfant. Les tissus non extensibles tels que la popeline, le tissu fanion, le lin ou la cretonne
conviennent pour ce projet de couture. Les tissus en coton enduit ont en outre l’avantage de
permettre à la balle de résister à de nombreuses flaques d’eau.", instruction: "Ce ebook gratuit offre
d’innombrables possibilités et convient également aux débutants en couture.", time: 2)
file1 = URI.open('https://res.cloudinary.com/wagui/image/upload/v1655373415/FabricsApp/Ballon/ballon_photo_1_ixsd4a.webp')
ballon.photos.attach(io: file1, filename: 'ballon.webp', content_type: 'image/webp')
file2 = URI.open('https://res.cloudinary.com/wagui/image/upload/v1655373415/FabricsApp/Ballon/ballon_photo_2_u8eqgw.jpg')
ballon.photos.attach(io: file2, filename: 'ballon2.jpg', content_type: 'image/jpg')

puts "#{Creation.count} creations created"

sac_a_dos_enfant = Creation.create!(name: 'Sac à dos enfant', longueur: 240, largeur: 168, tissue_type: "test", video_link: "test link", patron_link: "test link", tagline: "Notre sac à dos pour enfants ALEX dans le style messager tendance !", description:"ce joli sac à dos a des bretelles rembourrées, un porte-bouteille et une petite poche intérieure avec velcro. Un excellent compagnon pour le
Maternelle ou pour les premières aventures et excursions.", instruction: "Tissus conseillés : toile, velours côtelé, cretonne, popeline, coton enduit, simili cuir, liège, ciré", time: 5)
file1 = URI.open('https://res.cloudinary.com/wagui/image/upload/v1655373537/FabricsApp/Sac_a_dos_enfant/Sac_a_dos_enfant_photo_1_a6rxqa.webp')
sac_a_dos_enfant.photos.attach(io: file1, filename: 'sac_a_dos_enfant.webp', content_type: 'image/webp')
file2 = URI.open('https://res.cloudinary.com/wagui/image/upload/v1655373537/FabricsApp/Sac_a_dos_enfant/Sac_a_dos_enfant_photo_2_usn4sr.webp')
sac_a_dos_enfant.photos.attach(io: file2, filename: 'sac_a_dos_enfant2.webp', content_type: 'image/webp')
file3 = URI.open('https://res.cloudinary.com/wagui/image/upload/v1655373537/FabricsApp/Sac_a_dos_enfant/Sac_a_dos_enfant_photo_3_zqvlxd.jpg')
sac_a_dos_enfant.photos.attach(io: file3, filename: 'sac_a_dos_enfant3.jpg', content_type: 'image/jpg')
file4 = URI.open('https://res.cloudinary.com/wagui/image/upload/v1655373537/FabricsApp/Sac_a_dos_enfant/Sac_a_dos_enfant_photo_4_liqqom.jpg')
sac_a_dos_enfant.photos.attach(io: file4, filename: 'sac_a_dos_enfant4.jpg', content_type: 'image/jpg')

  puts "#{Creation.count} creations created"
