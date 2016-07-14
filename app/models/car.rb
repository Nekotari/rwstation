class Car < ActiveRecord::Base
  belongs_to :train

  validates :number, presence: true, uniqueness: { scope: :train_id }

  before_validation :set_number

private

  def set_number
    number = train.cars.maximum(:number)
    self.number = number.nil? ? 1 : number + 1
  end
end