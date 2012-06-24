class ChangeJoinTable < ActiveRecord::Migration
  def change
    add_column :campaign_user_relationships, :amount_per_mile, :float
    add_column :campaign_user_relationships, :paid, :boolean
    add_column :campaign_user_relationships, :receipt_token, :string
  end
end
