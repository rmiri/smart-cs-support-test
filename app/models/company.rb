class Company < ApplicationRecord
  has_many :employees, dependent: :destroy
  accepts_nested_attributes_for :employees

  # Before creating a new company it has to have the name and detail
  validates :name, :detail, presence: true

end

