require 'test_helper'

class QualificacoesControllerTest < ActionController::TestCase
  def test_should_get_index
    get :index
    assert_response :success
    assert_not_nil assigns(:qualificacoes)
  end

  def test_should_get_new
    get :new
    assert_response :success
  end

  def test_should_create_qualificacao
    assert_difference('Qualificacao.count') do
      post :create, :qualificacao => { }
    end

    assert_redirected_to qualificacao_path(assigns(:qualificacao))
  end

  def test_should_show_qualificacao
    get :show, :id => qualificacoes(:one).id
    assert_response :success
  end

  def test_should_get_edit
    get :edit, :id => qualificacoes(:one).id
    assert_response :success
  end

  def test_should_update_qualificacao
    put :update, :id => qualificacoes(:one).id, :qualificacao => { }
    assert_redirected_to qualificacao_path(assigns(:qualificacao))
  end

  def test_should_destroy_qualificacao
    assert_difference('Qualificacao.count', -1) do
      delete :destroy, :id => qualificacoes(:one).id
    end

    assert_redirected_to qualificacoes_path
  end
end
