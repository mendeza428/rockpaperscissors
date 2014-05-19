class RPS::DB
  def initialize
    @users = {}
    @next_user_id = 0
  end

  # Inserts a user into the database
  def create_user(data)
    data[:id] = @next_user_id
    @next_user_id += 1
    @users[data[:id]] = data
    build_user(data)
  end

  # Building a User object with supplied data
  def build_user(data)
    User.new(data)
  end
end

module RPS
  def self.db
    @__db_instance ||= DB.new
  end
end
