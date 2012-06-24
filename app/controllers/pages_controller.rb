# require 'httparty'

class PagesController < ApplicationController
  def welcome
    if session[:access_token]
      redirect_to campaigns_path
      return
    end
    render :layout => "splash"
  end
  
  def about
  	render :layout => "application"
  end
end
