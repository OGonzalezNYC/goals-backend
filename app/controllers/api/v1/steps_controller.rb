class Api::V1::StepsController < ApplicationController

  before_action :set_goal

  def index
    @steps = @goal.steps
    render json: @steps, status: 200
  end


  def create
    @step = @goal.steps.new(step_params)
    if @step.save
      #render json: @step, status: 200
      render json: @goal, status: 200 #sending back the GOAL to which the newly created STEP belongs instead of the newly created STEP itself; doing this in order to make things easier on the front end. 
    else
      render json: {error: 'Unable to create step.'}, status: 400
    end
  end


  def show
    @step = Step.find(params[:id])
    render json: @step, status:200
  end


  def destroy
    @step = Step.find(params[:id])
    @step.destroy
#    @step.delete
#    render json: {stepId: step.id}
  end


  private


  def set_goal
    @goal = Goal.find(params[:goal_id])
  end


  def step_params
    params.require(:step).permit(:goal_id, :direction, :statement)
  end


end
