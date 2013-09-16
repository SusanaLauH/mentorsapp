class MentorshipsessionsController < ApplicationController
  # GET /mentorshipsessions
  # GET /mentorshipsessions.json
   before_filter :authorized, :only => [:edit, :update, :destroy, :new]

  def index
    @mentorshipsessions = Mentorshipsession.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @mentorshipsessions }
    end
  end

  # GET /mentorshipsessions/1
  # GET /mentorshipsessions/1.json
  def show
    @mentorshipsession = Mentorshipsession.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @mentorshipsession }
    end
  end

  # GET /mentorshipsessions/new
  # GET /mentorshipsessions/new.json
  def new
    @mentorshipsession = Mentorshipsession.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @mentorshipsession }
    end
  end

  # GET /mentorshipsessions/1/edit
  def edit
    @mentorshipsession = Mentorshipsession.find(params[:id])
  end

  # POST /mentorshipsessions
  # POST /mentorshipsessions.json
  def create
    @mentorshipsession = Mentorshipsession.new(params[:mentorshipsession])

    respond_to do |format|
      if @mentorshipsession.save
        format.html { redirect_to @mentorshipsession, notice: 'Mentorshipsession was successfully created.' }
        format.json { render json: @mentorshipsession, status: :created, location: @mentorshipsession }
      else
        format.html { render action: "new" }
        format.json { render json: @mentorshipsession.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /mentorshipsessions/1
  # PUT /mentorshipsessions/1.json
  def update
    @mentorshipsession = Mentorshipsession.find(params[:id])

    respond_to do |format|
      if @mentorshipsession.update_attributes(params[:mentorshipsession])
        format.html { redirect_to @mentorshipsession, notice: 'Mentorshipsession was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @mentorshipsession.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mentorshipsessions/1
  # DELETE /mentorshipsessions/1.json
  def destroy
    @mentorshipsession = Mentorshipsession.find(params[:id])
    @mentorshipsession.destroy

    respond_to do |format|
      format.html { redirect_to mentorshipsessions_url }
      format.json { head :no_content }
    end
  end
end
