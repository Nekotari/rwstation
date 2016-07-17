class EconomyCar < CoupeCar
  validates :side_upper, :side_lower, presence: true
end