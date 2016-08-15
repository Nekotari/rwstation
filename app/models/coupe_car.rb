class CoupeCar < Car
  validates :lower, :upper, presence: true
end