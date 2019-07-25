class Spot < ApplicationRecord
	belongs_to :location, optional: true

	attachment :profile_image


	validates :title, presence: true,length: {maximum: 20}
    validates :body,presence: true
    validates :address,presence: true
end
