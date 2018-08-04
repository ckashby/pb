class Employee < ApplicationRecord
  belongs_to :company, touch: true
  validates :fname, presence: true
  validates :lname, presence: true
end
