class TimeDatum < SensorDatum
  validates :timedata, presence: true

  def data
    self.timedata
  end
end
