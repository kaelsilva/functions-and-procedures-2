DROP FUNCTION IF EXISTS getClientFlyCount;

DELIMITER //

CREATE FUNCTION getClientFlyCount (cliente INT)
RETURNS INT

BEGIN

	DECLARE n INT;

	SET n = (	SELECT COUNT(cv.cliente)
				FROM cliente_voo cv
				WHERE cv.cliente = cliente);
                    
	RETURN n;

END; //