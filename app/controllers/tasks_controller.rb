class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.new(params.require(:task).permit(:title, :start_date, :start_end, :is_all_day))
     if @task.save
       flash[:notice] = "予定を新規登録しました"
       redirect_to :tasks
     else
       flash[:no_notice] = "予定の登録に失敗しました。"
       render "new"
     end
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
