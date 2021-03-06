class MyMailer < ApplicationMailer
  def send_email(options = {})
    @name = options[:name]
    @email = options[:email]
    @message = options[:message]
    mail(to: @email, subject: options[:subject])
  end
end
