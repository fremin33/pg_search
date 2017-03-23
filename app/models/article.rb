class Article < ApplicationRecord
   include PgSearch
   pg_search_scope  :search_by_title,
                      :against => :title,
                      :using => {
                        :tsearch => { :prefix => true, :negation => true, :any_word => true}}
end
