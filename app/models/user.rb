class User < ApplicationRecord

    has_many :games, through: :user_game_tables
    has_many :user_game_tables
end
