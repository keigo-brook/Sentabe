class CreateTextData < ActiveRecord::Migration
  def change
    create_table :text_data do |t|
      t.integer :data_type_id
      t.integer :sensor_id
      t.text :data

      t.timestamps null: false
    end
  end
end
