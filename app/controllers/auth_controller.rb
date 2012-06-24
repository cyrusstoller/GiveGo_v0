require 'httparty'

class AuthController < ApplicationController
  def callback
    facebook_id = request.env["omniauth.auth"]["extra"]["raw_info"]["facebook"].first
    auth = request.env["omniauth.auth"]
    session[:access_token] = auth.credentials.token
        
    if session[:user_id].nil?
      u = User.find_by_fb_id(facebook_id)
      if u.nil?
        # create a new user
        url = APP_CONFIG["singly_api_base"] + "/v0/services/facebook/self"
        res = HTTParty.get(url, :query => { :access_token => session[:access_token] }).parsed_response
        
        name = res[0]["data"]["name"]
        email = res[0]["data"]["email"]
        
        u = User.create!(:fb_id => facebook_id, :name => name, :email => email)
        session[:user_id] = u.id
      else
        # sign in user
        session[:user_id] = u.id
      end
    end
    redirect_to campaigns_path
  end

  def logout
    session.clear
    redirect_to root_path
  end
end