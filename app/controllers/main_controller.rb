class MainController < ApplicationController
  def compose_email
    
  end

  def send_email
    MyMailer.send_email(mail_params).deliver
    flash[:notice] = "Yay! The email is sent."
    redirect_to main_compose_email_path
  end

  private
  def mail_params
    params.permit(:email, :name, :message)
  end
end
