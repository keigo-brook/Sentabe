class IntDatum < SensorDatum
  validates :idata, presence: true

  def data
    self.idata
  end
end
