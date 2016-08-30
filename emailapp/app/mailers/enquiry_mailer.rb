class EnquiryMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.enquiry_mailer.received.subject
  #
  def received(enquiry)
    @enquiry = enquiry
    mail to: "kkt4528@gmail.com", subject: "An enquiry has been received"

end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.enquiry_mailer.response.subject
  #
  def response(enquiry)
    @enquiry = enquiry

    mail to: @enquiry.email, subject: 'Thanks for your enquiry'
  end
end
