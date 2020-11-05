DROP PROCEDURE IF EXISTS nomeEMilhasCliente;

DELIMITER //

CREATE PROCEDURE nomeEMilhasCliente (IN codCliente INT)
	BEGIN
                    
		SELECT c.nome, m.quantidade
		FROM cliente c LEFT JOIN milhas m
		ON c.codigo = m.cliente
        WHERE c.codigo = codCliente;
 
	END; //

DELIMITER ;

-- CALL nomeEMilhasCliente(12);