# require 'httparty'

class PagesController < ApplicationController
  def welcome
    render :layout => "splash"
  end
  
  def about
  	render :layout => "application"
  end
end
