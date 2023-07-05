class AddDetailsToTasks < ActiveRecord::Migration[7.0]
  def change
    add_column :tasks, :start_date, :datetime
    add_column :tasks, :start_end, :datetime
    add_column :tasks, :is_all_day, :boolean, default: false, null: false
  end
end
