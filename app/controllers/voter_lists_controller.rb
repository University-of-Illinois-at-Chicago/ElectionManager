class VoterListsController < ApplicationController
  # GET /voter_lists
  # GET /voter_lists.json
  def index
    @voter_lists = VoterList.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @voter_lists }
    end
  end

  # GET /voter_lists/1
  # GET /voter_lists/1.json
  def show
    @voter_list = VoterList.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @voter_list }
    end
  end

  # GET /voter_lists/new
  # GET /voter_lists/new.json
  def new
    @voter_list = VoterList.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @voter_list }
    end
  end

  # GET /voter_lists/1/edit
  def edit
    @voter_list = VoterList.find(params[:id])
  end

  # POST /voter_lists
  # POST /voter_lists.json
  def create
    @voter_list = VoterList.new(params[:voter_list])

    respond_to do |format|
      if @voter_list.save
        format.html { redirect_to @voter_list, notice: 'Voter list was successfully created.' }
        format.json { render json: @voter_list, status: :created, location: @voter_list }
      else
        format.html { render action: "new" }
        format.json { render json: @voter_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /voter_lists/1
  # PUT /voter_lists/1.json
  def update
    @voter_list = VoterList.find(params[:id])

    respond_to do |format|
      if @voter_list.update_attributes(params[:voter_list])
        format.html { redirect_to @voter_list, notice: 'Voter list was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @voter_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /voter_lists/1
  # DELETE /voter_lists/1.json
  def destroy
    @voter_list = VoterList.find(params[:id])
    @voter_list.destroy

    respond_to do |format|
      format.html { redirect_to voter_lists_url }
      format.json { head :no_content }
    end
  end
end
