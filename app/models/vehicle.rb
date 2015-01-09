class Vehicle < ActiveRecord::Base
    belongs_to :staff
    validates_uniqueness_of :plate_num
end
