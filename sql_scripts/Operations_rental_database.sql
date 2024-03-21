-- UPDATE THE RENTAL TOTAL_PRICE COLUMN

UPDATE RENTAL AS R
JOIN(
	SELECT 
		R.RENTAL_ID,
		ROUND((V.COST*(R.END_DATE - R.START_DATE) + SUM(I.COST) * 1.05), 2) AS TOTAL_PRICE
	FROM 
		RENTAL R
	JOIN 
		VEHICLE V ON V.VEHICLE_ID = R.VEHICLE_ID
	JOIN 
		R_I  RI ON RI.RENTAL_ID = R.RENTAL_ID
	JOIN 
		INSURANCE I ON I.INSURANCE_ID = RI.INSURANCE_ID
	GROUP BY R.RENTAL_ID
) AS PRICE ON PRICE.RENTAL_ID = R.RENTAL_ID
SET R.TOTAL_PRICE = PRICE.TOTAL_PRICE;
    
-- CHECK THE UPDATED RENTAL DATA

SELECT * FROM RENTAL;


-- DELIMITER //

-- CREATE TRIGGER update_total_price_trigger
-- AFTER INSERT ON R_I
-- FOR EACH ROW
-- BEGIN
--     DECLARE total_price DECIMAL(8, 2);

--     -- Update the TOTAL_PRICE column for the affected rental
--     UPDATE RENTAL
--     SET TOTAL_PRICE = (select ROUND(sum(i.cost) + v.cost) as insurance_cost from
-- rental r
-- join vehicle v on v.vehicle_id = r.vehicle_id
-- join r_i ri on r.rental_id = NEW.RENTAL_ID
-- join insurance i on i.INSURANCE_ID = NEW.INSURANCE_ID
-- GROUP BY r.rental_id)
--     WHERE rental_id = NEW.rental_id;
-- END;
-- //

-- DELIMITER ;



