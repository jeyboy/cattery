class Content < ActiveRecord::Base
  enum content_type: [ :news, :ad,  :post, :static, :exposition]
  store :body, accessors: [ :en, :ru ]

  has_many :content_picts, dependent: :destroy

  accepts_nested_attributes_for :content_picts, allow_destroy: true, reject_if: ->(attributes) { attributes['pict'].blank? }

  scope :without_static, -> { where.not(content_type: Content.content_types['static']) }
  scope :only_info, -> { without_static.where.not(content_type: Content.content_types['exposition']) }
  scope :only_expositions, -> { where(content_type: Content.content_types['exposition']) }

  validates :name, uniqueness: true, if: -> { self.content_type == 'static' }
end
