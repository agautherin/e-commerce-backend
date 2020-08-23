class UserGameTablesController < ApplicationController
  before_action :set_user_game_table, only: [:show, :update, :destroy]

  # GET /user_game_tables
  def index
    @user_game_tables = UserGameTable.all

    render json: @user_game_tables
  end

  # GET /user_game_tables/1
  def show
    render json: @user_game_table
  end

  # POST /user_game_tables
  def create
    @user_game_table = UserGameTable.new(user_game_table_params)

    if @user_game_table.save
      render json: @user_game_table, status: :created, location: @user_game_table
    else
      render json: @user_game_table.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /user_game_tables/1
  def update
    if @user_game_table.update(user_game_table_params)
      render json: @user_game_table
    else
      render json: @user_game_table.errors, status: :unprocessable_entity
    end
  end

  # DELETE /user_game_tables/1
  def destroy
    @user_game_table.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_game_table
      @user_game_table = UserGameTable.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def user_game_table_params
      params.require(:user_game_table).permit(:user_id, :game_id)
    end
end
