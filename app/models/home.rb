class Home < ApplicationRecord
	has_many :clips
	has_many :favorites, dependent: :destroy
	belongs_to :trend
end
