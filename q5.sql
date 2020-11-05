DROP FUNCTION IF EXISTS getMilesSumGT500;

DELIMITER //

CREATE FUNCTION getMilesSumGT500 ()
RETURNS INT

BEGIN

	DECLARE n INT;

	SET n = (	SELECT COUNT(m.quantidade)
				FROM milhas m
                WHERE m.quantidade > 500);
                    
	RETURN n;

END; //