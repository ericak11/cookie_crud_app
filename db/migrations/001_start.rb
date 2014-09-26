Sequel.migration do
  change do
    create_table(:users) do
      primary_key :id
      String :email, :size=>500, :null=>false
      String :name, :size=>255, :null=>false
      String :role, :size=>127, :null=>false
      String :password_digest
    end
    create_table(:recipes) do
      primary_key :id
      String :name, :size=>255, :null=>false
      String :ingredients, :size=>1027, :null=>false
      Integer :total_cookies, :null=>false
      Float :cost, :null=>false
      foreign_key :user_id, :users, :null=>false, :key=>[:id]
    end
  end
end
