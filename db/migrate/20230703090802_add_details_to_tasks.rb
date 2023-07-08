class AddDetailsToTasks < ActiveRecord::Migration[7.0]
  def change
    add_column :tasks, :start_date, :datetime, null: false
    add_column :tasks, :start_end, :datetime, null: false
    add_column :tasks, :is_all_day, :boolean, null: false, default: false
  end
end
