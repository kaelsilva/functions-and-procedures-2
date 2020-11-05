DROP PROCEDURE IF EXISTS nomeEQtdVoosPiloto;

DELIMITER //

CREATE PROCEDURE nomeEQtdVoosPiloto (IN codPiloto INT)
	BEGIN
    
		SELECT p.nome, p.num_voos
		FROM piloto p
        WHERE p.codigo = codPiloto;
 
	END; //

DELIMITER ;

-- CALL nomeEQtdVoosPiloto(4);