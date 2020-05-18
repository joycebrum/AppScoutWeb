class ApplicationController < ActionController::Base
  before_action :set_brand

  private
  def set_brand
    @brand = "https://img2.gratispng.com/20180402/blw/kisspng-scouting-for-boys-world-scout-emblem-boy-scouts-of-scout-5ac2bbad71bb96.9957304915227114694659.jpg"
  end
end
