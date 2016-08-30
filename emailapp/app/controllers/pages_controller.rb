class PagesController < ApplicationController
  def home
  end

  def contact
    @enquiry = Enquiry.new
  end
end
