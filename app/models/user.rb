class User < ApplicationRecord
  extend Devise::Models
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  enum role: [:admin, :manager, :partner, :user]
  after_initialize :set_default_role, :if => :new_record?

  validates :fio, :email, :role, presence: true

  def set_default_role
    self.role ||= :user
  end
end
