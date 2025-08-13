class WorkRegistration < ApplicationRecord
  has_many :coapplicants, dependent: :destroy
  belongs_to :university, optional: true
end
