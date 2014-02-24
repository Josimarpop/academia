class CreateAvaliacaofisicas < ActiveRecord::Migration
  def change
    create_table :avaliacaofisicas do |t|
      t.string :peso
      t.string :altura
      t.string :imc
      t.string :pressaoArterial
      t.string :peito
      t.string :cintura
      t.string :gluteo
      t.string :bracoDireito
      t.string :bracoEsquerdo
      t.string :coxaDireita
      t.string :coxaEsquerda
      t.references :aluno, index: true
      t.references :professor, index: true

      t.timestamps
    end
  end
end
