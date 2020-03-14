class QuestionsController < ApplicationController
	before_action :auth_member!
	before_action :find_question, only: [:show, :follow_user, :follow_topic]

	def index
		@questions = Question.all.where.not(user_id: current_user).page(params[:page]).per(10)
	end

	def follow_user
		#Send 'true' for follow status by default
		following = current_user.follow(@question.user_id, true)
		if following.save
			redirect_to question_path, notice: 'Following successfully'
		else
			redirect_to question_path, notice: following.errors.full_messages.first
		end
	end

	def follow_topic
		following = current_user.topics.new(topic_id: @question.topic_id)
		if following.save
			redirect_to question_path, notice: 'Following successfully'
		else
			redirect_to question_path, notice: following.errors.full_messages.first
		end
	end

	private

	def find_question
		@question = Question.find_by(id: params[:id])
	end
end
