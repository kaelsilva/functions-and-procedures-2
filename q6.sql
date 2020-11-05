DROP PROCEDURE IF EXISTS quadradoDe;

DELIMITER //

CREATE PROCEDURE quadradoDe (IN valor DOUBLE)
	BEGIN
    
		DECLARE n DOUBLE;
        
        SET n = valor*valor;

		SET valor = n;
        
        SELECT valor;
 
	END; //

DELIMITER ;

CALL quadradoDe(11);