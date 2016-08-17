class PalettesController < OpenReadController
  before_action :set_palette, only: [:show, :update, :destroy]

  # GET /palettes
  # GET /palettes.json
  def index
    @palettes = Palette.all

    render json: @palettes
  end

  # GET /palettes/1
  # GET /palettes/1.json
  def show
    render json: @palette
  end

  # POST /palettes
  # POST /palettes.json
  def create
    @palette = current_user.palettes.build(palette_params)

    if @palette.save
      render json: @palette, status: :created, location: @palette
    else
      render json: @palette.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /palettes/1
  # PATCH/PUT /palettes/1.json
  def update
    @palette = Palette.find(params[:id])

    if @palette.update(palette_params)
      head :no_content
    else
      render json: @palette.errors, status: :unprocessable_entity
    end
  end

  # DELETE /palettes/1
  # DELETE /palettes/1.json
  def destroy
    @palette.destroy

    head :no_content
  end

  private

    def set_palette
      @palette = current_user.palettes.find(params[:id])
    end

    def palette_params
      params.require(:palette).permit(:palette_name, :color1, :color2, :color3, :color4, :color5)
    end
end
