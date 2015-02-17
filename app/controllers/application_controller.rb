class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :race_pics

  protected

  def race_pics
    @pics = Instagram.user_recent_media("363032975", {:count => 5}) || @omnium_pics
    
    @omnium_pics = []


    unless @pics.empty?
      @pics.each do |p|
         tags = p["tags"]
          if tags.include? 'omnium'
            @omnium_pics << p
          end
       end
    else 
      @pics = []
    end
  end
end
