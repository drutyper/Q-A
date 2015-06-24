class AnswersController < ApplicationController
 
  def new
    @answer = Answer.new
  end

  def create
    answers_params = params[:answer]
    @answer = Answer.new(
      title: answers_params[:title])
    if @answer.save
      redirect_to :root, notice: "answer submitted"
    end
  end
end