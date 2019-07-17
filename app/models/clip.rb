class Clip < ApplicationRecord
	belongs_to :user
	#belongs_to :home
	has_many :homes
	belongs_to :trick

	has_many :comments, dependent: :destroy
	has_many :favorites, dependent: :destroy

	is_impressionable

	 def favorited_by?(user)
          favorites.where(user_id: user.id).exists?
     end

     validates :title, length: {maximum: 20}
     validates :video,presence: true
     validates :body,presence: true
end
