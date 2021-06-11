CREATE DATABASE musica
GO
use musica
go

CREATE TABLE detallepedido
(
    iddetalle int primary key identity(1,1),
    idpedido int,
    iddisco int,
    cantidad int,
    precioVenta float
);
CREATE TABLE pedido
(
    idpedido int primary key identity(1,1),
    fechaPedido DATE,
    idcliente int,
    idempleado int,
    direccionEntrega varchar(250),
    estado int
);
CREATE TABLE cliente
(
    idcliente int primary key identity(1,1),
    nombres varchar(250),
    apellidos varchar(250),
    direccion varchar(250)
);
CREATE TABLE empleado
(
    idempleado int primary key identity(1,1),
    nombres varchar(250),
    apellidos varchar(250),
    direccion varchar(250),
    username varchar(25),
    clave varchar(25)
);
CREATE TABLE categoria
(
    idcategoria int primary key identity(1,1),
    nombreCategoria varchar(50)
);
CREATE TABLE discos
(
    iddisco int primary key identity(1,1),
    idcategoria int,
    idartista int,
    titulo varchar(50),
    fecha DATE,
    formato varchar(150),
    numeroCanciones int,
    precio float,
    observaciones varchar(500),
    imagen varchar(500)
);
CREATE TABLE canciones
(
    idcancion int primary key identity(1,1),
    iddisco int,
    numero int,
    tiempo varchar(5),
    cancion varchar(150)
)
CREATE TABLE artista
(
    idartista int primary key identity(1,1),
    nombre varchar(150),
    apellido varchar(150),
    fechaNacimiento DATE,
    lugarNacimiento VARCHAR(150),
    email varchar(100)
);

ALTER TABLE pedido ADD CONSTRAINT fk_cliente_pedido FOREIGN KEY (idcliente) REFERENCES cliente(idcliente); 

ALTER TABLE pedido ADD CONSTRAINT fk_empleado_pedido FOREIGN KEY (idempleado) REFERENCES empleado(idempleado);



ALTER TABLE detallepedido ADD CONSTRAINT fk_pedido_detallepedido FOREIGN KEY (idpedido) REFERENCES pedido(idpedido);

ALTER TABLE detallepedido ADD CONSTRAINT fk_detallepedido_discos FOREIGN KEY (iddisco) REFERENCES discos(iddisco);


ALTER TABLE discos ADD CONSTRAINT fk_discos_categoria FOREIGN KEY (idcategoria) REFERENCES categoria(idcategoria);

ALTER TABLE discos ADD CONSTRAINT fk_discos_artista FOREIGN KEY (idartista) REFERENCES artista(idartista);


ALTER TABLE canciones ADD CONSTRAINT fk_canciones_disco FOREIGN KEY (iddisco) REFERENCES discos(iddisco);


INSERT INTO categoria VALUES ('Rock Alternativo');
INSERT INTO artista VALUES ('Paramore', '', '2004-06-12','Franklin, Tenesse ', 'paramore@ejemplo.com' );

INSERT INTO discos VALUES (1, 1, 'Riot', '2007-06-12', 'Formato', 2, 20, 'Un álbum muy bueno', 'Imagen');
INSERT INTO discos VALUES (1, 1, 'After Laughter', '2017-05-12', 'Formato', 2, 20, 'álbum para llorar bailando', 'Imagen');
INSERT INTO discos VALUES (1, 1, 'Brand New Eyes', '2009-09-29', 'Formato', 2, 20, 'El mejor álbum', 'Imagen');

--disco 1
INSERT INTO canciones VALUES (1, 1, '3:35', 'When it Rains');
INSERT INTO canciones VALUES (1, 2, '3:30', 'Miracle');
--disco 2
INSERT INTO canciones VALUES (2, 1, '3:35', 'Rosed-colored boy');
INSERT INTO canciones VALUES (2, 2, '3:30', 'Caught in the middle');
--disco3 
INSERT INTO canciones VALUES (3, 1, '3:35', 'Careful');
INSERT INTO canciones VALUES (3, 2, '3:30', 'Turn It Off');

INSERT INTO cliente VALUES ('Elisa', 'Rivas', 'Santa Ana, Santa Ana');
INSERT INTO cliente VALUES ('Francisco', 'Calderon', 'Santa Ana, Santa Ana');
INSERT INTO empleado VALUES ('Abigail', 'Pereira', 'Santa Ana', 'abigail', '1234');

--pedidos de elisa
INSERT INTO pedido VALUES ('2020-06-12', 1, 1, 'Santa Ana', 1);
INSERT INTO detallepedido VALUES (1, 1,1,25);
INSERT INTO pedido VALUES ('2020-06-12', 1, 1, 'Santa Ana', 1);
INSERT INTO detallepedido VALUES (2, 2,1,25);
--Pedido de fran
INSERT INTO pedido VALUES ('2020-06-12', 2, 1, 'Santa Ana', 1);
INSERT INTO detallepedido VALUES (3,3,1,25);

GO
CREATE PROCEDURE procedimiento_titulo @idcliente int
AS
Select d.titulo FROM  discos d
INNER JOIN detallepedido dp ON d.iddisco = dp.iddisco
INNER JOIN pedido p ON p.idpedido = dp.idpedido
INNER JOIN cliente c ON p.idcliente=c.idcliente 
WHERE c.idcliente = @idcliente
GO

EXEC procedimiento_titulo 2

