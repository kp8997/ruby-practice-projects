class ExercisesController < ApplicationController
  before_action :set_exercise, only: [:edit, :update, :destroy, :show]

  def fetch
    # @exercise_fetch = Exercise.find(params[:id])
    @exercise_id = params[:id]
    @exercise_data = Exercise.find(params[:id])
  end

  # GET methods
  def show
    # @exercise = Exercise.find(params[:id])
  end

  def index
    @exercises = Exercise.all
  end

  def new
    @exercise = Exercise.new
    puts @exercise.errors.full_messages
  end

  def edit
    # byebug
    # @exercise = Exercise.find(params[:id])
  end
  # --- end GET methods ---

  # POST methods
  def create
    # params[:exercise]
    # render plain: params['exercise']
    @exercise = Exercise.new(exercise_params)
    if @exercise.save
      flash[:notice] = 'Exercise was created successfully'
      redirect_to exercise_path(@exercise)
    else
      puts @exercise.errors.full_messages
      render 'new'
      # render 'new', status: :unprocessable_entity
    end

    # render plain: @exercise.inspect
  end
  # --- end POST methods ---

  # PATCH | PUT methods
  def update
    # @exercise = Exercise.find(params[:id])
    if @exercise.update(exercise_params)
      flash[:notice] = 'Exercise was updated successfully'
      redirect_to exercises_path
    else
      render 'edit', status: :ok
    end
  end
  # --- end PATCH | PUT methods ---

  # DELETE methods
  def destroy
    # @exercise = Exercise.find(params[:id])
    @exercise.destroy
    redirect_to exercises_path
  end
  # --- end DELETE methods ---


  private
  def set_exercise
    @exercise = Exercise.find(params[:id])
  end

  def exercise_params
    params.require(:exercise).permit(:question, :answer, :create_at, :update_at)
  end
end
