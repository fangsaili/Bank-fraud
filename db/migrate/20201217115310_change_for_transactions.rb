class ChangeForTransactions < ActiveRecord::Migration[6.0]
  def change
    add_column :transactions,:currancy,:string
  end
end
