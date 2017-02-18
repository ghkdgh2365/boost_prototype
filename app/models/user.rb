class User < ActiveRecord::Base
  rolify
  include Authority::UserAbilities
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :posts, dependent: :destroy
  has_many :bulletins, dependent: :destroy
  has_many :confirms, dependent: :destroy
  
  after_create :set_default_role, if: Proc.new { User.count > 1 }
  
  private

  def set_default_role
    add_role :user
  end
  
end
