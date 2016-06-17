class FloatDatum < SensorDatum
  validates :fdata, presence: true

  def data
    self.fdata
  end
end
