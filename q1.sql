DROP FUNCTION IF EXISTS getPassengersQuantity;

DELIMITER //

CREATE FUNCTION getPassengersQuantity ( voo INT)
RETURNS INT

BEGIN

	DECLARE quantity INT;

	SET quantity = (SELECT v.num_passageiros
					FROM voo v
					WHERE v.codigo = voo);
                    
	RETURN quantity;

END; //

DELIMITER ;