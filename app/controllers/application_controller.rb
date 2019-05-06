class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :only_signed_in

  add_flash_types :success, :danger


  private

  def only_signed_in
    if !session[:auth] || !session[:auth]['id']
      redirect_to new_user_path, danger: "Vous n'êtes pas autorisé à vous connecter."
    end
  end

end
