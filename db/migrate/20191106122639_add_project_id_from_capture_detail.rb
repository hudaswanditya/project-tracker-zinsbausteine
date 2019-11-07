class AddProjectIdFromCaptureDetail < ActiveRecord::Migration[6.0]
  def change
    add_column :capture_details, :project_id, :integer, foreign_key: true
  end
end
