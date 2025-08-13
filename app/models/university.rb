class University < ApplicationRecord
  has_many :work_registrations, dependent: :destroy
end
