class CreateAlunos < ActiveRecord::Migration
  def change
    create_table :alunos do |t|
      t.string :nome
      t.string :endereco
      t.string :bairro
      t.string :telefone
      t.string :email

      t.timestamps
    end
  end
end
