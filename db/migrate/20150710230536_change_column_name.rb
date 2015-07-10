class ChangeColumnName < ActiveRecord::Migration
  def change
    rename_column :profiles, :jon_title, :job_title
  end
end
