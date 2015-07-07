class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  has_and_belongs_to_many :nutrients
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  def missing_nutrients
  	Nutrient.where.not(id: nutrients)
  end

end
