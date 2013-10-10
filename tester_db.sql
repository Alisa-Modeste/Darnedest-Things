CREATE DATABASE name;
\c name
\c tester01

CREATE TABLE name (
  col_name type
)

INSERT


\d pg_index
\d questions <-~- look at its indexes


Gets me the results I want
SELECT count(tags.id), tags.name
FROM taggings LEFT JOIN tags ON taggings.tag_id = tags.id
GROUP BY tags.id, tags.name;