class PrincipalController < ApplicationController

def index

end

def m_cliente
  @discos = Disco.all
end

end
