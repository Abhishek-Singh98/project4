class Trainee < ApplicationRecord
has_many :applications
has_many :reviews
has_one :trainer, through: :application

validates :email, presence: true, uniqueness: true
has_secure_password
end

