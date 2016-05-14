class Book < ActiveRecord::Base
  belongs_to :library
  has_many :issuances, dependent: :destroy
  
  validates :library_id, :name, :cypher, presence: true
  validates :cypher, uniqueness: { case_sensitive: true }
end
