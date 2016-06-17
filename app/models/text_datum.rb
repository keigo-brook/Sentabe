class TextDatum < SensorDatum
  validates :tdata, presence: true

  def data
    self.tdata
  end
end
