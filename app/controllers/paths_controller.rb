class PathsController < ApplicationController
  before_action :set_path, only: %i[show update destroy]

  # GET /paths
  def index
    @paths = Path.all

    render json: @paths
  end

  # GET /paths/1
  def show
    @path = Path.where(id: params[:id])

    render json: @path
  end

  # GET /paths/random
  def random
    @paths = Path.all
    random_index = @paths.count
    @path = Path.where(id: rand(1..random_index))
    render json: @path
  end

  # POST /paths
  def create
    @path = Path.new(path_params)

    if @path.save
      render json: @path, status: :created, location: @path
    else
      render json: @path.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /paths/1
  def update
    if @path.update(path_params)
      render json: @path
    else
      render json: @path.errors, status: :unprocessable_entity
    end
  end

  # DELETE /paths/1
  def destroy
    @path.destroy
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_path
    @path = Path.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def path_params
    params.permit(:mod1, :mod2, :length, :route)
  end
end
