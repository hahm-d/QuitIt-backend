class QuizzesController < ApplicationController

    def index
        quizzes = Quiz.all

        render json: quizzes, include:[:questions]
    end

    def show
        quiz = Quiz.find_by(unique_code: params[:unique_code])
        
        render json: quiz, include:[:questions]
    end
end
