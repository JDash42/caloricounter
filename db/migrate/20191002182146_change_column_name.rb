class ChangeColumnName < ActiveRecord::Migration[5.1]
  def change
    rename_column :activities, :ingest_or_burn, :burnt
  end
end
