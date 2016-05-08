class Library < ActiveRecord::Base
	has_many :books, dependent: :destroy
	has_many :workers, dependent: :destroy
	has_many :subscribers, dependent: :destroy

	validates :number, :name, :address, presence: true
	validates :number, uniqueness: true
end
