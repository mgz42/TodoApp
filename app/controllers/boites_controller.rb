class BoitesController < ApplicationController
  def index
    @boites = Boite.all
    @task = Task.new
    @boite = Boite.new
  end

  def create
    @boite = Boite.new(safe_params)
    @boite.save
    redirect_to boites_path
  end

  def destroy
    @boite = Boite.find(params[:id])
    @boite.tasks.each do |task|
      task.destroy
    end
    @boite.destroy
    redirect_to boites_path
  end

  private

  def safe_params
    params.require(:boite).permit(:nom)
  end
end
