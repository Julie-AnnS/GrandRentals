class AddDailyRateToGrandparents < ActiveRecord::Migration[7.0]
  def change
    add_column :grandparents, :daily_rate, :integer
  end
end
