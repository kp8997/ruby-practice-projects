class Exercise < ApplicationRecord
  validates :question, presence: true, length: { minimum: 8, maximum: 100} 
  validates :answer, presence: true, length: { minimum: 10, maximum: 300} 
  # belongs_to :user
end
