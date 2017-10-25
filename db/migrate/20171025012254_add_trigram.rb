class AddTrigram < ActiveRecord::Migration
  def up 
    execute "CREATE EXTENSION pg_trgm"
  end

  def down 
    execute "drop extension pg_trgm"
  end

end
