require 'test_helper'

class UserGameTablesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user_game_table = user_game_tables(:one)
  end

  test "should get index" do
    get user_game_tables_url, as: :json
    assert_response :success
  end

  test "should create user_game_table" do
    assert_difference('UserGameTable.count') do
      post user_game_tables_url, params: { user_game_table: { game_id: @user_game_table.game_id, user_id: @user_game_table.user_id } }, as: :json
    end

    assert_response 201
  end

  test "should show user_game_table" do
    get user_game_table_url(@user_game_table), as: :json
    assert_response :success
  end

  test "should update user_game_table" do
    patch user_game_table_url(@user_game_table), params: { user_game_table: { game_id: @user_game_table.game_id, user_id: @user_game_table.user_id } }, as: :json
    assert_response 200
  end

  test "should destroy user_game_table" do
    assert_difference('UserGameTable.count', -1) do
      delete user_game_table_url(@user_game_table), as: :json
    end

    assert_response 204
  end
end
