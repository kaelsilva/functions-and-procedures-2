DROP PROCEDURE IF EXISTS aumentaVoo;

DELIMITER //

CREATE PROCEDURE aumentaVoo (IN codigoPiloto INT)
	BEGIN
    
		DECLARE n DOUBLE;
        
        SET n = (	SELECT p.num_voos
					FROM piloto p
                    WHERE p.codigo = codigoPiloto) + 1;
        
        SELECT n;
 
	END; //

DELIMITER ;

-- CALL aumentaVoo(5);