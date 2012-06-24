class CreateSponsors < ActiveRecord::Migration
  def change
    create_table :sponsors do |t|
      t.integer :user_id
      t.float :amount_per_mile
      t.boolean :paid
      t.string :receipt_token

      t.timestamps
    end
  end
end
