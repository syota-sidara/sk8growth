class Home < ApplicationRecord
	has_many :clips
	has_many :favorites, dependent: :destroy
	has_many :trends


	validates :title,presence: true
    validates :video,presence: true
    validates :challenge,presence: true
end
