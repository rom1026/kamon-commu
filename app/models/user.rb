class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
    
  # belongs_to :kamon


  # with_options presence: true do
  #   validates :nickname
  #   validates :last_name
  #   validates :first_name
  #   validates :kamon_id
  #   validates :birth_date
  # end

end
