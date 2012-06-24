class CreateCharities < ActiveRecord::Migration
  def change
    create_table :charities do |t|
      t.string :name
      t.text :description
      t.string :video_link
      t.integer :video_type

      t.timestamps
    end
  end
end
