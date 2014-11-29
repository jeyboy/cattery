require Rails.root.join('app', 'uploaders', 'picture_uploader.rb')

class ContentPict < ActiveRecord::Base
  mount_uploader :pict, ::PictureUploader

  belongs_to :content
end
