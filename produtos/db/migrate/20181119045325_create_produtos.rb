class CreateProdutos < ActiveRecord::Migration[5.2]
  def change
    create_table :produtos do |t|
      t.text :descricao
      t.float :valor
      t.string :entregue, :default => false
      t.string :boolean, :default => false
      t.date :data

      t.timestamps
    end
  end
end
