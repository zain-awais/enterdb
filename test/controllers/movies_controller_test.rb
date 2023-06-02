require "test_helper"

class MoviesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get movies_index_url
    assert_response :success
  end

  test "should get now_playing" do
    get movies_now_playing_url
    assert_response :success
  end

  test "should get top_rated" do
    get movies_top_rated_url
    assert_response :success
  end

  test "should get popular" do
    get movies_popular_url
    assert_response :success
  end
end
