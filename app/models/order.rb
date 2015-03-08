class Order < ActiveRecord::Base
  validates :name, :presence => true
  validates :amount, :presence => true

  def cost=(num)
    write_attribute(:cost, (:amount.to_i*10+10).to_i)
  end


end
