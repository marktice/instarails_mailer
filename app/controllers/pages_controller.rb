class PagesController < ApplicationController
  before_action :authenticate_user!, except: [:home]

  def home
  end

  def contact
  end

  def contact_email
    user_info = {
      user: current_user, 
      params: email_params
    }

    ContactMailer.send_contact_email(user_info).deliver_now
    
    render :contact
  end


  private
  def email_params
    params.require(:contact).permit(:name, :message)
  end
end
