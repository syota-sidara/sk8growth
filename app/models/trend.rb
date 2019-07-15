class Trend < ApplicationRecord
	attachment :profile_image

	has_many :homes
end
