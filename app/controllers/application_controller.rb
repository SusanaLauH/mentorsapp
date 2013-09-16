class ApplicationController < ActionController::Base
  protect_from_forgery

  #Code adapted from RailCasts, episode #20
  helper_method  :admin?

  protected

  def authorized
    unless admin?
      redirect_to home_path, notice: 'You need to sign as admin'
      false
    end
  end


  def admin?
    if current_user.email == "admin@admin.com"
      true
  end
  end
end
