SELECT * 
FROM products 
WHERE (data->>'in_stock')::integer > 0 
AND (data ->> 'description')::text = '%Rammstein%' 
ORDER BY (data->>'price')::decimal;
