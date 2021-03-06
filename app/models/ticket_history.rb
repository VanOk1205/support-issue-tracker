class TicketHistory < ActiveRecord::Base
  validates :description,
            format: { with: /\A([A-Z][a-z0-9 ,.'`-]{2,250})\z/i, message: 'Only allows letters and numbers' },
            length: { in: 1..250, message: 'Length must be between 1 and 250' },
            presence: true
  validates :ticket_id, presence: true
  belongs_to :ticket
end
