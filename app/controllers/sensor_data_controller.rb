class SensorDataController < ApplicationController
  before_action :set_data_type

  def index
    @sensor_data = if params[:data_type_id].present? && params[:sensor_id].present?
                     @data_type.data_class.where(data_type_id: params[:data_type_id], sensor_id: params[:sensor_id])
                   elsif params[:data_type_id].present?
                     @data_type.data_class.where(data_type_id: params[:data_type_id])
                   elsif params[:sensor_id].present?
                     @data_type.data_class.where(sensor_id: params[:sensor_id])
                   else
                     @data_type.data_class.all
                   end
  end

  def show

  end
  
  def new
    @sensor_data = @data_type.data_class.new(data_type_id: @data_type.id, sensor_id: params[:sensor_id])
  end

  def edit

  end

  def create
    @sensor_data           = @data_type.data_class.new(sensor_data_params)
    @sensor_data.data_type = @data_type
    @sensor_data.sensor_id = params[:sensor_id] if params[:sensor_id].present?
    respond_to do |format|
      if @sensor_data.save
        format.html { redirect_to data_type_path(@data_type, sensor_id: @sensor_data.sensor_id), notice: 'Sensor was successfully created.' }
        format.json { render :show, status: :created, location: @sensor_data }
      else
        format.html { render :new }
        format.json { render json: @sensor_data.errors, status: :unprocessable_entity }
      end
    end
  end

  def update

  end

  def destroy

  end

  private

  def set_data_type
    @data_type = DataType.find(params[:data_type_id])
  end

  def sensor_data_params
    byebug
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
