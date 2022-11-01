class AddProjectId < ActiveRecord::Migration[6.1]
  def change
    add_column :notes, :project_id, :integer
  end
end
