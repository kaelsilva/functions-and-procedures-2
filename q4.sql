DROP FUNCTION IF EXISTS getMilesSum;

DELIMITER //

CREATE FUNCTION getMilesSum ()
RETURNS INT

BEGIN

	DECLARE n INT;

	SET n = (	SELECT SUM(m.quantidade)
				FROM milhas m);
                    
	RETURN n;

END; //