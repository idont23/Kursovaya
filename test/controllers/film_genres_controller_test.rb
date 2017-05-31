require 'test_helper'

class FilmGenresControllerTest < ActionController::TestCase
  setup do
    @film_genre = film_genres(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:film_genres)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create film_genre" do
    assert_difference('FilmGenre.count') do
      post :create, film_genre: { film_id: @film_genre.film_id, genre_id: @film_genre.genre_id }
    end

    assert_redirected_to film_genre_path(assigns(:film_genre))
  end

  test "should show film_genre" do
    get :show, id: @film_genre
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @film_genre
    assert_response :success
  end

  test "should update film_genre" do
    patch :update, id: @film_genre, film_genre: { film_id: @film_genre.film_id, genre_id: @film_genre.genre_id }
    assert_redirected_to film_genre_path(assigns(:film_genre))
  end

  test "should destroy film_genre" do
    assert_difference('FilmGenre.count', -1) do
      delete :destroy, id: @film_genre
    end

    assert_redirected_to film_genres_path
  end
end
