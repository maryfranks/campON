class UserInviteMailer < ApplicationMailer

  default from: 'nadiaivannova@gmail.com'

  def invite_email(trip)
    @user   = current_user
    @trip   = trip
    @url    = trip_url(@trip)
    @guest  =
    @email  =
    mail(to: @email.email, subject: "You've been invited to CampOn")
  end


end
