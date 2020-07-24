class CreateProductos < ActiveRecord::Migration[6.0]
  def change
    create_table :productos do |t|
      t.string :codigo_barras
      t.string :nombre
      t.string :unidad
      t.string :precio_compra
      t.string :precio_medio_mayoreo
      t.string :precio_general
      t.string :porcentaje_ganancia

      t.timestamps
    end
  end
end
