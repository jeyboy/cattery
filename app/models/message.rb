class Message < ActiveRecord::Base
  apply_simple_captcha message: 'Is wrong'

  before_validation -> { is_captcha_valid? }
  validates :email, :name, presence: true
  # validates :email, uniqueness: {scope: [:name, :message_text], message: 'You are wrote identical message already'}
end
