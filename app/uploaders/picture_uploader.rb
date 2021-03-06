# encoding: utf-8

class PictureUploader < CarrierWave::Uploader::Base

  # Include RMagick or MiniMagick support:
  # include CarrierWave::RMagick
  # include CarrierWave::MiniMagick
  include Cloudinary::CarrierWave

  # Choose what kind of storage to use for this uploader:
  # storage :file
  # storage :fog

  class << self
    def default_pict(is_kitty = false)
      if is_kitty
        'kitty.jpg'
      else
        'def_cat.png'
      end
    end
  end

  # def store_dir
  #   "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  # end

  # Provide a default URL as a default if there hasn't been a file uploaded:
  def default_url(is_kitty = false)
    ActionController::Base.helpers.asset_path(PictureUploader::default_pict(is_kitty))
    # ActionController::Base.helpers.asset_path([version_name, 'def_cat.png'].compact.join('_'))

    # "/images/fallback/" + [version_name, "default.png"].compact.join('_')
  end

  # process resize_to_fill: [200, 200]
  process convert: 'png'
  process :tags => ['picture']

  version :standard do
    scale(nil, 300)
  end

  version :thumbnail do
    scale(nil, 100)
  end

  # Process files as they are uploaded:
  # process :scale => [200, 300]
  #
  # def scale(width, height)
  #   # do something
  # end

  # Create different versions of your uploaded files:
  # version :thumb do
  #   process :resize_to_fit => [50, 50]
  # end

  # Add a white list of extensions which are allowed to be uploaded.
  # For images you might use something like this:
  # def extension_white_list
  #   %w(jpg jpeg gif png)
  # end

  # Override the filename of the uploaded files:
  # Avoid using model.id or version_name here, see uploader/store.rb for details.
  # def filename
  #   "something.jpg" if original_filename
  # end

end
