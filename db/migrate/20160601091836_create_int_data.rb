class CreateIntData < ActiveRecord::Migration
  def change
    create_table :int_data do |t|
      t.integer :data_type_id
      t.integer :sensor_id
      t.integer :data

      t.timestamps null: false
    end
  end
end
