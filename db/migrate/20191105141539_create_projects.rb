class CreateProjects < ActiveRecord::Migration[6.0]
  def change
    create_table :projects do |t|
      t.references :platform, null: false, foreign_key: true
      t.string :name
      t.integer :funding_amount
      t.string :city
      t.string :developer_name
      t.integer :duration_in_months
      t.string :interest_rate

      t.timestamps
    end
  end
end
