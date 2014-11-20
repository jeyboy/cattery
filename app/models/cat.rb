class Cat < ActiveRecord::Base
  belongs_to :breed
  belongs_to :color
  belongs_to :title

  belongs_to :father, class_name: 'Cat', foreign_key: 'father_id'
  belongs_to :mother, class_name: 'Cat', foreign_key: 'mother_id'

  has_many :cat_picts, dependent: :destroy

  accepts_nested_attributes_for :cat_picts, reject_if: :all_blank

  scope :children, ->(cat) { where("#{cat.is_cat ? 'father_id' : 'mother_id'} = ?", cat.id)}

  # validates :breed_id, :color_id, :breeder, :owner, :name, :is_cat, :is_kitty, :mother_id, :father_id, :birthday, presence: true
end
