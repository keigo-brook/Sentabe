class DataType < ActiveRecord::Base
  enum dtype: {
      IntDatum: 0,
      FloatDatum: 1,
      TextDatum: 2,
      TimeDatum: 3
  }

  has_many :sensor_data_types
  has_many :sensors, through: :sensor_data_types
  has_many :sensor_data

  def data_class
    self.dtype.constantize
  end
end
