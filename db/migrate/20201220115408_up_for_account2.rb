class UpForAccount2 < ActiveRecord::Migration[6.0]
  def up
    5.times do |i|
      @user = User.create(username: "Test#{1000+i}", password: "123456",password_confirmation:"123456")
      5.times do |j|
         @account = @user.accounts.create(user_id:"#{@user.id}" ,name: "Testaccount#{1000+j}", email:"123456#{1000+i}@kcl.ac.uk", password:"123456",balance:500)
         5.times do |z|
         @account.transactions.create(account_id:"#{@account.id}",sender: "Testaccount#{1000+j}", payee:"123456#{1000+z}", amount:"100", date: "#{Time.now}",currency:"EUR",description:"pay",balance:"#{z*100+100}")
         end
      end
      
    end
  end
end
