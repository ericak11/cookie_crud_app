  class User < Sequel::Model
    plugin :secure_password
    one_to_many(:recipes)

    def baker?
      role == "baker"
    end

    def patisserie?
      role == "patisserie"
    end

    def customer?
      role == "customer"
    end
  end
