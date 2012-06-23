require 'httparty'

class PagesController < ApplicationController
  def welcome
  end
  
  def about
  end
  
  def search
    # @s = get_eventbrite["events"]
  end
  
  
  private
  
  def get_eventbrite
    api_key = ENV["EVENTBRITE_API_KEY"]
    base_url = "https://www.eventbrite.com/json/event_search"
    
    #parameters
    keywords = []
    latitude = 37.1
    longitude = 120.1
    within = 4.0
    date = Time.now.to_date
    max_num = 30
    sort_by = "date" # can also be name or city
    page = 1
    
    begin
      # I should return an array of objects ... the first one is the summary
      
      return HTTParty.get(base_url, :query => { :app_key => api_key, :keywords => "Computer", :city => "San Francisco" }).parsed_response
    rescue
      return nil
    end
  end
end
