class NotificationMailer < ApplicationMailer
  def after_create_notification
    mail(to: "example@example.com", subject: "After create email")
  end
end
