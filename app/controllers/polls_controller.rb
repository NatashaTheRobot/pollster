class PollsController < ApplicationController
  # GET /polls
  # GET /polls.json
  def index
    @polls = Poll.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @polls }
    end
  end

  # GET /polls/1
  # GET /polls/1.json
  def show
    @poll = Poll.find_by_slug(params[:slug])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: poll_path(@poll.slug) }
    end
  end

  # GET /polls/new
  # GET /polls/new.json
  def new
    @poll = Poll.new
    @poll.questions.build

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: new_poll_questions }
    end
  end

  # GET /polls/:admin_slug/edit
  def edit
    @poll = Poll.find_by_admin_slug(params[:admin_slug])
  end

  # POST /polls
  # POST /polls.json
  def create
    @poll = Poll.new(params[:poll])
    
    respond_to do |format|
      if @poll.save
        
        format.html { redirect_to poll_questions_path(@poll), notice: 'Poll was successfully created.' }
        format.json { render json: poll_questions_path(@poll), status: :created, location: @poll }
      else
        format.html { render action: "new" }
        format.json { render json: @poll.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /polls/:admin_slug
  # PUT /polls/:adming_slug.json
  def update
    @poll = Poll.find_by_admin_slug(params[:admin_slug])
    respond_to do |format|
      if @poll.update_attributes(params[:poll])
        format.html { redirect_to poll_path(@poll.slug), notice: 'Poll was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @poll.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /polls/:admin_slug
  # DELETE /polls/1.json
  def destroy
    @poll = Poll.find_by_admin_slug(params[:admin_slug])
    @poll.destroy

    respond_to do |format|
      format.html { redirect_to new_poll_path }
      format.json { head :no_content }
    end
  end
end
