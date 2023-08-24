
INSERT INTO `Cliente` (`cpf`, `nome`, `telefones`, `enderecoCep`, `enderecoNumero`, `enderecoComplemento`) VALUES
('12345678900', 'João Silva', '(11) 98765-4321', '12345-678', '100', 'Ap 101'),
('98765432100', 'Maria Souza', '(21) 99999-8888', '54321-987', '200', 'Casa 2'),
('55544433322', 'Pedro Santos', '(31) 3333-4444', '98765-432', '50', 'Sala 5'),
('77788899911', 'Ana Pereira', '(47) 5555-6666', '34567-890', '300', 'Bloco B'),
('22211133300', 'Carlos Oliveira', '(85) 2222-1111', '23456-789', '25', 'Andar 3');
('00000000000', 'cliente', default, "restaurante", "55", "local")
INSERT INTO `Motoboy` (`nome`, `placa`, `modelo`) VALUES
('Carro1', 'ABC-1234', 'Toyota Corolla'),
('Carro2', 'XYZ-5678', 'Honda Civic'),
('Carro3', 'DEF-9876', 'Ford Mustang');

INSERT INTO Pedido (clienteId, motoboyId, dataPedido, dataCozinha, dataEntrega, valorPedido, valorEntrega) VALUES
(1, 101, '2023-08-03 10:30:00.000', '2023-08-03 10:45:00.000', '2023-08-03 11:15:00.000', 50.99, 5.00),
(2, 102, '2023-08-03 12:15:00.000', '2023-08-03 12:30:00.000', NULL, 35.50, NULL),
(3, 103, '2023-08-03 15:00:00.000', NULL, NULL, 22.75, NULL);


update Pedido set dataCozinha = curtime(), dataEntrega = curtime() where id = 1; 