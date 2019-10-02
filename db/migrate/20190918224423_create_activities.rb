class CreateActivities < ActiveRecord::Migration[5.1]
  def change
    create_table :activities do |t|
      t.integer :number_calories
      t.boolean :ingest_or_burn
      t.text :description
      t.date :date

      t.timestamps
    end
  end
end
