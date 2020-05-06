require 'test_helper'

class UsuariosTecnologiasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @usuario_tecnologia = usuarios_tecnologias(:one)
  end

  test "should get index" do
    get usuarios_tecnologias_url
    assert_response :success
  end

  test "should get new" do
    get new_usuario_tecnologia_url
    assert_response :success
  end

  test "should create usuario_tecnologia" do
    assert_difference('UsuarioTecnologia.count') do
      post usuarios_tecnologias_url, params: { usuario_tecnologia: { tecnologia_id_id: @usuario_tecnologia.tecnologia_id_id, usuario_id_id: @usuario_tecnologia.usuario_id_id } }
    end

    assert_redirected_to usuario_tecnologia_url(UsuarioTecnologia.last)
  end

  test "should show usuario_tecnologia" do
    get usuario_tecnologia_url(@usuario_tecnologia)
    assert_response :success
  end

  test "should get edit" do
    get edit_usuario_tecnologia_url(@usuario_tecnologia)
    assert_response :success
  end

  test "should update usuario_tecnologia" do
    patch usuario_tecnologia_url(@usuario_tecnologia), params: { usuario_tecnologia: { tecnologia_id_id: @usuario_tecnologia.tecnologia_id_id, usuario_id_id: @usuario_tecnologia.usuario_id_id } }
    assert_redirected_to usuario_tecnologia_url(@usuario_tecnologia)
  end

  test "should destroy usuario_tecnologia" do
    assert_difference('UsuarioTecnologia.count', -1) do
      delete usuario_tecnologia_url(@usuario_tecnologia)
    end

    assert_redirected_to usuarios_tecnologias_url
  end
end
