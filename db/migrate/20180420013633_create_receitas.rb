class CreateReceitas < ActiveRecord::Migration
  def change
    create_table :receitas do |t|
      t.text :conteudo
      t.timestamps null: false
    end
  end
end
