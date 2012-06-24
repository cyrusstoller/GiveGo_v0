class CreateCampaigns < ActiveRecord::Migration
  def change
    create_table :campaigns do |t|
      t.integer :owner_id
      t.date :start_date
      t.date :end_date
      t.integer :charity_id

      t.timestamps
    end
  end
end
