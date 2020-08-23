class CreateUserGameTables < ActiveRecord::Migration[6.0]
  def change
    create_table :user_game_tables do |t|
      t.string :user_id
      t.string :game_id

      t.timestamps
    end
  end
end
