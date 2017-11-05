class CreatePets < ActiveRecord::Migration[5.1]
  def change
    create_table :pets do |t|
      t.string :name
      t.string :race
      t.integer :age
      t.integer :size

      t.timestamps
    end
  end
end
