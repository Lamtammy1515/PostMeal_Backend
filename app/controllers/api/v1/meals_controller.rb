class Api::V1::MealsController < ApplicationController
  before_action :set_meal, only: %i[ show update destroy ]

  # GET /meals
  # GET /meals.json
  def index
    @meals = Meal.all

    render json: @meals
  end

  # GET /meals/1
  # GET /meals/1.json
  def show
    render json: @meal, status: 200
  end

  # POST /meals
  # POST /meals.json
  def create
    @meal = Meal.create(meal_params)

    if @meal.save
      render :show, status: :created, location: @meal
    else
      render json: @meal.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /meals/1
  # PATCH/PUT /meals/1.json
  def update
    if @meal.update(meal_params)
      render :show, status: :ok, location: @meal
    else
      render json: @meal.errors, status: :unprocessable_entity
    end
  end

  # DELETE /meals/1
  # DELETE /meals/1.json
  def destroy
    @meal.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_meal
      @meal = Meal.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def meal_params
      params.require(:meal).permit(:title, :meal_time, :description)
    end
end
