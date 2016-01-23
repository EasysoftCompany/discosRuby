Rails.application.routes.draw do
  resources :discos
  resources :vendedores
  resources :discos
  resources :clientes

  get '/' => 'principal#index'
  get '/m_cliente' => 'principal#m_cliente'
  get '/login' => 'login#login'
  get '/logout' => 'login#cerrar_sesion'
  get '/gerente' => 'm_admin#index'
  get '/ventas' => 'm_vend#index'
  get '/resurtir' => 'r_discos#index'
  get '/ventadisco' => 'v_discos#index'
  get '/ventafinish' => 'v_discos#vender'



end
