class QuestionsController < ApplicationController

    def index
        questions = Question.all
        render json: questions.to_json(:include => {
            :answers => {:except => [:correct, :created_at, :updated_at]}
        }, :except => [:created_at, :updated_at])
    end

    def show
        question = Question.find(params[:id])
        render json: question.to_json(:include => {
            :answers => {:except => [:correct, :created_at, :updated_at]}
        }, :except => [:created_at, :updated_at])            
    end

    def is_answer_correct
        # /questions/1 {"answer_id": "2"}
        is_correct = Answer.where(question_id: params[:id], is_correct: true).id == params["answer_id"]
        return json: {"is_correct": is_correct}
    end

end
