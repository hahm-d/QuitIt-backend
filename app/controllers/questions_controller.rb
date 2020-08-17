class QuestionsController < ApplicationController
    def create
        question = Question.create(question_params)
    end

    def index
        questions = Question.all
        render json: questions
    end

    private
    
    def question_params
        params.require(:questions).permit(:statement, :answer, :choices, :quiz_id, :image)
    end
end