class Content < ActiveRecord::Base
  enum content_type: [ :news, :ad,  :post, :static]

  has_many :content_picts, dependent: :destroy

  scope :without_static, -> {where.not(content_type: Content.content_types['static'])}
end
