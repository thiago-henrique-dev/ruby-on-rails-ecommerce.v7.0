class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable


  validates :name, :phone, presence: true
  
  enum role: { user: 'user', admin: 'admin' }

         validates :name, :phone, presence: true


         validates :name, :phone, presence: true

end
