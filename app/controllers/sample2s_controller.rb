class Sample2sController < ApplicationController
  before_action :set_sample2, only: [:show, :edit, :update, :destroy]

  # GET /sample2s
  # GET /sample2s.json
  def index
    #original
    # @sample2s = Sample2.all
    #view のformで入力された検索条件 modified by Miyasaka
    @sample2s = Sample2.search(params[:search])
  end

  # GET /sample2s/1
  # GET /sample2s/1.json
  def show
  end

  #Serach function by miyasaka
  #def self.search(search)
  def search(search)
    if search
       find(:all, :conditions => ['col1 LIKE ?', "%#{search}%"])
    else
       find(:all)
    end
  end
  # GET /sample2s/new
  def new
    @sample2 = Sample2.new
  end

  # GET /sample2s/1/edit
  def edit
  end

  # POST /sample2s
  # POST /sample2s.json
  def create
    @sample2 = Sample2.new(sample2_params)

    respond_to do |format|
      if @sample2.save
        format.html { redirect_to @sample2, notice: 'Sample2 was successfully created.' }
        format.json { render :show, status: :created, location: @sample2 }
      else
        format.html { render :new }
        format.json { render json: @sample2.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sample2s/1
  # PATCH/PUT /sample2s/1.json
  def update
    respond_to do |format|
      if @sample2.update(sample2_params)
        format.html { redirect_to @sample2, notice: 'Sample2 was successfully updated.' }
        format.json { render :show, status: :ok, location: @sample2 }
      else
        format.html { render :edit }
        format.json { render json: @sample2.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sample2s/1
  # DELETE /sample2s/1.json
  def destroy
    @sample2.destroy
    respond_to do |format|
      format.html { redirect_to sample2s_url, notice: 'Sample2 was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sample2
      @sample2 = Sample2.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sample2_params
      params.require(:sample2).permit(:col1)
    end
end
