class Game < ApplicationRecord
    belongs_to :company
    has_many :user_game_tables
    has_many :users, through: :user_game_tables
end
