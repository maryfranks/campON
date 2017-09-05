class UserInviteMailer < ApplicationMailer

  default from: 'camp.on.app@gmail.com'

  def invite_email(trip, guest_name , email)
    @name = guest_name
    @trip = trip

    mail to: email,
        subject: "You've been invited to a camping trip called #{@trip.name}."
  end

end
