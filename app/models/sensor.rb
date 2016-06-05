class Sensor < ActiveRecord::Base
  belongs_to :machine
  has_many :data_types
end
