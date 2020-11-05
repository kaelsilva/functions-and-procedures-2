DROP FUNCTION IF EXISTS getPassengerClass;

DELIMITER //

CREATE FUNCTION getPassengerClass ( cliente INT, voo INT)
RETURNS INT

BEGIN

	DECLARE class INT;

	SET class = (	SELECT cv.classe
					FROM cliente_voo cv
					WHERE cv.cliente = cliente && cv.voo = voo);
                    
	RETURN class;

END; //