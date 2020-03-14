class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable


  #Follow Relationships
  has_many :follower_relationships, foreign_key: :following_id, class_name: 'Follow'
  has_many :followers, through: :follower_relationships, source: :follower, dependent: :destroy


  has_many :following_relationships, foreign_key: :follower_id, class_name: 'Follow'
  has_many :following, through: :following_relationships, source: :following, dependent: :destroy


  #Question posted by the user
  has_many :questions, dependent: :destroy

  #Answers given by the user for a particular question
  has_many :answers, dependent: :destroy

  #User can follow the topic
  has_many :topics, class_name: 'FollowTopic', dependent: :destroy

  def follow(user_id, status)
    following_relationships.new(following_id: user_id, status: status)
  end
end
