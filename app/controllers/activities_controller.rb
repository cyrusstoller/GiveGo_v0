require 'httparty'

class ActivitiesController < ApplicationController
  include ActionView::Helpers::NumberHelper
  
  before_filter :authenticate_user
  
  # GET /activities
  # GET /activities.json
  def index
    @activities = Activity.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @activities }
    end
  end

  # GET /activities/1
  # GET /activities/1.json
  def show
    @activity = Activity.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @activity }
    end
  end

  # GET /activities/new
  # GET /activities/new.json
  def new
    @activity = Activity.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @activity }
    end
  end

  # GET /activities/1/edit
  def edit
    @activity = Activity.find(params[:id])
  end

  # POST /activities
  # POST /activities.json
  def create
    @activity = Activity.new(params[:activity])
    @activity.campaign_id = @user.current_campaign_id
    
    respond_to do |format|
      if @activity.save
        
        total = @activity.campaign.total_per_mile * @activity.distance
        
        message = "I just raised #{number_to_currency(total, :precision => 2)} for Not For Sale with GiveGo beta from Max Schultz and Greg Keeney. To get on our waiting list go to http://signup.givego.co\n\nvia Max Schultz and Greg Keeney"
        query = {:message => message, :access_token => session[:access_token]}
        HTTParty.post(APP_CONFIG["singly_api_base"] + "/v0/proxy/facebook/#{@user.fb_id}/feed", :query => query)
        
        format.html { redirect_to @activity, notice: 'Activity was successfully created.' }
        format.json { render json: @activity, status: :created, location: @activity }
      else
        format.html { render action: "new" }
        format.json { render json: @activity.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /activities/1
  # PUT /activities/1.json
  def update
    @activity = @campaign.activities.find(params[:id])

    respond_to do |format|
      if @activity.update_attributes(params[:activity])
        format.html { redirect_to @activity, notice: 'Activity was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @activity.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /activities/1
  # DELETE /activities/1.json
  def destroy
    @activity = @campaign.activities.find(params[:id])
    @activity.destroy

    respond_to do |format|
      format.html { redirect_to activities_url }
      format.json { head :no_content }
    end
  end
  
  private
  
  def authenticate_user
    if params[:fb_id].present?
      @user = User.find_by_fb_id(params[:fb_id])
      unless @user.nil?
        return
      end
    end
    
    if session[:user_id].nil?
      flash[:error] = "Oops you need to be signed in."
      redirect_to root_path
      return
    else
      @user = User.find(session[:user_id])
      if @user.nil?
        flash[:error] = "Oops you need to be signed in."
        redirect_to root_path
        return
      end
    end
  end
end
