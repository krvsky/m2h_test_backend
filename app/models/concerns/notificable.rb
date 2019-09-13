module Notificable
  extend ActiveSupport::Concern

  included do
    after_create :send_email_notification
  end

  def send_email_notification
    NotificationMailer.with(self).after_create_notification.deliver_now
  end
end
