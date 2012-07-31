class QuestionsController < ApplicationController
  def index
    @poll = Poll.find(params[:poll_id])
  end
  
  def create
    @poll = Poll.find(params[:poll_id])
    @question = @poll.questions.build(params[:question])
    respond_to do |format|
      if @question.save
        format.html { redirect_to new_poll_question_path(@poll.id)}
        format.json { render json: new_poll_question_path(@poll.id), status: :created, location: @poll }
      else
        format.html { render action: "new" }
        format.json { render json: @question.errors, status: :unprocessable_entity }
      end
    end
  end
end
