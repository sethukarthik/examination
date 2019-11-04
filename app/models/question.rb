class Question < ApplicationRecord
	belongs_to :chapter
	has_one :answer_id, :foreign_key => "option_id"
end
