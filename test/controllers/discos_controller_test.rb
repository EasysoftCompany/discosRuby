require "test_helper"

describe DiscosController do
  let(:disco) { discos :one }

  it "gets index" do
    get :index
    value(response).must_be :success?
    value(assigns(:discos)).wont_be :nil?
  end

  it "gets new" do
    get :new
    value(response).must_be :success?
  end

  it "creates disco" do
    expect {
      post :create, disco: { NumCanciones: disco.NumCanciones, album: disco.album, anio: disco.anio, artista: disco.artista, cantidad: disco.cantidad, costo: disco.costo, descuento: disco.descuento, genero: disco.genero, titulo: disco.titulo }
    }.must_change "Disco.count"

    must_redirect_to disco_path(assigns(:disco))
  end

  it "shows disco" do
    get :show, id: disco
    value(response).must_be :success?
  end

  it "gets edit" do
    get :edit, id: disco
    value(response).must_be :success?
  end

  it "updates disco" do
    put :update, id: disco, disco: { NumCanciones: disco.NumCanciones, album: disco.album, anio: disco.anio, artista: disco.artista, cantidad: disco.cantidad, costo: disco.costo, descuento: disco.descuento, genero: disco.genero, titulo: disco.titulo }
    must_redirect_to disco_path(assigns(:disco))
  end

  it "destroys disco" do
    expect {
      delete :destroy, id: disco
    }.must_change "Disco.count", -1

    must_redirect_to discos_path
  end
end
