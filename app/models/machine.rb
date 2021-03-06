class Machine < ApplicationRecord
  validates_presence_of :location

  belongs_to :owner
  has_many :machine_snacks
  has_many :snacks, through: :machine_snacks

  def average_snack_price
    if snacks.empty?
      0
    else
    snacks.average(:price)
    end
  end

  def snack_counter
    snacks.count
  end
end
