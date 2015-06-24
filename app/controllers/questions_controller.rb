class QuestionsController < ApplicationController
  def index
    @questions = Question.all
  end
  
  def show
    @question = Question.find params[:id]
    #@answer = Answer.find params[:id]

    @a = @question.answers.all

    # @a = Answer.select {|a| a[:question_id] = @question}
  end

  def new
    @question = Question.new 
  end

  def create
    question_params = params[:question]
    @question = Question.new(
      title: question_params[:title])
    if @question.save
      redirect_to :root, notice: "question created"
    end
  end

  def edit
  end

  def update
  end

  def form
  end

  def destroy
  end
end