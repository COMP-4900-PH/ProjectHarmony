class DetailedUsersController < ApplicationController
  before_action :set_detailed_user, only: [:show, :edit, :update, :destroy]

  # GET /detailed_users
  # GET /detailed_users.json
  def index
    @detailed_users = DetailedUser.all
  end

  # GET /detailed_users/1
  # GET /detailed_users/1.json
  def show
  end

  # GET /detailed_users/new
  def new
    @user_id = params[:id]
    @detailed_user = DetailedUser.find_by_user_id(@user_id)
    if @detailed_user == nil
      @detailed_user = DetailedUser.new
    end
  end

  # GET /detailed_users/1/edit
  def edit
  end

  # POST /detailed_users
  # POST /detailed_users.json
  def create
    @detailed_user = DetailedUser.new(detailed_user_params)
   if DetailedUser.find_by_user_id(@detailed_user.user_id)
     respond_to do |format|
       if @detailed_user.update(detailed_user_params)
         format.html { redirect_to @detailed_user, notice: 'Detailed user was successfully updated.' }
         format.json { render :show, status: :ok, location: @detailed_user }
       else
         format.html { render :edit }
         format.json { render json: @detailed_user.errors, status: :unprocessable_entity }
       end
     end
   else
    respond_to do |format|
      if @detailed_user.save
        user = User.find_by_id(@detailed_user.user_id)
        user.detailUsers = 't'
        user.save
        format.html { redirect_to @detailed_user, notice: 'Detailed user was successfully created.' }
        format.json { render :show, status: :ok, location: @detailed_user }
      else
        format.html { render :edit }
        format.json { render json: @detailed_user.errors, status: :unprocessable_entity }
      end
    end
   end

  end


  # PATCH/PUT /detailed_users/1
  # PATCH/PUT /detailed_users/1.json
  def update
    respond_to do |format|
      if @detailed_user.update(detailed_user_params)
        format.html { redirect_to @detailed_user, notice: 'Detailed user was successfully updated.' }
        format.json { render :show, status: :ok, location: @detailed_user }
      else
        format.html { render :edit }
        format.json { render json: @detailed_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /detailed_users/1
  # DELETE /detailed_users/1.json
  def destroy
    @detailed_user.destroy
    respond_to do |format|
      format.html { redirect_to detailed_users_url, notice: 'Detailed user was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_detailed_user
    @detailed_user = DetailedUser.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def detailed_user_params
    params.fetch(:detailed_user, {}).permit(:first_name, :last_name, :picture, :gender, :birth_day, :sexual_orientation, :description, :primary_language, :secondary_language, :user_id, :avatar)
  end
end
