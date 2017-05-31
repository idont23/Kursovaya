require 'test_helper'

class FilmParticipantsControllerTest < ActionController::TestCase
  setup do
    @film_participant = film_participants(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:film_participants)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create film_participant" do
    assert_difference('FilmParticipant.count') do
      post :create, film_participant: { film_id: @film_participant.film_id, participant_id: @film_participant.participant_id, role: @film_participant.role, task: @film_participant.task }
    end

    assert_redirected_to film_participant_path(assigns(:film_participant))
  end

  test "should show film_participant" do
    get :show, id: @film_participant
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @film_participant
    assert_response :success
  end

  test "should update film_participant" do
    patch :update, id: @film_participant, film_participant: { film_id: @film_participant.film_id, participant_id: @film_participant.participant_id, role: @film_participant.role, task: @film_participant.task }
    assert_redirected_to film_participant_path(assigns(:film_participant))
  end

  test "should destroy film_participant" do
    assert_difference('FilmParticipant.count', -1) do
      delete :destroy, id: @film_participant
    end

    assert_redirected_to film_participants_path
  end
end
