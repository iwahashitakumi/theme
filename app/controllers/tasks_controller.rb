class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.new(params.require(:task).permit(:title, :start_date, :start_end, :introduction, :is_all_day))
     if @task.save
       flash[:notice] = "予定を新規登録しました"
       redirect_to :tasks
     else
       flash[:alert] = "予定の登録に失敗しました。"
       redirect_to :tasks
     end
  end

  def show
    @task = Task.find(params[:id])
  end

  def edit
    @task = Task.find(params[:id])
  end

  def update
    @task = Task.find(params[:id])
     if @task.update(params.require(:task).permit(:title, :start_date, :start_end, :introduction, :is_all_day))
       flash[:notice] = "ユーザーIDが「#{@task.id}」の情報を更新しました"
       redirect_to :tasks
     else
       render "edit"
     end
  end

  def destroy
    @task = Task.find(params[:id])
     @task.destroy
     flash[:notice] = "予定を削除しました"
     redirect_to :tasks
  end
end
