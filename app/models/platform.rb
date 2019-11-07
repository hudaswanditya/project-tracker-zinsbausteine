class Platform < ApplicationRecord
  has_many :projects, dependent: :destroy

  validates_uniqueness_of :company_name
  accepts_nested_attributes_for :projects, :allow_destroy => true
end
