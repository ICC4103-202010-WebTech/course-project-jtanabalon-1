# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
u1=User.create(username: "sepomas", password:"1234qwe", email:"jtanabalon@gmail.com", admin:true )
Profile.create(name:"jose",lastname: "Anabalon",picture:"profile_picture.pgn",bio:"creando proyecto",location:"Santiago",user:u1.id)

u2=User.create(username: "skra3", password:"123qwe", email:"jtanabalon@miuandes.cl", admin:false )
Profile.create(name:"Tomas",lastname: "Diaz",picture:"profile_picture.pgn",bio:"usuario2 yeah",location:"Santiago",user:u2.id)

#u3=User.create(username: "gosu", password:"qwe1234", email:"hola@gmail.com", admin:false)
#Profile.create(name:"Ricardo",lastname: "Martinex",picture:"profile_picture.pgn",bio:"yo soy user 3",location:"Santiago",user:u3.id)

u4=User.create(username: "shred", password:"qwe123", email:"chao@gmail.com", admin:false )
Profile.create(name:"Hisoka",lastname: "Hunter",picture:"profile_picture.pgn",bio:"ich bin user 3",location:"Santiago",user:u4.id)

o1=Organization.create(name:"Uandes",description:"Esto es una universidad", user:u1.id)
o2=Organization.create(name:"Kpop",description:"Esto es una organizacion", user:u2.id)

#Member.create(user:u1.id,organization:o1.id)
#Member.create(user:u2.id,organization:o1.id)
#Member.create(user:u3,organization:o2)
#Member.create(user:u1.id,organization:o2.id) #usuario 4 no es miembro de ninguna org

e1=Event.create(title:"Bienvenida",description:"bienvenida online nuevos alumnos",start_date:"2020-07-05 10:10:10", privacy:true,banner_image:"bannerImage.pgn",location:"Chile",organization:o1.id)
e2=Event.create(title:"Baile",description:"BAileton online",start_date:"2020-07-05 10:10:10", privacy:false,banner_image:"bannerImage.pgn",location:"Chile",organization:o2.id)
e3=Event.create(title:"OnlineCourses",description:"Online courses",start_date:"2020-07-05 10:10:10", privacy:false,banner_image:"bannerImage.pgn",location:"Chile",organization:o1.id)

FileEvent.create(content:"file.pdf",event:e1.id)
ImageEvent.create(content:"image",event:e1.id)
VideoEvent.create(content:"video",event:e1.id)

FileEvent.create(content:"file.pdf",event:e2.id)
ImageEvent.create(content:"image",event:e2.id)
ImageEvent.create(content:"image2",event:e2.id)
VideoEvent.create(content:"video",event:e2.id)

ImageEvent.create(content:"image",event:e3.id)
VideoEvent.create(content:"video",event:e3.id)

#Comment.create(messa:"first comment", user:u1.id, event:e1.id)
#Comment.create(user:u1,event:e1.id,messa:"primer comentario")
#Comment.create(user:u4.id,event:e2.id,messa:"vamos a bailar al ritmo del Kpop")
#Comment.create(user:u1.id,event:e1.id,messa:"esto es lo que es")
#Comment.create(user_id:u3,event_id:e3,message:"no se ingles")

#i1=Invitation.create(accept:true, user:u1.id,event:e1.id)
#i2=Invitation.create(accept:false, user:u2.id,event:e1.id)
#i3=Invitation.create(accept:true, user_id:u3,event:e2)
#i4=Invitation.create(accept:false, user:u1.id,event:e2.id)

#v1=Vote.create(invitation_id: i1)
#v2=Vote.create(invitation_id: i2.id)
#v3=Vote.create(invitation: i3)
#v4=Vote.create(invitation_id: i4.id)

#Answer.create(dat:"2020-07-05 10:10:10",vote:v1.id)
#Answer.create(dat:"2020-07-05 10:10:10",vote:v2.id)
#Answer.create(dat:"2020-07-05 10:10:10",vote:v3)
#Answer.create(dat:"2020-07-05 10:10:10",vote:v4.id)

