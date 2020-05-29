class ScoutBranchesController < ApplicationController
  before_action :set_scout_branch, only: [:show, :edit, :update, :destroy]

  # GET /scout_branches
  # GET /scout_branches.json
  def index
    @scout_branches = ScoutBranch.all
  end

  # GET /scout_branches/1
  # GET /scout_branches/1.json
  def show
  end

  # GET /scout_branches/new
  def new
    @scout_branch = ScoutBranch.new
  end

  # GET /scout_branches/1/edit
  def edit
  end

  # POST /scout_branches
  # POST /scout_branches.json
  def create
    @scout_branch = ScoutBranch.new(scout_branch_params)

    respond_to do |format|
      if @scout_branch.save
        format.html { redirect_to @scout_branch, notice: 'Scout branch was successfully created.' }
        format.json { render :show, status: :created, location: @scout_branch }
      else
        format.html { render :new }
        format.json { render json: @scout_branch.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /scout_branches/1
  # PATCH/PUT /scout_branches/1.json
  def update
    respond_to do |format|
      if @scout_branch.update(scout_branch_params)
        format.html { redirect_to @scout_branch, notice: 'Scout branch was successfully updated.' }
        format.json { render :show, status: :ok, location: @scout_branch }
      else
        format.html { render :edit }
        format.json { render json: @scout_branch.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /scout_branches/1
  # DELETE /scout_branches/1.json
  def destroy
    @scout_branch.destroy
    respond_to do |format|
      format.html { redirect_to scout_branches_url, notice: 'Scout branch was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_scout_branch
      @scout_branch = ScoutBranch.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def scout_branch_params
      params.require(:scout_branch).permit(:description)
    end
end
