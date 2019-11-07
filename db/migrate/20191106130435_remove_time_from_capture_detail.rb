class RemoveTimeFromCaptureDetail < ActiveRecord::Migration[6.0]
  def change

    remove_column :capture_details, :time, :timestamp
  end
end
