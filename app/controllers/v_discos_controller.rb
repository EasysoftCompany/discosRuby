class VDiscosController < ApplicationController



def index

 

 @clientes = Cliente.all
  @discos = Disco.all


end



def vender
 

 @specialDesc = 0;

 

 @Vcliente = Cliente.find(params[:cliente])
 
 @Vdisco = Disco.find(params[:disco])
  
 @Vvendedor = Vendedore.find(session[:id_v])


	if @Vdisco.cantidad <= 0
		
		@anydisco = true;
	else








# EVALUA SI EL CLIENTE EN CUESTION ES ESPECIAL, DE SER ASI APLICA DESCUENTO DE !0% Y GANANCIA DEL !0 PARA EL VENDEDOR
  

if  @Vcliente.noCompras >= 30
      

	@Vcliente.especial = 1;
      
	@specialDesc = 10;
      
	@gananciapercent = 0.10;
  
else
    
	@gananciapercent = 0.15;
  
end

 

 	@Vdisco.cantidad = @Vdisco.cantidad - 1;
 

	@cantidadDiscos = @Vdisco.cantidad - 1;
 

 	@costototal = @Vdisco.costo * ((100 - (@Vdisco.descuento + @specialDesc))/100.0)
  
	@Vcliente.noCompras = @Vcliente.noCompras + 1;
  
	@Vvendedor.ganancia = @Vvendedor.ganancia + (@costototal * @gananciapercent)

  
	@gan = @costototal * @gananciapercent

  
	
	@Vcliente.save
  
	@Vdisco.save
  
	@Vvendedor.save


		@anydisco = false;
	

end



end

end