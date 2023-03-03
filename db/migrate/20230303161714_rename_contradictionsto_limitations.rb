class RenameContradictionstoLimitations < ActiveRecord::Migration[7.0]
  def change
    rename_column :grandparents, :contradictions, :limitations
  end
end
