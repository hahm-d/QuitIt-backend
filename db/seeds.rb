Question.delete_all
Quiz.delete_all

quizzes = [
    {   
        unique_code: "a1b2c3",
        teacher_name: "Duke Ko",
        teacher_email: "dukeko@gmail.com",
        title: "testing database",
        time_limit: 60
    }
]

questions = [
    {
        quiz_id: 7,
        statement: "What is 1 + 1",
        answer: "2",
        choices: ["1","2","3","4"]
    },
    {
        quiz_id: 7,
        statement: "What is 5 + 10",
        answer: "15",
        choices: ["15","12","20","16"]
    },
    {
        quiz_id: 7,
        statement: "What is 5 * 10",
        answer: "50",
        choices: ["20","30","40","50"]
    },
    {
        quiz_id: 7,
        statement: "What is 20 / 4",
        answer: "5",
        choices: ["7","5","10","6"]
    },
    {
        quiz_id: 7,
        statement: "What is your professor's name",
        answer: "Duke",
        choices: ["Steven","James","Duke","Kevin"]
    }    
]

quizzes.each do |quiz|
    Quiz.create!(quiz)
end

#questions.each do |question|
#    Question.create!(question)
#end


questions.each do |question|
    duke = Question.create!(question)
    duke.image.attach(
     io: File.open('./public/images/questionImageSample.png'),
     filename: 'questionImageSample.png',
     content_type: 'application/png'
 )
 end
 
puts "complete"