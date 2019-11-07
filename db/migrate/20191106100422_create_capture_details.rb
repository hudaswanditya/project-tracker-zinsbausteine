class CreateCaptureDetails < ActiveRecord::Migration[6.0]
  def change
    create_table :capture_details do |t|
      t.references :projects, null: false, foreign_key: true
      t.timestamp :time
      t.integer :amount

      t.timestamps
    end
  end
end
