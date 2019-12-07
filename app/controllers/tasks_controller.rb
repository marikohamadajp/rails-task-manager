class TasksController < ApplicationController
  before_action :set_task, only: [:show, :edit, :update, :destroy]

  def index
    @tasks = Task.all
  end

  def show
  end

  def new
  end

  def create
    @task = Task.new(task_params)
    @task.save
  end

  def edit
  end

  def update
    @task.update(task_params)
  end

  def destory
    @task.destroy
  end

  private

  def set_task
    @task = Task.find(params[:id])
  end
end
