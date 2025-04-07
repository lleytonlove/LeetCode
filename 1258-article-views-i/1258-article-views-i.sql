# Write your MySQL query statement below

SELECT a.author_id as id
FROM (
    SELECT author_id, viewer_id
    FROM Views
    WHERE author_id = viewer_id
) a
GROUP BY a.author_id
HAVING COUNT(*) > 0
ORDER BY a.author_id

-- SELECT author_id as id
-- FROM Views
-- WHERE author_id = viewer_id
-- GROUP BY author_id
-- HAVING COUNT(*) > 0
-- ORDER BY author_id

