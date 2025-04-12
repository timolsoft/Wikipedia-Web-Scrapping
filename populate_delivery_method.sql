INSERT INTO delivery_method(delivery_id, delivery_method) 
VALUES(%s,%s)
ON CONFLICT (delivery_id) DO NOTHING;