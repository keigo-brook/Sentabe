class Api::SensorDataController < ApplicationController
  before_action :set_data_type

  def create
    @sensor_data           = @data_type.data_class.new(sensor_data_params)
    @sensor_data.data_type = @data_type
    @sensor_data.sensor_id = params[:sensor_id] if params[:sensor_id].present?
    if @sensor_data.save
      respond_to do |format|
        format.json { render json: @sensor_data, status: :created }
      end
    end
  end

  private

  def set_data_type
    @data_type = DataType.find(params[:data_type_id])
  end

  def sensor_data_params
    case @data_type.dtype
    when 'IntDatum'
      params.require(:int_datum).permit(:idata, :captured_at, :sensor_id)
    when 'FloatDatum'
      params.require(:float_datum).permit(:fdata, :captured_at, :sensor_id)
    when 'TextDatum'
      params.require(:text_datum).permit(:tdata, :captured_at, :sensor_id)
    when 'TimeDatum'
      params.require(:time_datum).permit(:timedata, :captured_at, :sensor_id)
    else
      raise "UnknownSensorDataClassError: #{@data_type.data_class.to_s}"
    end
  end
end
