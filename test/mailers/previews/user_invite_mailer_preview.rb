# Preview all emails at http://localhost:3000/rails/mailers/user_invite_mailer
class UserInviteMailerPreview < ActionMailer::Preview

    def new_invite
      trip  = Trip.last
      name  = 'nadia'
      email = 'nadiaivannova@gmail.com'
      UserInviteMailer.invite_email(trip, name, email)
    end

  end
