class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable and :recoverable (removing for now)
  devise :database_authenticatable, :registerable,
         :rememberable, :validatable
end
