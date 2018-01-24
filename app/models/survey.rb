class Survey < ApplicationRecord
  
  validates :name, presence: true
  validates :email, presence: true
  validates :subscription, presence: true
  validates :payment, presence: true

end
