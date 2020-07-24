# frozen_string_literal: true

class ProductosController < ApplicationController
  def index
    @produs = Producto.all
  end

  def create
    @producto = Producto.new(producto_params)
    @producto.save
    redirect_to productos_path
  end

  private

  def producto_params
    params.require(:productos).permit(:codigo_barras, :nombre, :unidad, :precio_compra, :precio_medio_mayoreo, :precio_general, :porcentaje_ganancia)
  end
end
