# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create(name:"PadrePedro", email:"padre@gmail.com",password:"yyccxx1332")
User.create(name:"MadreLola", email:"madre@gmail.com",password:"qqwwee1332")
User.create(name:"HijoaMayor", email:"hijomayor@gmail.com",password:"aassdd1332")
User.create(name:"HijoaMedio", email:"hijomedio@gmail.com",password:"zzxxcc1332")
User.create(name:"HijoaMenor", email:"hijomenor@gmail.com",password:"uuiioopp1332")

Organization.create(name: "FamilyUno",description:"Family Group Organization")

Member.create(user_id: 1, organization_id: 1)
Member.create(user_id: 2, organization_id: 1)
Member.create(user_id: 3, organization_id: 1)
Member.create(user_id: 4, organization_id: 1)
Member.create(user_id: 5, organization_id: 1)

Admin.create(user_id: 1, organizations_id: 1)
Admin.create(user_id: 2, organizations_id: 1)

Event.create(name: "FamilyMeeting", location:"PadrePedroHouse1", privacity: "t", user_id: 1, organization_id:1)

Comment.create(user_id: 1, event_id: 1, message: "This is my event for our family, please vote a date for this meeting")

Anwser.create(option: "11-06-1999", event_id: 1)
Anwser.create(option: "16-05-2020", event_id: 1)
Anwser.create(option: "22-06-2020", event_id: 1)

#vote1 = CreateVotes([{anwsered: "true", anwser_id: 3}, {anwsered: "true", anwser_id: 2}, {anwsered: "false", anwser_id: 1}, {anwsered: "true", anwser_id: 3}, {anwsered: "true", anwser_id: 3}])
#puts vote1

Vote.create(anwsered: "true", anwser_id: 3)
Vote.create(anwsered: "true", anwser_id: 2)
Vote.create(anwsered: "false", anwser_id: 1)
Vote.create(anwsered: "true", anwser_id: 3)
Vote.create(anwsered: "true", anwser_id: 3)

#invitaition1=CreateInvitations([{user_id: 1, event_id: 1, vote_id: 1}, {user_id: 2, event_id: 1, vote_id: 2}])
#puts invitaition1
Invitation.create(user_id: 1, event_id: 1, vote_id: 1)
Invitation.create(user_id: 2, event_id: 1, vote_id: 2)
Invitation.create(user_id: 3, event_id: 1, vote_id: 3)
Invitation.create(user_id: 4, event_id: 1, vote_id: 4)
Invitation.create(user_id: 5, event_id: 1, vote_id: 5)