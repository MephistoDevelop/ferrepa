# frozen_string_literal: true

class ProductosController < ApplicationController
  def index
    @produs = Producto.all
    @producto = Producto.new
  end

  def create
    @producto = Producto.new(producto_params)
    @producto.save
    redirect_to productos_path
  end

  def show
    @producto_encontrado = Producto.where(['id=?', params[:id]]).first
    puts @producto_encontrado.nombre
    # redirect_to productos_path
    # @producto_encontrado.nombre
  end

  private

  def producto_params
    params.require(:productos).permit(:id, :codigo_barras, :nombre, :unidad, :precio_compra, :precio_medio_mayoreo, :precio_general, :porcentaje_ganancia)
  end
end
