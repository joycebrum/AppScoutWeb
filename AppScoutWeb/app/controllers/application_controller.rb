class ApplicationController < ActionController::Base
  before_action :set_brand
  before_action :set_locale

  private
  def set_brand
    @brand = "https://img2.gratispng.com/20180402/blw/kisspng-scouting-for-boys-world-scout-emblem-boy-scouts-of-scout-5ac2bbad71bb96.9957304915227114694659.jpg"
  end

  def set_locale
    if params[:locale]
      cookies[:locale] = params[:locale]
    end
    if cookies[:locale]
      if I18n.locale != cookies[:locale]
        I18n.locale = cookies[:locale]
      end
    end
  end
end
