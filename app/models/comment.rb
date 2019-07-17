class Comment < ApplicationRecord
	belongs_to :user
	belongs_to :clip

	validates :comment,length:{ in:1..200 }
end
