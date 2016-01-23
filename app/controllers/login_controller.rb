class LoginController < ApplicationController

        def login

         #Verifica si se ha enviado el formulario.
        login_session(params[:usr], params[:pwd])
        if session[:logueado]

          if session[:admin] == 1
               #Los datos son correctos así que redirecciona a la página de bienvenida.
               redirect_to '/gerente';
            else

              redirect_to '/ventas';

            end

            end


            if params[:usr] == nil
                @error_login = false
            end

         end

def cerrar_sesion
  logout_session
  redirect_to '/'
end

          private
   def login_session(usuario, contrasena)


     @vendedores = Vendedore.all
     @vendedores.each do |v|
      #Verifica que el nombre de usuario y la contraseña sean correctos
      if usuario == v.usr and contrasena == v.pwd
         session[:logueado] = true;
         session[:nombre] = v.nombre;
         session[:ap] = v.ap;
         session[:admin] = v.gerente;
         session[:ganancia] = v.ganancia
         session[:id_v] = v.id_vendedor
         @error_login = false;
      else
         @error_login = true;
      end
   end
 end

   def logout_session
      #Desloguea al usuario.
      session[:logueado] = false;
      session[:nombre] = nil;
      session[:ap] = nil;
      session[:admin] = nil;
      session[:ganancia] = nil;
      session[:id_v] = nil;
   end

end
