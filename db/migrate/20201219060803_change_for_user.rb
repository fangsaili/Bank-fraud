class ChangeForUser < ActiveRecord::Migration[6.0]
  def change
    add_reference :accounts, :user, index: true
    add_foreign_key :accounts, :users
  end
end
