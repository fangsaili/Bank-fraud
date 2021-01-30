class User < ApplicationRecord
  
  has_many :accounts, dependent: :destroy
  has_secure_password

  validates :username, presence: true,
                       length: {minimum: 4, maximum: 30},
                       uniqueness: { case_sensitive: false}

  validates :password, presence: true, length: {minimum: 6}

  before_save :lowercase_username

  private
    def lowercase_username()
      self.username = username.downcase
    end
end
