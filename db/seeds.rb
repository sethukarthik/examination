# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
exams = ["Term-1", "Term-2"]
subjects = ["Physics", "Maths", "Chemistry"]
physics = ["Physical World", "Units and Measurement", "Motion in a Straight Line"]
maths = ["Sets", "Relations and Functions", "Trigonometric Functions"]
chemistry = ["Basic concept of chemistry", "Structure of atom", "states of matter"]
physics_questions = []
chemistry_questions = []
maths_questions = []

Exam.delete_all
Subject.delete_all
Chapter.delete_all
Question.delete_all

# topics = [""]
exams.each do |exam|
 	new_exam = Exam.create(exam_name: exam)
 	subjects.each do |sub|
 		subj = new_exam.subjects.create(subject_name: sub, exam_id: new_exam.id)
 	end
end

subjects.each do |sub|
	subj = Subject.find_by_subject_name(sub)
	if sub == "Physics"
		physics.each do |chap|
			subj.chapters.create(chapter_name: chap)
		end
	elsif sub == "Maths"
		maths.each do |chap|
			subj.chapters.create(chapter_name: chap)
		end
	elsif sub == "Chemistry"
		chemistry.each do |chap|
			subj.chapters.create(chapter_name: chap)
		end
	end
end