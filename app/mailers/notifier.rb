class Notifier < ApplicationMailer
  default from: 'noreply@1stavemachine.com'

  def drive_created_email(user, drive, recipient)
    @drive = drive
    mail to: recipient, subject: "Drive Created by #{user.name_first_last}"
  end
end
