class Product < ActiveRecord::Base
  has_many :reviews
  validates :name,:cost,:country, :presence => true
  validates_numericality_of :cost
end
