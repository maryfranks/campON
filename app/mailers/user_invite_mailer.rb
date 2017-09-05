class UserInviteMailer < ApplicationMailer

  default from: 'camp.on.app@gmail.com'

  def invite_email(trip, guest_name , email)
    @name = guest_name
    @trip = trip

    mail  to: email,
          subjet: "Trip invite to #{@trip.name}"
  end

end
