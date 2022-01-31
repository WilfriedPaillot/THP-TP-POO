class User
  attr_accessor :email
  attr_accessor :age
  @@all_users = []

  def initialize(email, age)
    @email = email
    @age = age
    @@all_users.push(self)
  end

  def self.all
    return @@all_users
  end

end