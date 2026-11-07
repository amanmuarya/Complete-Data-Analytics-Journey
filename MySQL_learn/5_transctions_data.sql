use ecom ;

SET autocommit = 0;

UPDATE orders
SET order_status = 'Cancelled'
WHERE order_id = 3;

SELECT order_id, order_status
FROM orders
WHERE order_id = 3;

COMMIT;

ROLLBACK;