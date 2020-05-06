require 'test_helper'

class TecnologiasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tecnologia = tecnologias(:one)
  end

  test "should get index" do
    get tecnologias_url
    assert_response :success
  end

  test "should get new" do
    get new_tecnologia_url
    assert_response :success
  end

  test "should create tecnologia" do
    assert_difference('Tecnologia.count') do
      post tecnologias_url, params: { tecnologia: { nombre: @tecnologia.nombre } }
    end

    assert_redirected_to tecnologia_url(Tecnologia.last)
  end

  test "should show tecnologia" do
    get tecnologia_url(@tecnologia)
    assert_response :success
  end

  test "should get edit" do
    get edit_tecnologia_url(@tecnologia)
    assert_response :success
  end

  test "should update tecnologia" do
    patch tecnologia_url(@tecnologia), params: { tecnologia: { nombre: @tecnologia.nombre } }
    assert_redirected_to tecnologia_url(@tecnologia)
  end

  test "should destroy tecnologia" do
    assert_difference('Tecnologia.count', -1) do
      delete tecnologia_url(@tecnologia)
    end

    assert_redirected_to tecnologias_url
  end
end
