class ElectionUsersController < ApplicationController
  # GET /election_users
  # GET /election_users.json
  def index
    @election_users = ElectionUser.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @election_users }
    end
  end

  # GET /election_users/1
  # GET /election_users/1.json
  def show
    @election_user = ElectionUser.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @election_user }
    end
  end

  # GET /election_users/new
  # GET /election_users/new.json
  def new
    @election_user = ElectionUser.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @election_user }
    end
  end

  # GET /election_users/1/edit
  def edit
    @election_user = ElectionUser.find(params[:id])
  end

  # POST /election_users
  # POST /election_users.json
  def create
    @election_user = ElectionUser.new(params[:election_user])

    respond_to do |format|
      if @election_user.save
        format.html { redirect_to @election_user, notice: 'Election user was successfully created.' }
        format.json { render json: @election_user, status: :created, location: @election_user }
      else
        format.html { render action: "new" }
        format.json { render json: @election_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /election_users/1
  # PUT /election_users/1.json
  def update
    @election_user = ElectionUser.find(params[:id])

    respond_to do |format|
      if @election_user.update_attributes(params[:election_user])
        format.html { redirect_to @election_user, notice: 'Election user was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @election_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /election_users/1
  # DELETE /election_users/1.json
  def destroy
    @election_user = ElectionUser.find(params[:id])
    @election_user.destroy

    respond_to do |format|
      format.html { redirect_to election_users_url }
      format.json { head :no_content }
    end
  end
end
