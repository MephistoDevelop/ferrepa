# frozen_string_literal: true

class ClientesController < ApplicationController
  def index
    @clientes = Cliente.all
  end

  def create
    @cliente = Cliente.new(clientes_params)
    redirect_to clientes_path
  end

  private

  def clientes_params
    params.require(:cliente).permit(:nombre, :direccion, :telefono, :correo)
  end
end
