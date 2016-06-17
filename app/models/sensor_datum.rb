class SensorDatum < ActiveRecord::Base
  belongs_to :sensor
  belongs_to :data_type

  validates :type, presence: true
end
