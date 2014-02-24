class CreateModalidades < ActiveRecord::Migration
  def change
    create_table :modalidades do |t|
      t.string :nome
      t.string :caloriasPerdidas
      t.decimal :valor

      t.timestamps
    end
  end
end
