class MyMailer < ApplicationMailer
  def send_email(options = {})
    @name = options[:name]
    @email = options[:email]
    @message = options[:message]
    mail(to: "estarshono@gmail.com", subject: "Test email")
  end
end
