class ConcurrentIndexes < ActiveRecord::Migration
  def up

    execute "DROP INDEX index_questions_on_search_title"
    execute "DROP INDEX index_questions_on_search_body"
    execute "DROP INDEX index_questions_on_search_questions" 

    execute "commit;"
    execute "CREATE INDEX CONCURRENTLY index_questions_on_search_title ON questions USING gin(to_tsvector('english', title))"
    execute "CREATE INDEX CONCURRENTLY index_questions_on_search_body ON questions USING gin(to_tsvector('english', body))"
    execute "CREATE INDEX CONCURRENTLY index_questions_on_search_questions ON questions USING gin(to_tsvector('english', title || '' || coalesce(body,'')))"
  end

  def down
    execute "DROP INDEX index_questions_on_search_title"
    execute "DROP INDEX index_questions_on_search_body"
    execute "DROP INDEX index_questions_on_search_questions"

    execute "CREATE INDEX index_questions_on_search_title ON questions USING gin(to_tsvector('english', title))"
    execute "CREATE INDEX index_questions_on_search_body ON questions USING gin(to_tsvector('english', body))"
    execute "CREATE INDEX index_questions_on_search_questions ON questions USING gin(to_tsvector('english', title || '' || coalesce(body,'')))" 

  end
end
