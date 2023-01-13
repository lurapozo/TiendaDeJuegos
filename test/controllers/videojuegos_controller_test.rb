require "test_helper"

class VideojuegosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @videojuego = videojuegos(:one)
  end

  test "should get index" do
    get videojuegos_url, as: :json
    assert_response :success
  end

  test "should create videojuego" do
    assert_difference("Videojuego.count") do
      post videojuegos_url, params: { videojuego: { cover: @videojuego.cover, descripcion: @videojuego.descripcion, developer: @videojuego.developer, genre: @videojuego.genre, name: @videojuego.name, price: @videojuego.price } }, as: :json
    end

    assert_response :created
  end

  test "should show videojuego" do
    get videojuego_url(@videojuego), as: :json
    assert_response :success
  end

  test "should update videojuego" do
    patch videojuego_url(@videojuego), params: { videojuego: { cover: @videojuego.cover, descripcion: @videojuego.descripcion, developer: @videojuego.developer, genre: @videojuego.genre, name: @videojuego.name, price: @videojuego.price } }, as: :json
    assert_response :success
  end

  test "should destroy videojuego" do
    assert_difference("Videojuego.count", -1) do
      delete videojuego_url(@videojuego), as: :json
    end

    assert_response :no_content
  end
end
