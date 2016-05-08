class Worker < ActiveRecord::Base
	belongs_to :library
	validates :library_id, :surname, :name, :position, presence: true
end
