class Address < ApplicationRecord
    has_many :colleges, dependent: :destroy

    validates :city, presence: true, uniqueness: {scope: :city, message: "City name already exits,insert another city"}
end
