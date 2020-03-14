class Follow < ApplicationRecord
	belongs_to :following, foreign_key: :following_id, class_name: 'User'
	belongs_to :follower, foreign_key: :follower_id, class_name: 'User'

	validate :is_followed?, on: :create

	def is_followed?
		status = Follow.find_by(following_id: following_id).present?
		if status
			errors.add(:base, 'Already following')
		end
	end
end
