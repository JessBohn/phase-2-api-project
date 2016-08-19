class User < ActiveRecord::Base
  validates :username, :email, { uniqueness: true }
  validate :has_username, :has_email, :has_password
  validates :email, format: { with: /\w+.?\w+(@)\w+.\w{3}/, message: "Not a valid email address"}

  def password
    @password ||= BCrypt::Password.new(original_pw)
  end

  def password=(encrypted_pw)
    @password = BCrypt::Password.create(encrypted_pw)
    self.original_pw = @password
  end

  def has_username
    if username.present? == false
      errors.add(:username, "Must provide a username")
    end
  end

  def has_email
    if email.present? == false
      errors.add(:email, "Must provide an email address")
    end
  end

  def has_password
    if password.present? == false
      errors.add(:password, "Must provide a password")
    end
  end

end
