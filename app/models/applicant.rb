class Applicant < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validate :password_complexity

  def password_complexity
    return if password.blank?

    unless password =~ /(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[\W])/
      errors.add :password, "deve conter pelo menos uma letra maiúscula, uma minúscula, um número e um símbolo"
    end
  end
end
