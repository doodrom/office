class Staff < ActiveRecord::Base
    has_many :vehicles
    has_and_belongs_to_many :rooms
    
    
 validates_presence_of :ic
 validates_uniqueness_of :ic
  validates_numericality_of :ic, on: :create
 end
