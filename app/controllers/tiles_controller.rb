class TilesController < ApplicationController
  before_action :set_tile, only: [:show, :edit, :update, :destroy]

  # GET /tiles
  # GET /tiles.json
  def index
    tiles = Tile.all.shuffle
    @row1 = tiles[0..7]
    @row2 = tiles[8..15]
    @row3 = tiles[16..23]
    @row4 = tiles[24..31]
    @row5 = tiles[32..39]
    @row6 = tiles[40..47]
    @row7 = tiles[48..55]
    @row8 = tiles[56..63]
  end

  # GET /tiles/1
  # GET /tiles/1.json
  def show
  end

  # GET /tiles/new
  def new
    @tile = Tile.new
  end

  # GET /tiles/1/edit
  def edit
  end

  # POST /tiles
  # POST /tiles.json
  def create
    @tile = Tile.new(tile_params)

    respond_to do |format|
      if @tile.save
        format.html { redirect_to @tile, notice: 'Tile was successfully created.' }
        format.json { render action: 'show', status: :created, location: @tile }
      else
        format.html { render action: 'new' }
        format.json { render json: @tile.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tiles/1
  # PATCH/PUT /tiles/1.json
  def update
    respond_to do |format|
      if @tile.update(tile_params)
        format.html { redirect_to @tile, notice: 'Tile was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @tile.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tiles/1
  # DELETE /tiles/1.json
  def destroy
    @tile.destroy
    respond_to do |format|
      format.html { redirect_to tiles_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tile
      @tile = Tile.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tile_params
      params.require(:tile).permit(:name, :count)
    end
end