# require 'carrierwave/orm/activerecord'
require Rails.root.join('app', 'uploaders', 'picture_uploader.rb')

class CatPict < ActiveRecord::Base
  mount_uploader :pict, ::PictureUploader

  belongs_to :cat
end
