class HeroesController < ApplicationController

  after_filter :set_access_control_headers
  
  def count
    @count = Hero.registerd_heroes_count
  end
  
  def set_access_control_headers
    headers['Access-Control-Allow-Origin'] = '*'
    headers['Access-Control-Request-Method'] = '*'
  end
  
  def render_test
  end
end
