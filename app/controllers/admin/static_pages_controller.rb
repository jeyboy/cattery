class Admin::StaticPagesController < Admin::AdminController
  def index
    @pages = Content.static.order('created_at ASC')
  end
end
