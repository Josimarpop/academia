class CreateTreinos < ActiveRecord::Migration
  def change
    create_table :treinos do |t|
      t.string :serie
      t.date :data
      t.references :aluno, index: true
      t.references :modalidade, index: true

      t.timestamps
    end
  end
end
