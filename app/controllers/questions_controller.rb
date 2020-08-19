class QuestionsController < ApplicationController
    
    def create
        question = Question.create(question_params)
        respond_to_question(question)
    end
    
    def show
        questions = Question.where(quiz_id: params[:quiz_id])
        all_question = []
        questions.each do |t|
            all_question.push(show_all_questions(t))
        end
        render json: all_question
    end

    def index
        questions = Question.all
        render json: questions
    end

    private
    
    def question_params
        params.permit(:statement, :answer, :incorrect1, :incorrect2, :incorrect3, :quiz_id, :image)
    end

    def show_all_questions(question)
        question_serializer = QuestionSerializer.new(question: question)
        question_serializer.serialize_existing_question()
    end

    def respond_to_question(question)
        question_serializer = QuestionSerializer.new(question: question)
        render json: question_serializer.serialize_new_question()
    end

end