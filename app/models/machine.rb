class Machine < ActiveRecord::Base
  belongs_to :machine_type
  has_many :sensors

  validates :machine_type, :name, presence: true
end
