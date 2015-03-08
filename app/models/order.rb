class Order < ActiveRecord::Base
  validates :name, :presence => true
  validates :amount, numericality: { :only_integer => true }
  validates :city, :presence => true
  validates :country, :presence => true

end
