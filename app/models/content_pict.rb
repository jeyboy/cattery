require Rails.root.join('app', 'uploaders', 'picture_uploader.rb')

class ContentPict < ActiveRecord::Base
  mount_uploader :pict, ::PictureUploader

  belongs_to :content

  def short_name
    "#{self.class.to_s.underscore}-#{self.created_at.to_i}"
  end
end
