class CreatePessoas < ActiveRecord::Migration
  def change
    create_table :pessoas do |t|
      t.string :nome
      t.string :data_de_nascimento
      t.string :date
      t.float :altura

      t.timestamps
    end
  end
end
