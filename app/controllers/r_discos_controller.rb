class RDiscosController < ApplicationController

def index
  if defined?(session[:logueado]) and session[:logueado] and session[:admin] == 1
    @discos = Disco.all

  else

         redirect_to '/'
   end


end


end
