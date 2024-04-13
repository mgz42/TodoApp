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
    @task = Task.find(params[:id])
    @task.update(done: !@task.done)
    redirect_to boites_path
  end

  private

  def safe_params
    params.require(:task).permit(:content, :boite_id)
  end
end
