class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :name, :phone, presence: true
  
  enum role: { user: 'user', admin: 'admin' }

end
