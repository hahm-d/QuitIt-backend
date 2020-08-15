class QuizzesController < ApplicationController

    def index
        quizzes = Quiz.all

        render json: quizzes, include:[:questions]
    end
    
end
