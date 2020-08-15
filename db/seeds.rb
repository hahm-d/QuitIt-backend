Question.delete_all
Quiz.delete_all

questions = [
    {
        quiz_id: 1,
        statement: "What is 1 + 1",
        answer: "2",
        wrong_answers: ["1","3","4"]
    }
]

quizzes = [
    {   
        unique_code: "a1b2c3",
        teacher_name: "Duke Ko",
        teacher_email: "dukeko@gmail.com",
        title: "testing database"
    }
]

quizzes.each do |quiz|
    Quiz.create!(quiz)
end

questions.each do |question|
    Question.create!(question)
end