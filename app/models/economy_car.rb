class EconomyCar < Car
  validates :lower, :upper, :side_upper, :side_lower, presence: true
end