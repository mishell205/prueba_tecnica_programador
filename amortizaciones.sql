
CREATE DATABASE IF NOT EXISTS prestamos;

USE prestamos;

CREATE TABLE IF NOT EXISTS amortizaciones (
    id INT AUTO_INCREMENT PRIMARY KEY,
    periodo INT NOT NULL,
    saldo DECIMAL(10, 2) NOT NULL,
    interes DECIMAL(10, 2) NOT NULL,
    abono DECIMAL(10, 2) NOT NULL,
    pago DECIMAL(10, 2) NOT NULL
);
DELIMITER //

CREATE PROCEDURE calcular_amortizacion(
    IN p_monto DECIMAL(10, 2),
    IN p_plazo INT,
    IN p_tasa_interes_mensual DECIMAL(5, 4)
)
BEGIN
    DECLARE v_periodo INT DEFAULT 1;
    DECLARE v_saldo DECIMAL(10, 2) DEFAULT p_monto;
    DECLARE v_interes DECIMAL(10, 2);
    DECLARE v_abono DECIMAL(10, 2);
    DECLARE v_pago DECIMAL(10, 2);

    TRUNCATE TABLE amortizaciones;

    WHILE v_periodo <= p_plazo DO
        SET v_interes = v_saldo * p_tasa_interes_mensual;
        SET v_abono = p_monto / p_plazo;
        SET v_pago = v_interes + v_abono;

        INSERT INTO amortizaciones (periodo, saldo, interes, abono, pago)
        VALUES (v_periodo, v_saldo, v_interes, v_abono, v_pago);

        SET v_saldo = v_saldo - v_abono;
        SET v_periodo = v_periodo + 1;
    END WHILE;
END //

DELIMITER ;

CALL calcular_amortizacion(10000, 6, 0.015);
SELECT * FROM amortizaciones;

