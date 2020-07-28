# frozen_string_literal: true

class Producto < ApplicationRecord
  validates :codigo_barras, presence: true
  validates :nombre, presence: true
  validates :unidad, presence: true
  validates :precio_compra, presence: true
end
