class CreateSensorData < ActiveRecord::Migration
  def change
    create_table :sensor_data do |t|
      t.integer :data_type_id
      t.integer :sensor_id
      t.datetime :captured_at
      t.integer :idata
      t.float :fdata
      t.text :tdata
      t.datetime :timedata
      t.string :type

      t.timestamps null: false
      t.index :type
    end

  end
end
