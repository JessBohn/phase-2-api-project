class User < ActiveRecord::Base
  has_many :positions
  has_many :evaluations

  def evaluations
    positions.map{|p| p.evaluations}.flatten
  end

  def password
    @password ||= BCrypt::Password.new(original_pw)
  end

  def password=(encrypted_pw)
    @password = BCrypt::Password.create(encrypted_pw)
    self.original_pw = @password
  end

end
