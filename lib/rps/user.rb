class RPS::User
  attr_reader :name, :password, :id
  def initialize(data)
    @name = data[:name]
    @password = data[:password]
    @id = data[:id]
  end

  def sign_in(password)
    if password == @password
      return true
    else
      return false
    end
  end
end
