require 'test_helper'

class EncuestasControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end

  def test_show
    get :show, :id => Encuesta.first
    assert_template 'show'
  end

  def test_new
    get :new
    assert_template 'new'
  end

  def test_create_invalid
    Encuesta.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end

  def test_create_valid
    Encuesta.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to encuesta_url(assigns(:encuesta))
  end

  def test_edit
    get :edit, :id => Encuesta.first
    assert_template 'edit'
  end

  def test_update_invalid
    Encuesta.any_instance.stubs(:valid?).returns(false)
    put :update, :id => Encuesta.first
    assert_template 'edit'
  end

  def test_update_valid
    Encuesta.any_instance.stubs(:valid?).returns(true)
    put :update, :id => Encuesta.first
    assert_redirected_to encuesta_url(assigns(:encuesta))
  end

  def test_destroy
    encuesta = Encuesta.first
    delete :destroy, :id => encuesta
    assert_redirected_to encuestas_url
    assert !Encuesta.exists?(encuesta.id)
  end
end
