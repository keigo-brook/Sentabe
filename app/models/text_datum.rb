class TextDatum < ActiveRecord::Base
  belongs_to :sensor
  belongs_to :data_type
end
