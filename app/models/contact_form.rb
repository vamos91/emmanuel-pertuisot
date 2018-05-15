class ContactForm < ApplicationRecord
  validates :name, presence: true
  validates :email, presence: true, email: true
  validates :content, presence: true



  after_create :send_notif

  def send_notif
    ContactFormMailer.contact_email(self).deliver_now
  end
end
