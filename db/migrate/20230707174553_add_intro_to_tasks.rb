class AddIntroToTasks < ActiveRecord::Migration[7.0]
  def change
    add_column :tasks, :introduction, :string
  end
end
