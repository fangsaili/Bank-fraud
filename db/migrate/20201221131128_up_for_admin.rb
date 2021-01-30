class UpForAdmin < ActiveRecord::Migration[6.0]
  def up

      @user = User.create(username: "admin", password: "123456",password_confirmation:"123456")

  end
end
