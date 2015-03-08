class Order < ActiveRecord::Base
  validates :name, :presence => true
  validates :amount, :length => { :in => 1..4, :message => " must be between 1,9999"}

  def cost=(amount)
    write_attribute(:cost, amount*10+10)
  end


end
