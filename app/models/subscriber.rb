class Subscriber < ActiveRecord::Base
	belongs_to :library
	has_many :issuances, dependent: :destroy
	validates :library_id, :ticket, :surname, :name, :address, :tel, presence: true
	validates :ticket, uniqueness: { case_sensitive: true }
end
