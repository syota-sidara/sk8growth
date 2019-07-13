class Home < ApplicationRecord
	has_many :clips
	has_many :favorites, dependent: :destroy
	has_many :trends
end
