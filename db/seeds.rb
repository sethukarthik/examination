# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
exams = ["Term-1", "Term-2"]
subjects = ["Physics", "Maths", "Chemistry"]
# chapters = 

Exam.delete_all
Subject.delete_all

# topics = [""]
exams.each do |exam|
 	new_exam = Exam.create(exam_name: exam)
 	subjects.each do |sub|
 		subj = new_exam.subjects.create(sub_name: sub, exam_id: new_exam.id)
 	end
end