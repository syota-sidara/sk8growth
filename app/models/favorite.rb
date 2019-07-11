class Favorite < ApplicationRecord
	belongs_to :user
	belongs_to :clip 
	# belongs_to :spot
end
