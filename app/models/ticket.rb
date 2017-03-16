class Ticket < ActiveRecord::Base
  belongs_to :user
  belongs_to :train
  belongs_to :from, class_name: 'RailwayStation', foreign_key: :from_id
  belongs_to :to, class_name: 'RailwayStation', foreign_key: :to_id

  after_create :send_buy_notification
  after_destroy :send_delete_notification

  def route_name
    "#{from.title} - #{to.title}"
  end

  private

  def send_buy_notification
    TicketsMailer.buy_ticket(self.user, self).deliver_now
  end

  def send_delete_notification
    TicketsMailer.delete_ticket(self.user, self).deliver_now
  end
end
