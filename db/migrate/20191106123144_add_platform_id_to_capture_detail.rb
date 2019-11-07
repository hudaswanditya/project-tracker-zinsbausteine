class AddPlatformIdToCaptureDetail < ActiveRecord::Migration[6.0]
  def change
    add_column :capture_details, :platform_id, :integer, foreign_key: true
  end
end
