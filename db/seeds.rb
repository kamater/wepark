# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
def get_random_user(user_array) (user_array)
  nb_user = user_array.count
  user_array[rand(1..nb_user-1).round]
end

puts "begining of seed"

puts "Review destroyed"
Review.destroy_all
puts "Rental destroyed"
Rental.destroy_all
puts "User Destroy"
User.destroy_all

puts "Creating new users"
User.create!(email: 'delphine@gmail.com', password: 'azerty', first_name: 'Delphine', last_name: 'Cordonnier', phone_number: '0677333977')
User.create!(email: 'remi59@gmail.com', password: 'azerty', first_name: 'antoine', last_name: 'sorlin', phone_number: '0677889977')
User.create!(email: 'antoine@gmail.com', password: 'azerty', first_name: 'Remi', last_name: 'Lemaire', phone_number: '067711977')
User.create!(email: 'martin@hotmail.com', password: 'azerty', first_name: 'Martin', last_name: 'Dutilleul', phone_number: '06723388977')
User.create!(email: 'alex56@gmail.com', password: 'azerty', first_name: 'bouba', last_name: 'pfrt', phone_number: '0677889977')
User.create!(email: 'duroyon@gmail.fr', password: 'azerty', first_name: 'Delphine', last_name: 'Dubois', phone_number: '0677889977')
User.create!(email: 'Henripfr@gmail.com', password: 'azerty', first_name: 'Delphine', last_name: 'derujh', phone_number: '067788227')
User.create!(email: 'Bouba@gmail.com', password: 'azerty', first_name: 'bouba', last_name: 'arlou', phone_number: '0677889977')
User.create!(email: 'Sadju@gmail.com', password: 'azerty', first_name: 'Daju', last_name: 'Massoni', phone_number: '0611189977')

puts "Finised"
Garage.destroy_all

puts "Creating new garages"

user_array = User.all

g = Garage.create!(user: get_random_user(user_array), capacity: 10, price: 50, location: "6 rue des jonquilles", postale: 59830, city: 'Bourghelles', description: "Grand Garage")
g.remote_photo_url = "https://media.gettyimages.com/photos/garage-picture-id528098460?s=612x612"
g.full_address = "#{g.location} #{g.postale} #{g.city}"
g.save!
g = Garage.create!(user: get_random_user(user_array), capacity: 6, price: 30, location: "10 rue patou", postale: 59000, city: 'Lille', description: "Magnifique Garage éclairé")
g.remote_photo_url = "https://www.degarageamersfoort.nl/userfiles/images/mbo_garage_bg_1.jpg"
g.full_address = "#{g.location} #{g.postale} #{g.city}"
g.save!
g = Garage.create!(user: get_random_user(user_array), capacity: 7, price: 30, location: "99 rue kleber", postale: 59170, city: 'Croix', description: "Petit Garage plein nord")
g.remote_photo_url = "https://www.ctm-renovation.fr/wp-content/uploads/2016/04/construire-un-garage.jpg"
g.full_address = "#{g.location} #{g.postale} #{g.city}"
g.save!
g = Garage.create!(user: get_random_user(user_array), capacity: 6, price: 10, location: "12 rue de bourgogne", postale: 59000, city: 'Lille', description: "Magnifique Garage plein sud")
g.remote_photo_url = "https://www.steeltechsheds.ie/wp-content/gallery/garages-2017/26ft-x-17ft-garage.jpg"
g.full_address = "#{g.location} #{g.postale} #{g.city}"
g.save!
g = Garage.create!(user: get_random_user(user_array), capacity: 12, price: 20, location: "15 rue paul ramadier", postale: 59800, city: 'Lille', description: "Toujours un Garage mal exposé")
g.remote_photo_url = "https://www.ctm-renovation.fr/wp-content/uploads/2016/04/construire-un-garage.jpg"
g.full_address = "#{g.location} #{g.postale} #{g.city}"
g.save!
g = Garage.create!(user: get_random_user(user_array), capacity: 8, price: 30, location: "12 rue nationale", postale: 59000, city: 'Lille', description: "Encore un Garage bien isolé")
g.remote_photo_url = "https://www.degarageamersfoort.nl/userfiles/images/mbo_garage_bg_1.jpg"
g.full_address = "#{g.location} #{g.postale} #{g.city}"
g.save!
g = Garage.create!(user: get_random_user(user_array), capacity: 12, price: 25, location: "10 rue paul ramadier", postale: 59800, city: 'Lille', description: "Toujours un Garage mal exposé")
g.remote_photo_url = "https://www.ctm-renovation.fr/wp-content/uploads/2016/04/construire-un-garage.jpg"
g.full_address = "#{g.location} #{g.postale} #{g.city}"
g.save!


