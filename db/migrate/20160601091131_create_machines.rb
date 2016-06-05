class CreateMachines < ActiveRecord::Migration
  def change
    create_table :machines do |t|
      t.integer :machine_type_id
      t.string :name

      t.timestamps null: false
    end
  end
end
