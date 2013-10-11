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


Question.eager_load([:tags, :tag_rows, :answers]).find(params[:id])
  produces
SELECT DISTINCT "questions".id
FROM "questions"
LEFT OUTER JOIN "taggings" ON "taggings"."question_id" = "questions"."id"
LEFT OUTER JOIN "tags" ON "tags"."id" = "taggings"."tag_id"
LEFT OUTER JOIN "taggings" "tag_rows_questions" ON "tag_rows_questions"."question_id" = "questions"."id"
LEFT OUTER JOIN "answers" ON "answers"."question_id" = "questions"."id"
WHERE "questions"."id" = $1 LIMIT 1

Question.eager_load([:tags, :answers]).find(:answers]).find(params[:id])
  eliminates that extra join_table
SELECT DISTINCT "questions".id
FROM "questions"
LEFT OUTER JOIN "taggings" ON "taggings"."question_id" = "questions"."id"
LEFT OUTER JOIN "tags" ON "tags"."id" = "taggings"."tag_id"
LEFT OUTER JOIN "answers" ON "answers"."question_id" = "questions"."id"
WHERE "questions"."id" = $1 LIMIT 1  [["id", 7]]