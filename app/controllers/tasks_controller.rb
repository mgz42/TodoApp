class TasksController < ApplicationController
  def create
    @task = Task.new(safe_params)
    @task.save
    redirect_to boites_path
  end

  def destroy
    @task = Task.find(params[:id])
    @task.destroy
    redirect_to boites_path
  end

  def update
    raise
    @task = Task.find(params[:id])
    @task.upadte(done: safe_params[:done])
  end

  private

  def safe_params
    params.require(:task).permit(:content, :boite_id, :done)
  end
end
