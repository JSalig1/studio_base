class ChangeProjectNumberToJobNumber < ActiveRecord::Migration
  def change
    rename_column :projects, :project_number, :job_number
  end
end
