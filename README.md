"# course-project-jtanabalon-1" 
Questions
11. In my table of the model user, we got a validation that makes the name and email of it unique
R. validates :name, uniqueness: true
  validates :email, uniqueness: true
12. I made a validation with a special format
R.  validates :email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i,
                             message:"ej: something@mail.cl"}
13. In case that we eliminated an Event but before calling it it should also erreased them because the event is foreign key in the invitation and with that we could have an error, so on the CRUD D, before doing it, it should errease the vote,the answers made, the comments from it.
14. Before the crud it should take a  look at admin and if he is the only admin in the organization,errase every comment created, every event created, invitation invited,and from the members of an organization. If everything is ok and can be deleated it could continou to errase the user.
1. Event.find_by user_id: UserId
2. Member.find_by organization_id: OrganizationId
3. Event
        .select('events.name')
        .where('events.organization_id' => OrganizationId, 'events.privacity' => 'f')
4. Event
        .select('events.name')
        .where('events.organization_id' => OrganizationId, 'events.privacity' => 't')
5. Invitation
            .select('invitation.user_id')
            .where('invitation.event_id' => EventId)
6. Invitation
            .select('invitation.user_id')