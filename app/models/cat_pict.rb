class CatPict < ActiveRecord::Base
  mount_uploader :pict, PictureUploader

  belongs_to :cat
end
