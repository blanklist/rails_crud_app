class Party < ApplicationRecord
  belongs_to :user  

  validates :name, presence: true
  validates :location, presence: true
  validates :date, presence: true
  validates :user, presence: true

end
