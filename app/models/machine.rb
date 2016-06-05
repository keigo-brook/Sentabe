class Machine < ActiveRecord::Base
  belongs_to :machine_type
  has_many :sensors
end
