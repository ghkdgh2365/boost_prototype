require 'test_helper'

class PostsControllerTest < ActionController::TestCase
  setup do
    @post = posts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:posts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post" do
    assert_difference('Post.count') do
      post :create, post: { checker_name: @post.checker_name, content: @post.content, end_day: @post.end_day, racer_name: @post.racer_name, receiver_name: @post.receiver_name, set_money: @post.set_money, start_day: @post.start_day, title: @post.title }
    end

    assert_redirected_to post_path(assigns(:post))
  end

  test "should show post" do
    get :show, id: @post
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @post
    assert_response :success
  end

  test "should update post" do
    patch :update, id: @post, post: { checker_name: @post.checker_name, content: @post.content, end_day: @post.end_day, racer_name: @post.racer_name, receiver_name: @post.receiver_name, set_money: @post.set_money, start_day: @post.start_day, title: @post.title }
    assert_redirected_to post_path(assigns(:post))
  end

  test "should destroy post" do
    assert_difference('Post.count', -1) do
      delete :destroy, id: @post
    end

    assert_redirected_to posts_path
  end
end
