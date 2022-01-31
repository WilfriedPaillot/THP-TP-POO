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

  def self.find_by_mail(email)
    if !@@all_users.empty?
       @@all_users.map{|i| i.email == email ? (return i) : ("No registration found for this user") }
    else
      puts "Empty users"
    end
  end

end