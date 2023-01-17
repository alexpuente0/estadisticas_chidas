# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

firstu = User.create!(name: "Tony", photo: "https://cdn2.chicmagazine.com.mx/uploads/media/2021/04/01/robert-downey-jr-iron-man.jpg")
secondu = User.create!(name: "Clint", photo: "https://depor.com/resizer/5gRn6m364LnXQ9YqrPaMrOe37Is=/580x330/smart/filters:format(jpeg):quality(75)/cloudfront-us-east-1.images.arcpublishing.com/elcomercio/M2VGSL6T65FBBKGKVVMBVHOJTY.jpg")
thirdu = User.create!(name: "Bruce", photo: "https://www.cinemascomics.com/wp-content/uploads/2020/02/she-hulk-mark-ruffalo-960x540.jpg.webp")
fourthu = User.create!(name: "Thor", photo: "https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/thor-1653380224.jpg?resize=768:*")
fifthu = User.create!(name: "Nat", photo: "https://elcomercio.pe/resizer/8m9tP-SliekerO1J3Mme4koGZt0=/1200x1200/smart/filters:format(jpeg):quality(75)/cdn.jwplayer.com/v2/media/pXJ6Jcyq/poster.jpg")
sixthu = User.create!(name: "Steve", photo: "https://images-na.ssl-images-amazon.com/images/I/91kaC8fv20L.__AC_SY300_SX300_QL70_FMwebp_.jpg")

jan = Event.create!(name: "January", location: "home01", date: "2023-01-07")
feb = Event.create!(name: "February", location: "home02", date: "2023-02-07")
mar = Event.create!(name: "March", location: "home01", date: "2023-03-07")
apr = Event.create!(name: "April", location: "home02", date: "2023-04-07" )

firstch = Checkin.create!(user_id: firstu.id, event_id: jan.id)
secondch = Checkin.create!(user_id: secondu.id, event_id: jan.id)
thirdch = Checkin.create!(user_id: thirdu.id, event_id: jan.id)
fourthch = Checkin.create!(user_id: fourthu.id, event_id: jan.id)
fifthch = Checkin.create!(user_id: fifthu.id, event_id: jan.id)
sixthch = Checkin.create!(user_id: sixthu.id, event_id: jan.id)
seventhch = Checkin.create!(user_id: firstu.id, event_id: feb.id)
eighthch = Checkin.create!(user_id: secondu.id, event_id: feb.id)
ninthch = Checkin.create!(user_id: thirdu.id, event_id: feb.id)
tenthch = Checkin.create!(user_id: fourthu.id, event_id: feb.id)