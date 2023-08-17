class College < ApplicationRecord
  belongs_to :address
  has_many :courses, dependent: :destroy

  validates :name, presence: true
  validates :name, uniqueness: {scope: :address_id, message: "College should be unique in city"}

  
end
