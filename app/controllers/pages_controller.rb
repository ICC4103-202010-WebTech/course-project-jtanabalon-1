class PagesController < ApplicationController
  def home
    @public_events = Event.all.where("privacy = ?",false)
    @user = User.find(10)
    @invitation_u = Invitation.all.where("user_id = ?",current_user.id)
    @show_events=[]
    @public_events.each do |t|
      @show_events.append(t)
    end
    @invitation_u.each do |k|
      if j.id=k.user_id
        @show_events.append(k.event_id)

      end
    end

  end
  def search

    #user search
    @users = User.all.where("username LIKE ?", params[:q] + '%')
    @profile = Profile.all.where("name LIKE ?", params[:q] + '%')
    @distinct_profile =[]
    if @users != []
      @profile.each do |j|
        @users.each do |k|
          if j.user_id = k.id
          else
            @distinct_profile.append(j)
          end
        end
      end
    else
      @profile.each do |name|
        @distinct_profile.append(name)
      end
    end

    #organization search
    @organizations = Organization.all.where("name LIKE ?", params[:q] + '%')

    #event search
    @events = Event.all.where("title LIKE ? OR description LIKE ?", '%' + params[:q] + '%',  '%' + params[:q] + '%')
    @event_organization = []
    @organizations.each do |org|
      @temp = Event.where("organization_id = ?", org.id)
      @temp.each do |t|
        @event_organization.append(t)
      end
    end
  end
end
