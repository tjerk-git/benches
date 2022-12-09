class BenchesController < ApplicationController
  before_action :set_bench, only: %i[ show edit update destroy ]

  # GET /benches or /benches.json
  def index
    @benches = Bench.all
  end

  # GET /benches/1 or /benches/1.json
  def show
  end

  # GET /benches/new
  def new
    @bench = Bench.new
  end

  # GET /benches/1/edit
  def edit
  end

  # POST /benches or /benches.json
  def create
    @bench = Bench.new(bench_params)

    respond_to do |format|
      if @bench.save
        format.html { redirect_to bench_url(@bench), notice: "Bench was successfully created." }
        format.json { render :show, status: :created, location: @bench }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @bench.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /benches/1 or /benches/1.json
  def update
    respond_to do |format|
      if @bench.update(bench_params)
        format.html { redirect_to bench_url(@bench), notice: "Bench was successfully updated." }
        format.json { render :show, status: :ok, location: @bench }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @bench.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /benches/1 or /benches/1.json
  def destroy
    @bench.destroy

    respond_to do |format|
      format.html { redirect_to benches_url, notice: "Bench was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bench
      @bench = Bench.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def bench_params
      params.require(:bench).permit(:description)
    end
end
