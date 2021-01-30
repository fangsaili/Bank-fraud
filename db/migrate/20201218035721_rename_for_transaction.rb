class RenameForTransaction < ActiveRecord::Migration[6.0]
  def change
    rename_column :transactions, :currancy, :currency
    rename_column :transactions, :recieve, :payee
  end
end
