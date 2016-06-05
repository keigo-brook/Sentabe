class CreateDataTypes < ActiveRecord::Migration
  def change
    create_table :data_types do |t|
      t.integer :sensor_id
      t.string :name
      t.integer :type

      t.timestamps null: false
    end
  end
end
