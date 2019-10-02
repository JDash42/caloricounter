class Activity < ApplicationRecord
  validates :description,  length: {maximum: 140 }
  belongs_to :user
end
