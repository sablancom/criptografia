class CreateBuscadors < ActiveRecord::Migration[5.1]
  def change
    create_table :buscadors do |t|

      t.timestamps
    end
  end
end
