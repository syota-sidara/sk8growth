class Clip < ApplicationRecord
	belongs_to :user
	has_many :homes
	belongs_to :trick

	has_many :comments, dependent: :destroy
	has_many :favorites, dependent: :destroy

	is_impressionable

	 def favorited_by?(user)
          favorites.where(user_id: user.id).exists?
     end

     validates :title, presence: true,length: {maximum: 20}
     validates :video, presence: true,length: {maximum: 11}
     validates :body,presence: true
end
