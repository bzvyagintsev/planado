class Issuance < ActiveRecord::Base
	belongs_to :subscriber
	belongs_to :book
	validates :book_id, :subscriber_id, :issuance_date, presence: true
end
