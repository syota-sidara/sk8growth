class Spot < ApplicationRecord
	belongs_to :location, optional: true

	attachment :profile_image


	validates :title, length: {maximum: 20}
    validates :body,presence: true
    validates :address,presence: true
end
