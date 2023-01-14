require "test_helper"

class ComprasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @compra = compras(:one)
  end

  test "should get index" do
    get compras_url, as: :json
    assert_response :success
  end

  test "should create compra" do
    assert_difference("Compra.count") do
      post compras_url, params: { compra: { card: @compra.card, sell_price: @compra.sell_price, videojuego_id: @compra.videojuego_id } }, as: :json
    end

    assert_response :created
  end

  test "should show compra" do
    get compra_url(@compra), as: :json
    assert_response :success
  end

  test "should update compra" do
    patch compra_url(@compra), params: { compra: { card: @compra.card, sell_price: @compra.sell_price, videojuego_id: @compra.videojuego_id } }, as: :json
    assert_response :success
  end

  test "should destroy compra" do
    assert_difference("Compra.count", -1) do
      delete compra_url(@compra), as: :json
    end

    assert_response :no_content
  end
end
