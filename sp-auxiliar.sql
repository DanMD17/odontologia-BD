-- Insertar un nuevo auxiliar
DELIMITER $$
CREATE PROCEDURE spInsertAssistant(
	IN emp_id INT,
    IN aux_funcion VARCHAR(100), 
    IN aux_nivel_educativo VARCHAR(45)
)
BEGIN
    INSERT INTO tbl_auxiliares (tbl_empleado_emp_id, aux_funcion, aux_nivel_educativo)
    VALUES (emp_id, aux_funcion, aux_nivel_educativo);
END $$
DELIMITER ;

-- Leer todos los auxiliares
DELIMITER $$
CREATE PROCEDURE spSelectAssistant()
BEGIN
    SELECT * FROM tbl_auxiliares;
END $$
DELIMITER ;

-- Actualizar un auxiliar
DELIMITER $$
CREATE PROCEDURE spUpdateAssistant(
    IN p_aux_id INT, 
    IN p_aux_funcion VARCHAR(100), 
    IN p_aux_nivel_educativo VARCHAR(45)
)
BEGIN
    UPDATE tbl_auxiliares 
    SET aux_funcion = p_aux_funcion, aux_nivel_educativo = p_aux_nivel_educativo
    WHERE aux_id = p_aux_id;
END $$
DELIMITER ;

-- Eliminar un auxiliar
DELIMITER $$
CREATE PROCEDURE spDeleteAssistant(IN p_aux_id INT)
BEGIN
    DELETE FROM tbl_auxiliares WHERE aux_id = p_aux_id;
END $$
DELIMITER ;