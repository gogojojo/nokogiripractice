class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  require 'open-uri'
  def index
    doc = Nokogiri::HTML(open("http://boxrec.com/list_bouts.php?human_id=429442&cat=boxer"))
    @practice = doc.css('li')
  end
end
