class Admin::DashboardController < Admin::AdminController
  def show
    @messages = Message.where('messages.created_at > ?', (params[:filter] || 7).to_i.days.ago)
  end
end
