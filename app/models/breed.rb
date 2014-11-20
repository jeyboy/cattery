class Breed < ActiveRecord::Base
  has_many :cats

  validates :name, presence: true, uniqueness: true
end
