class CreateAccounts < ActiveRecord::Migration[6.0]
  def change
    create_table :accounts do |t|
      t.string :name
      t.string :email
      t.string :password
      t.float :balance

      t.timestamps
    end
  end
end
