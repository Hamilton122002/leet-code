# Write your MySQL query statement below
Select view.product_id, view.store, view.price FROM(
    select product_id, 'store1' AS store, store1 AS price from Products
    UNION ALL
    select product_id, 'store2' AS store, store2 AS price from Products
    UNION ALL
    select product_id, 'store3' AS store, store3 AS price from Products
) AS view
Where view.price IS NOT null;
