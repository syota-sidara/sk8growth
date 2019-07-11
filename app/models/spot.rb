class Spot < ApplicationRecord
	belongs_to :location, optional: true

	attachment :profile_image
end
