class MAdminController < ApplicationController

def index
          if defined?(session[:logueado]) and session[:logueado] and session[:admin] == 1


        else

               redirect_to '/'
         end

end

end
