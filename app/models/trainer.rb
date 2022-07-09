class Trainer < ApplicationRecord
has_many :applications
has_many :gyms
has_many :trainees, through: :applications
end
