class AddTimeToCaptureDetail < ActiveRecord::Migration[6.0]
  def change
    add_column :capture_details, :time, :integer
  end
end
