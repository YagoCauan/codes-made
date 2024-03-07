CREATE TABLE Produtos (
    ID_Produto INT PRIMARY KEY NOT NULL,
    Nome VARCHAR(255) NOT NULL,
    Preco DECIMAL(10, 2) NOT NULL
);

INSERT INTO Produtos (ID_Produto, Nome, Preco) VALUES
(2312, 'ProdutoA', 19.99),
(3532, 'ProdutoB', 29.99),
(1567, 'ProdutoC', 15.50),
(7444, 'ProdutoD', 45.00);

SELECT Nome
FROM Produtos
WHERE Preco > (SELECT AVG(Preco) FROM Produtos);