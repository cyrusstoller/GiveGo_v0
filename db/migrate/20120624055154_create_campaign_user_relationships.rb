class CreateCampaignUserRelationships < ActiveRecord::Migration
  def change
    create_table :campaign_user_relationships do |t|
      t.integer :campaign_id
      t.integer :user_id

      t.timestamps
    end
  end
end
