class Movie < ApplicationRecord
  validates :name, presence: true, uniqueness: true

  belongs_to :user
  has_and_belongs_to_many :actors
end
