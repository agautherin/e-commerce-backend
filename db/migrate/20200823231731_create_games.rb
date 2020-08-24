class CreateGames < ActiveRecord::Migration[6.0]
  def change
    create_table :games do |t|
      t.string :name
      t.string :description
      t.float :price
      t.integer :rating
      t.integer :company_id
      t.string :image

      t.timestamps
    end
  end
end
