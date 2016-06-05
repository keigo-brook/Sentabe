class CreateFloatData < ActiveRecord::Migration
  def change
    create_table :float_data do |t|
      t.integer :data_type_id
      t.integer :sensor_id
      t.float :data

      t.timestamps null: false
    end
  end
end
