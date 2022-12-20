# Write your MySQL query statement below
Select id, CASE WHEN p_id is null then 'Root' when id not in (Select p_id from Tree where p_id is not null) Then 'Leaf' else 'Inner' END as TYPE from Tree
