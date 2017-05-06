require 'test_helper'

class ClientsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @client = clients(:one)
  end

  test "should get index" do
    get clients_url
    assert_response :success
  end

  test "should get new" do
    get new_client_url
    assert_response :success
  end

  test "should create client" do
    assert_difference('Client.count') do
      post clients_url, params: { client: { address: @client.address, banned: @client.banned, born_date: @client.born_date, city: @client.city, country: @client.country, email: @client.email, huella: @client.huella, name: @client.name, number_phones: @client.number_phones, picture: @client.picture, state: @client.state, type_cliente: @client.type_cliente, zipcode: @client.zipcode } }
    end

    assert_redirected_to client_url(Client.last)
  end

  test "should show client" do
    get client_url(@client)
    assert_response :success
  end

  test "should get edit" do
    get edit_client_url(@client)
    assert_response :success
  end

  test "should update client" do
    patch client_url(@client), params: { client: { address: @client.address, banned: @client.banned, born_date: @client.born_date, city: @client.city, country: @client.country, email: @client.email, huella: @client.huella, name: @client.name, number_phones: @client.number_phones, picture: @client.picture, state: @client.state, type_cliente: @client.type_cliente, zipcode: @client.zipcode } }
    assert_redirected_to client_url(@client)
  end

  test "should destroy client" do
    assert_difference('Client.count', -1) do
      delete client_url(@client)
    end

    assert_redirected_to clients_url
  end
end