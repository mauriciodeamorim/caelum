require 'test_helper'

class ComentariosControllerTest < ActionController::TestCase
  def test_should_get_index
    get :index
    assert_response :success
    assert_not_nil assigns(:comentarios)
  end

  def test_should_get_new
    get :new
    assert_response :success
  end

  def test_should_create_comentario
    assert_difference('Comentario.count') do
      post :create, :comentario => { }
    end

    assert_redirected_to comentario_path(assigns(:comentario))
  end

  def test_should_show_comentario
    get :show, :id => comentarios(:one).id
    assert_response :success
  end

  def test_should_get_edit
    get :edit, :id => comentarios(:one).id
    assert_response :success
  end

  def test_should_update_comentario
    put :update, :id => comentarios(:one).id, :comentario => { }
    assert_redirected_to comentario_path(assigns(:comentario))
  end

  def test_should_destroy_comentario
    assert_difference('Comentario.count', -1) do
      delete :destroy, :id => comentarios(:one).id
    end

    assert_redirected_to comentarios_path
  end
end
