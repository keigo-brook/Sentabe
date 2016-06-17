class Sensor < ActiveRecord::Base
  belongs_to :machine
  has_many :sensor_data_types
  has_many :data_types, through: :sensor_data_types

  accepts_nested_attributes_for :data_types
end
