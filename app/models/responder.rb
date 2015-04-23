class Responder < ActiveRecord::Base
  validates :name, uniqueness: { message: 'has already been taken', case_sensitive: false }
  validates :capacity, numericality: { 
                        only_integer: true, 
                        greater_than: 0, 
                        less_than:    6 , 
                        message:      'is not included in the list' 
                      }
  validates_presence_of :name, :type, :capacity
end
