class PublishersController < ApplicationController
  before_action :set_publisher, only: [:show, :edit, :update, :destroy]


  # GET /publishers
  def index
    @publishers = Publisher.all
    respond_to do |format|
      format.html
      format.json { render json: @publishers }
    end
  end

  # GET /publishers/1
  def show
    # render json: @publisher
  end

  # GET /publishers/new
  def new
    @publisher = Publisher.new
  end

  # GET /publishers/1/edit
  def edit

  end

  # POST /publishers
  def create
    @publisher = Publisher.new(publisher_params)

    if @publisher.save
      redirect_to action: :index
    else
      render :new
    end
  end

  # PATCH/PUT /publishers/1
  def update
    @publisher.update(publisher_params)
    if @publisher.save
      redirect_to action: :index
    else
      render :edit
    end
  end

  # DELETE /publishers/1
  def destroy
    @publisher.destroy
    # redirect_to root_path, status: :see_other
  end

  private
    # Using callbacks to share common setup or constraints between actions.
    def set_publisher
      @publisher = Publisher.find(params[:id])
    end

    # Only allowing a list of trusted parameters through.
    def publisher_params
      params.require(:publisher).permit(:name, :language, :year)
    end
end
