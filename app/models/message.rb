class Message < ActiveRecord::Base
  validates :email, :name, :message_text, presence: true
end
