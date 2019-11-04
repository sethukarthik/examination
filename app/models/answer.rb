class Answer < ApplicationRecord
	has_many :question_id
	has_many :student_id
	has_many :option_id
end
