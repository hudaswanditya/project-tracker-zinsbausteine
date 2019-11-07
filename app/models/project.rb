class Project < ApplicationRecord
  validates_uniqueness_of :name, scope: :platform_id
  belongs_to :platform

  has_many :capture_details, dependent: :destroy
  accepts_nested_attributes_for :capture_details, :allow_destroy => true
end
