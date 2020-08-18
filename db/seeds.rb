Question.delete_all
# Quiz.delete_all

# quizzes = [
#     {   
#         unique_code: "a1b2c3",
#         teacher_name: "Duke Ko",
#         teacher_email: "dukeko@gmail.com",
#         title: "testing database",
#         time_limit: 60
#     }
#]

questions = [
    {
        quiz_id: 7,
        statement: "What is 1 + 1",
        answer: "2",
        incorrect1: "1",
        incorrect2: "3",
        incorrect3: "4"
    },
    {
        quiz_id: 7,
        statement: "What is 5 + 10",
        answer: "15",
        incorrect1: "17",
        incorrect2: "25",
        incorrect3: "20"
    },
    {
        quiz_id: 7,
        statement: "What is 5 * 10",
        answer: "50",
        incorrect1: "55",
        incorrect2: "45",
        incorrect3: "60"
    },
    {
        quiz_id: 7,
        statement: "What is 20 / 4",
        answer: "5",
        incorrect1: "6",
        incorrect2: "10",
        incorrect3: "12"
    },
    {
        quiz_id: 7,
        statement: "What is your professor's name",
        answer: "Duke",
        incorrect1: "Steven",
        incorrect2: "James",
        incorrect3: "Kevin"
    }
]

# quizzes.each do |quiz|
#     Quiz.create!(quiz)
# end

questions.each do |question|
   Question.create!(question)
end


questions.each do |question|
    duke = Question.create!(question)
    duke.image.attach(
     io: File.open('./public/images/questionImageSample.png'),
     filename: 'questionImageSample.png',
     content_type: 'application/png'
 )
 end
 
puts "complete"