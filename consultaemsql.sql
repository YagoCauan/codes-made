CREATE TABLE pedidos (
    ID_Pedido INT PRIMARY KEY NOT NULL,
    ID_Cliente INT NOT NULL,
    Data DATE NOT NULL,
    Valor DECIMAL(10, 2) NOT NULL
);

INSERT INTO pedidos (ID_Pedido, ID_Cliente, Data, Valor) VALUES
(1, 101, '2024-02-29', 100.50),
(2, 102, '2024-02-28', 75.20),
(3, 101, '2024-02-27', 120.75),
(4, 103, '2024-02-26', 50.00),
(5, 102, '2024-02-25', 90.30);

SELECT ID_Cliente, COUNT(*) AS Total_Pedidos
FROM Pedidos
GROUP BY ID_Cliente
ORDER BY Total_Pedidos DESC;