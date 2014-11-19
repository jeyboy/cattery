class MessagesController < ApplicationController
  include ActionView::Helpers::SanitizeHelper

  before_filter -> {
    params[:message].slice('name', 'email', 'message_text').each_pair do |k, v|
      params[:message][k] = strip_tags(v)
    end
  }, only: [:create]

  def index
    @messages = Message.paginate(page: params[:page])
  end

  def create
    @message = Message.new(message_params)

    if @message.save
      redirect_to @message, notice: 'Message was successfully created.'
    else
      render :new
    end
  end

private
  def message_params
    params.require(:message).permit(:name, :email, :message_text)
    # params[:message]
  end
end
