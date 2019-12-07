class TasksController < ApplicationController
  before_action :set_task, only: [:show, :edit, :update, :destroy]

  def index
    @tasks = Task.all
  end

  def show
  end

  def new
    @task = Task.new(params[:task])
    @task.save
  end

  def create
    @task = Task.new(params[:task])
    @task.save
  end

  def edit
  end

  def update
    @task.update(params[:task])
  end

  def destory
    @task.destroy
  end

  private

  def set_task
    @task = Task.find(params[:id])
  end
end
