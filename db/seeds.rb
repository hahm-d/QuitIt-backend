Question.delete_all
# Quiz.delete_all

# quizzes = [
#     {   
#         unique_code: "a1b2c3",
#         teacher_name: "Duke Ko",
#         teacher_email: "dukeko@gmail.com",
#         title: "testing database"
#     }
# ]

questions = [
    {
        quiz_id: 5,
        statement: "What is 1 + 1",
        answer: "2",
        choices: ["1","2","3","4"]
    }
]

# quizzes.each do |quiz|
#     Quiz.create!(quiz)
# end

questions.each do |question|
    Question.create!(question)
end