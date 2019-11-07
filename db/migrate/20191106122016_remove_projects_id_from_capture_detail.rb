class RemoveProjectsIdFromCaptureDetail < ActiveRecord::Migration[6.0]
  def change
    remove_reference :capture_details, :projects, null: false, foreign_key: true
  end
end
