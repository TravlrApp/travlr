class RecommendersController < ApplicationController
  before_action :set_recommender, only: [:update, :destroy]

  def recommend
  end

  # POST /recommenders
  # POST /recommenders.json
  def create
    @recommender = Recommender.new(recommender_params)

    respond_to do |format|
      if @recommender.save
        format.html { redirect_to posts_path }
      else
        format.html { render action: 'new' }
        format.json { render json: @recommender.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /recommenders/1
  # PATCH/PUT /recommenders/1.json
  def update
    respond_to do |format|
      if @recommender.update(recommender_params)
        format.html { redirect_to posts_path, notice: 'Recommender was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @recommender.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /recommenders/1
  # DELETE /recommenders/1.json
  def destroy
    @recommender.destroy
    respond_to do |format|
      format.html { redirect_to recommenders_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_recommender
      @recommender = Recommender.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def recommender_params
      params[:recommender]
    end
end
