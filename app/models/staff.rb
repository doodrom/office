class Staff < ActiveRecord::Base
    has_many :vehicles
validates_uniqueness_of :ic
end
