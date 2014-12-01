class Admin::GalleryController < Admin::AdminController
  respond_to :json

  def create
    res = Cloudinary::Uploader.upload(params[:file])
    render json: {
        link: res['url']
    }
  end
end