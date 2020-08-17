class QuestionsController < ApplicationController
    def create
        question = Question.create(question_params)
    end

    private
    
    def question_params
        params.require(:questions).permit(:statement, :answer, :wrong_answers, :quiz_id)
    end
end