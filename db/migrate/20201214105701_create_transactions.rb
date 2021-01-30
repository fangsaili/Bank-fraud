class CreateTransactions < ActiveRecord::Migration[6.0]
  def change
    create_table :transactions do |t|
      t.string :sender
      t.string :recieve
      t.date :date
      t.text :description
      t.float :amount
      t.float :balance
      t.references :account, null: false, foreign_key: true

      t.timestamps
    end
  end
end
