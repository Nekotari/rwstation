class Ticket < ActiveRecord::Base
  belongs_to :user
  belongs_to :train
  belongs_to :from, class_name: 'RailwayStation', foreign_key: :from_id
  belongs_to :to, class_name: 'RailwayStation', foreign_key: :to_id
end
