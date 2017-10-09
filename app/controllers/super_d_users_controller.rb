class SuperDUsersController < ApplicationController
  before_action :set_super_d_user, only: [:show, :edit, :update, :destroy]

  # GET /super_d_users
  # GET /super_d_users.json
  def index
    @super_d_users = SuperDUser.all
  end

  # GET /super_d_users/1
  # GET /super_d_users/1.json
  def show
  end

  # GET /super_d_users/new
  def new
    @super_d_user = SuperDUser.new
  end

  # GET /super_d_users/1/edit
  def edit
  end

  # POST /super_d_users
  # POST /super_d_users.json
  def create
    @super_d_user = SuperDUser.new(super_d_user_params)

    respond_to do |format|
      if @super_d_user.save
        format.html { redirect_to @super_d_user, notice: 'Super d user was successfully created.' }
        format.json { render :show, status: :created, location: @super_d_user }
      else
        format.html { render :new }
        format.json { render json: @super_d_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /super_d_users/1
  # PATCH/PUT /super_d_users/1.json
  def update
    respond_to do |format|
      if @super_d_user.update(super_d_user_params)
        format.html { redirect_to @super_d_user, notice: 'Super d user was successfully updated.' }
        format.json { render :show, status: :ok, location: @super_d_user }
      else
        format.html { render :edit }
        format.json { render json: @super_d_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /super_d_users/1
  # DELETE /super_d_users/1.json
  def destroy
    @super_d_user.destroy
    respond_to do |format|
      format.html { redirect_to super_d_users_url, notice: 'Super d user was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_super_d_user
      @super_d_user = SuperDUser.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def super_d_user_params
      params.require(:super_d_user).permit(:first, :last)
    end
end
