class CreateSensorDataTypes < ActiveRecord::Migration
  def change
    create_table :sensor_data_types do |t|
      t.integer :sensor_id
      t.integer :data_type_id

      t.timestamps null: false
    end
  end
end
