class User < ApplicationRecord
  extend Devise::Models
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  enum role: [:admin, :manager, :partner, :user]
  after_initialize :set_default_role, :if => :new_record?

  validates :fio, :email, :role, presence: true

  validates_format_of :tel,
                      :with => /\A\+[0-9]{1}\([0-9]{3}\)[0-9]{3}-[0-9]{2}-[0-9]{2}\z/,
                      :message => "должен соответствовать формату +х(ххх)xxx-xx-xx"
  def set_default_role
    self.role ||= :user
  end
  has_many :facility
end
