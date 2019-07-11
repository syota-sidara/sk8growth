class Trend < ApplicationRecord
	attachment :profile_image

	belongs_to :home
end
