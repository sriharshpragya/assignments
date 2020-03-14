class FollowTopic < ApplicationRecord
	belongs_to :user

	validate :is_followed?, on: :create

	def is_followed?
		status = FollowTopic.find_by(user_id: user_id, topic_id: topic_id).present?
		if status
			errors.add(:base, 'Already following')
		end
	end
end
