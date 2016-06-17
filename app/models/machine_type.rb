class MachineType < ActiveRecord::Base
  has_many :machines

  validates :name, presence: true
end
