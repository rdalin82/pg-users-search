class User < ActiveRecord::Base
  include PgSearch
  pg_search_scope :that_sounds_like,

                  :against => :name,
                  :using => :dmetaphone

  pg_search_scope :kinda_spelled_like, 
                  :against => :name, 
                  :using => :trigram
end
