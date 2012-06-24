class CampaignUserRelationshipsController < ApplicationController
  # GET /campaign_user_relationships/1/edit
  def edit
    @campaign_user_relationship = CampaignUserRelationship.find(params[:id])
  end

  # POST /campaign_user_relationships
  # POST /campaign_user_relationships.json
  def create
    @campaign_user_relationship = CampaignUserRelationship.new(params[:campaign_user_relationship])

    respond_to do |format|
      if @campaign_user_relationship.save
        format.html { redirect_to @campaign_user_relationship, notice: 'CampaignUserRelationship was successfully created.' }
        format.json { render json: @campaign_user_relationship, status: :created, location: @campaign_user_relationship }
      else
        format.html { render action: "new" }
        format.json { render json: @campaign_user_relationship.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /campaign_user_relationships/1
  # PUT /campaign_user_relationships/1.json
  def update
    @campaign_user_relationship = CampaignUserRelationship.find(params[:id])

    respond_to do |format|
      if @campaign_user_relationship.update_attributes(params[:campaign_user_relationship])
        format.html { redirect_to :action => :edit, notice: 'CampaignUserRelationship was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @campaign_user_relationship.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /campaign_user_relationships/1
  # DELETE /campaign_user_relationships/1.json
  def destroy
    @campaign_user_relationship = CampaignUserRelationship.find(params[:id])
    @campaign_user_relationship.destroy

    respond_to do |format|
      format.html { redirect_to campaign_user_relationships_url }
      format.json { head :no_content }
    end
  end
end
