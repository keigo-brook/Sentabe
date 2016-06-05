class CreateTimeData < ActiveRecord::Migration
  def change
    create_table :time_data do |t|
      t.integer :data_type_id
      t.integer :sensor_id
      t.datetime :data

      t.timestamps null: false
    end
  end
end
