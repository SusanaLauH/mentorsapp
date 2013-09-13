class MentorsController < ApplicationController

  # GET /mentor
  # GET /mentor.json
  def index
    @mentors = Mentor.all
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @mentors }
    end
  end


  # GET /mentor/1
  # GET /mentor/1.json
  def show
    @mentor = Mentor.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @mentor}
    end
  end


  # GET /mentor/new
  # GET /mentor/new.json
  def new
    @mentor = Mentor.new

     respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @mentor}
    end
  end

  # GET /mentor_users/1/edit
  def edit
    @mentor = Mentor.find(params[:id])
  end

  # POST /mentor
  # POST /mentor.json
  def create
    @mentor = Mentor.new(params[:mentor])

    respond_to do |format|
      if @mentor.save
        format.html { redirect_to @mentor, notice: 'Mentor user was successfully created.' }
        format.json { render json: @mentor, status: :created, location: @mentor }
      else
        format.html { render action: "new" }
        format.json { render json: @mentor.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /mentor/1
  # PUT /mentor/1.json
  def update
    @mentor = Mentor.find(params[:id])

    respond_to do |format|
      if @mentor.update_attributes(params[:mentor])
        format.html { redirect_to @mentor, notice: 'Mentor user was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @mentor.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mentor/1
  # DELETE /mentor/1.json
  def destroy
    @mentor = Mentor.find(params[:id])
    @mentor.destroy

    respond_to do |format|
      format.html { redirect_to mentors_url }
      format.json { head :no_content }
    end
  end
end



