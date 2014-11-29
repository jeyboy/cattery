class Content < ActiveRecord::Base
  belongs_to :content_type
  has_many :content_picts, dependent: :destroy
end
