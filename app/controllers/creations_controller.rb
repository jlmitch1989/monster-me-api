class CreationsController < OpenReadController
  before_action :set_creation, only: [:show, :update, :destroy]

  # GET /creations
  # GET /creations.json
  def index
    @creations = Creation.all

    render json: @creations
  end

  # GET /creations/1
  # GET /creations/1.json
  def show
    render json: @creation
  end

  # POST /creations
  # POST /creations.json
  def create
    # @creation = Creation.new(creation_params)
    @creation = current_user.creations.build(creation_params)

    if @creation.save
      render json: @creation, status: :created, location: @creation
    else
      render json: @creation.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /creations/1
  # PATCH/PUT /creations/1.json
  def update
    @creation = Creation.find(params[:id])

    if @creation.update(creation_params)
      head :no_content
    else
      render json: @creation.errors, status: :unprocessable_entity
    end
  end

  # DELETE /creations/1
  # DELETE /creations/1.json
  def destroy
    @creation.destroy

    head :no_content
  end

  private

  def set_creation
    @creation = Creation.find(params[:id])
  end

  def creation_params
    params.require(:creation).permit(:title, :picture, :artist_name, :description)
  end
end
