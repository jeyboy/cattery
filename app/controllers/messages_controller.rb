class MessagesController < ApplicationController
  include ActionView::Helpers::SanitizeHelper

  before_filter -> {
    params[:message].slice('name', 'email').each_pair do |k, v|
      params[:message][k] = strip_tags(v)
    end
  }, only: [:create]

  respond_to :js, only: [:create]

  def index
    # @messages = Message.paginate(page: params[:page], per_page: pagination_pre_page)
  end

  def create
    @message = Message.create(message_params)
    MessageMailer.prepare(@message).deliver! if @message.persisted?
  rescue => e
    render js: "showMessage('#{e.message.parameterize}', 'alert'); spoil('.alert-box');"
  end

private
  def message_params
    params.require(:message).permit(:name, :title, :phone, :email, :message_text, :captcha, :captcha_key)
  end
end
