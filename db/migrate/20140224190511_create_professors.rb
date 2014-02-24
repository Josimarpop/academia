class CreateProfessors < ActiveRecord::Migration
  def change
    create_table :professors do |t|
      t.string :nome
      t.string :endereco
      t.string :bairro
      t.string :telefone
      t.string :email
      t.decimal :salario

      t.timestamps
    end
  end
end
