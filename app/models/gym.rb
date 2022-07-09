class Gym < ApplicationRecord
    has_many :applications
    has_many :trainers
    validates :email, presence: true , uniqueness: true
    has_secure_password
end
