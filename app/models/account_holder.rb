class AccountHolder < ApplicationRecord

  validates_uniqueness_of :phone
  validates :phone, phone: { possible: false, allow_blank: false, types: [:mobile] }
  before_create :build_profile
  has_one :profile
  

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :sms_activable

  private
  
end
