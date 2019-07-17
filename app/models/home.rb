class Home < ApplicationRecord
	has_many :clips
	has_many :favorites, dependent: :destroy
	belongs_to :trend


	validates :title,presence: true
    validates :video,presence: true
    validates :challenge,presence: true
end