g = Garage.create!(user: get_random_user(user_array), capacity: 15, price: 50, location: "3 avenue des flandre", postale: 59170, city: 'Croix', description: "Trés beau garage, a louer d'urgence")
g.remote_photo_url = "http://www.vassard-sh.fr/wp-content/uploads/2016/09/vsh_garage-bois_30-08-16_20.jpg"
g.full_address = "#{g.location} #{g.postale} #{g.city}"
g.save!
g = Garage.create!(user: get_random_user(user_array), capacity: 20, price: 90, location: "6 Boulevard Gambetta", postale: 59100, city: 'Roubaix', description: "Grand garage securisé")
g.remote_photo_url = "https://www.e-travaux.com/sites/default/files/styles/article/public/httpspixabay.comfrporte-de-garage-porte-2578743.jpg?itok=iKkRFUrl"
g.full_address = "#{g.location} #{g.postale} #{g.city}"
g.save!
g = Garage.create!(user: get_random_user(user_array), capacity: 10, price: 60, location: "120 Boulevard de l'Ouest", postale: 59650, city: 'Villeneuve dascq', description: "Garage bien amenagé à louer")
g.remote_photo_url = "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR1JaM_eI3Etlu936rJqrdPufh7fymY12suEhJC3-YigNrcEGNT&s"
g.full_address = "#{g.location} #{g.postale} #{g.city}"
g.save!
g = Garage.create!(user: get_random_user(user_array), capacity: 13, price: 50, location: "186 rue des fusillés", postale: 59650, city: 'Villeneuve dascq', description: "Petit garage bien situé")
g.remote_photo_url = "https://prix-de-pose.fr/wp-content/uploads/2017/11/Prix-dun-garage-modulaire-pr%C3%AAt-%C3%A0-poser.jpg"
g.full_address = "#{g.location} #{g.postale} #{g.city}"
g.save!
g = Garage.create!(user: get_random_user(user_array), capacity: 12, price: 60, location: "22 rue saint-joseph", postale: 59150, city: 'Wattrelos', description: "Trés bonne affaire à saisir")
g.remote_photo_url = "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQOY8Q5A8Wf2uk7ZtBsKzpdkDA0qnagbsXDbp-beQ4nb2Tly7pu&s"
g.full_address = "#{g.location} #{g.postale} #{g.city}"
g.save!
g = Garage.create!(user: get_random_user(user_array), capacity: 15, price: 60, location: "165 boulevard Pierre Mauroy", postale: 59150, city: 'Wattrelos', description: "Petit garage à proximité de la frontiere belge")
g.remote_photo_url = "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQA_NqUmF1ie2E3Y64UytJ9jxkNnQrQ93oDXHF48unjsvBiUQ-u&s"
g.full_address = "#{g.location} #{g.postale} #{g.city}"
g.save!
g = Garage.create!(user: get_random_user(user_array), capacity: 5, price: 20, location: "79 rue du Gauquier", postale: 59150, city: 'Wattrelos', description: "Petit garage bien amenagé")
g.remote_photo_url = "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSWV8P-BM2xrqB-NDh59TIThV52GML7EBTd2EJKg520IdtT7Gq3&s"
g.full_address = "#{g.location} #{g.postale} #{g.city}"
g.save!
g = Garage.create!(user: get_random_user(user_array), capacity: 7, price: 50, location: "2 rue Jules Simon", postale: 59200, city: 'Tourcoing', description: "Trés beau garage à louer")
g.remote_photo_url = "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR3qHWhYc8A35kcv5i7wXfOKCD4My1kYhYBde-Aj1NzwOhpLYA_&s"
g.full_address = "#{g.location} #{g.postale} #{g.city}"
g.save!
g = Garage.create!(user: get_random_user(user_array), capacity: 9, price: 45, location: "70 Rue Winston Churchill", postale: 59160, city: 'Lille', description: "Garage exposé plein sud à saisir")
g.remote_photo_url = "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTXFczRkB8alE5NSJ1RKQB3H7FiOsiib6Mhk9ig6b19jkvWI5du&s"
g.full_address = "#{g.location} #{g.postale} #{g.city}"
g.save!
g = Garage.create!(user: get_random_user(user_array), capacity: 10, price: 55, location: "61 Rue Philippe de Girard", postale: 59160, city: 'Lille', description: "Superbe garage à louer")
g.remote_photo_url = "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQOlOjGsEtOSv_fhkT8uFtCAuISUuI9Evz5dfn7wGKthuUj0zkHcg&s"
g.full_address = "#{g.location} #{g.postale} #{g.city}"
g.save!
g = Garage.create!(user: get_random_user(user_array), capacity: 8, price: 35, location: "6 Rue Henri Ghesquière", postale: 59160, city: 'Lille', description: "Garage à louer en urgence")
g.remote_photo_url = "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTJGXz2wfOc2phtvweIPQ5aUPZW6i5YlJ-Lf9E0ugIKAMIqtkGl&s"
g.full_address = "#{g.location} #{g.postale} #{g.city}"
g.save!
g = Garage.create!(user: get_random_user(user_array), capacity: 12, price: 50, location: "92 Rue Jacquemars Giélée", postale: 59800, city: 'Lille', description: "Garage trés bien placé dans le centre de lille")
g.remote_photo_url = "https://s3-eu-west-1.amazonaws.com/sc-files.pjms.fr/p/pjms/449/000/393/426/2d8ad8d6c3994bdeaff7e65c09bc6549.png"
g.full_address = "#{g.location} #{g.postale} #{g.city}"
g.save!
g = Garage.create!(user: get_random_user(user_array), capacity: 9, price: 40, location: "8 Rue Jean Moulin", postale: 59800, city: 'Lille', description: "Garage bien amenagé dans le coeur de lille")
g.remote_photo_url = "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT_BCo_INRNDmkzCDXHq73fvTByiaTZaqGhpTNJmvN_f7lgq6T5&s"
g.full_address = "#{g.location} #{g.postale} #{g.city}"
g.save!
g = Garage.create!(user: get_random_user(user_array), capacity: 11, price: 30, location: "107 Rue Faidherbe", postale: 59110, city: 'La Madeleine', description: "Garage bien placé entierement renové")
g.remote_photo_url = "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT_rDaEBWtCEgQiU4_Z1HiTcZ6gWS-b78zerdkJuCm_7djmHNZi&s"
g.full_address = "#{g.location} #{g.postale} #{g.city}"
g.save!
g = Garage.create!(user: get_random_user(user_array), capacity: 13, price: 50, location: "241 Rue Jules et Fernand Delcenserie", postale: 59700, city: 'Marcq-en-Barœul', description: "Garage dans le centre de Marcq-en-Barœul")
g.remote_photo_url = "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQpWHTCbNVxKwCtE-K7ceRDmVUIwLbFTHleMG1f4zV_SZYcM9o1KQ&s"
g.full_address = "#{g.location} #{g.postale} #{g.city}"
g.save!

puts "finished"
