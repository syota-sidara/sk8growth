class Trend < ApplicationRecord
	attachment :profile_image

	has_many :homes

	validates :title,presence: true,length: {maximum: 20}
    validates :video,presence: true
    validates :body,presence: true
    validates :secondbody,presence: true
    validates :comment, presence: true,length: {maximum: 20}
    validates :url,presence: true
end
