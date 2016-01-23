require "test_helper"

describe VendedoresController do
  let(:vendedore) { vendedores :one }

  it "gets index" do
    get :index
    value(response).must_be :success?
    value(assigns(:vendedores)).wont_be :nil?
  end

  it "gets new" do
    get :new
    value(response).must_be :success?
  end

  it "creates vendedore" do
    expect {
      post :create, vendedore: { am: vendedore.am, ap: vendedore.ap, ganancia: vendedore.ganancia, gerente: vendedore.gerente, nombre: vendedore.nombre, pwd: vendedore.pwd, usr: vendedore.usr }
    }.must_change "Vendedore.count"

    must_redirect_to vendedore_path(assigns(:vendedore))
  end

  it "shows vendedore" do
    get :show, id: vendedore
    value(response).must_be :success?
  end

  it "gets edit" do
    get :edit, id: vendedore
    value(response).must_be :success?
  end

  it "updates vendedore" do
    put :update, id: vendedore, vendedore: { am: vendedore.am, ap: vendedore.ap, ganancia: vendedore.ganancia, gerente: vendedore.gerente, nombre: vendedore.nombre, pwd: vendedore.pwd, usr: vendedore.usr }
    must_redirect_to vendedore_path(assigns(:vendedore))
  end

  it "destroys vendedore" do
    expect {
      delete :destroy, id: vendedore
    }.must_change "Vendedore.count", -1

    must_redirect_to vendedores_path
  end
end
