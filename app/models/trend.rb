class Trend < ApplicationRecord
	attachment :profile_image

	has_many :homes

	validates :title, length: {maximum: 20}
    validates :video,presence: true
    validates :body,presence: true
end
