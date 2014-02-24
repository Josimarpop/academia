class CreateHoras < ActiveRecord::Migration
  def change
    create_table :horas do |t|
      t.string :horario
      t.references :aluno, index: true
      t.references :professor, index: true

      t.timestamps
    end
  end
end
