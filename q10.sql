DROP PROCEDURE IF EXISTS mostraEZeraMilhagem;

DELIMITER //

CREATE PROCEDURE mostraEZeraMilhagem (IN codCliente INT)
	BEGIN
                    
		SELECT c.nome, m.quantidade
		FROM cliente c LEFT JOIN milhas m
		ON c.codigo = m.cliente
        WHERE c.codigo = codCliente;
        
        UPDATE milhas SET quantidade = 0 WHERE milhas.cliente = codCliente;
        
        SELECT c.nome, m.quantidade
		FROM cliente c LEFT JOIN milhas m
		ON c.codigo = m.cliente
        WHERE c.codigo = codCliente;
 
	END; //

DELIMITER ;

-- CALL mostraEZeraMilhagem(11);