class CreatePoneys < ActiveRecord::Migration[6.0]
  def change
    create_table :poneys do |t|
      t.references :user, null: false, foreign_key: true
      t.string :name
      t.boolean :available
      t.string :nature
      t.string :color
      t.integer :price_per_diem
      t.integer :height
      t.string :profile_pic_url
      t.string :special_power

      t.timestamps
    end
  end
end
