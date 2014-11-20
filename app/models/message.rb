class Message < ActiveRecord::Base
  validates :email, :name, :message_text, presence: true
  validates :email, uniqueness: {scope: [:name, :message_text], message: 'You are wrote identical message already'}
end
