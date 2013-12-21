class MessageController < ApplicationController
  force_ssl unless Rails.env.development?
  
  def create
		@message = Message.new(message_params)
		if @message.save
      redirect_to root_path notice: 'Your Message Has Been Sent'
    else
      render 'root_path'
    end
  end

  def update
    if @message.update_attributes(message_params)
      redirect_to root_path
    end
  end

	def destroy
	end


private
  def message_params
    params.require(:message).permit(:message, :email)
  end

end
