class CreateActivities < ActiveRecord::Migration
  def change
    create_table :activities do |t|
      t.float :distance
      t.date :stardate
      t.integer :activity_type
      t.integer :campaign_id

      t.timestamps
    end
  end
end
