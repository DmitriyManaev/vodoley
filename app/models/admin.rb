class Admin < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :username, presence: true, uniqueness: { case_sensitive: false }
  validates :username, length: { minimum: 2 }
  validates :username, format: { with: /\A[a-zA-Z0-9.+_]+\z/ }

  def email_required?
    false
  end

  def password_required?
    true
  end

  def self.find_for_database_authentication(warden_conditions)
    conditions = warden_conditions.dup
    username = conditions.delete(:username)
    where(conditions).where(['lower(username) = :value OR lower(email) = :value', {value: username.strip.downcase}]).first
  end
end
