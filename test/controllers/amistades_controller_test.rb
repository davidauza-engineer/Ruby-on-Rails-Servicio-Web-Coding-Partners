require 'test_helper'

class AmistadesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @amistad = amistades(:one)
  end

  test "should get index" do
    get amistades_url
    assert_response :success
  end

  test "should get new" do
    get new_amistad_url
    assert_response :success
  end

  test "should create amistad" do
    assert_difference('Amistad.count') do
      post amistades_url, params: { amistad: { amigo_id_id: @amistad.amigo_id_id, confirmada: @amistad.confirmada, usuario_id_id: @amistad.usuario_id_id } }
    end

    assert_redirected_to amistad_url(Amistad.last)
  end

  test "should show amistad" do
    get amistad_url(@amistad)
    assert_response :success
  end

  test "should get edit" do
    get edit_amistad_url(@amistad)
    assert_response :success
  end

  test "should update amistad" do
    patch amistad_url(@amistad), params: { amistad: { amigo_id_id: @amistad.amigo_id_id, confirmada: @amistad.confirmada, usuario_id_id: @amistad.usuario_id_id } }
    assert_redirected_to amistad_url(@amistad)
  end

  test "should destroy amistad" do
    assert_difference('Amistad.count', -1) do
      delete amistad_url(@amistad)
    end

    assert_redirected_to amistades_url
  end
end
