class ExamsController < ApplicationController
	
	def index
		@answer = Answer.new
		@subjects = Subject.all
		@chapters = Chapter.all
	end

	def create

	end

	def get_subject
		@exam = Exam.find_by_id(params[:id])
		@subjects = @exam.subjects
		render json: @subjects.to_json
	end

	def get_chapter
		@subject = Subject.find_by_id(params[:id])
		@chapters = @subject.chapters
		render json: @chapters.to_json
	end

end
