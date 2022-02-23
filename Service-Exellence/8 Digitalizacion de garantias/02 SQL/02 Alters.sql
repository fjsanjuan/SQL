--se agrego campo para diferenciar una orden publica y pregarantia, almacena id de la orden publica
ALTER TABLE orden_servicio ADD movimiento varchar(20)

--se agrego el campo para levantar bandera de carro inmobilizado
ALTER TABLE orden_servicio ADD carro_parado bit

-- se agrego el campo para saber cuando se consulta oasis en una orden
ALTER TABLE orden_servicio ADD oasis bit

--almacena la firma de jefe de taller cuando autoriza la pregarantia
ALTER TABLE firma_electronica ADD firma_pregarantiaJefe nvarchar(MAX)

--almacena la firma de jefe de taller cuando autoriza la adicional
ALTER TABLE firma_electronica ADD firma_adicionalJefe nvarchar(MAX)

--almacena la firma de gerente cuando este autoriza la pregarantia
ALTER TABLE firma_electronica ADD firma_pregarantiaGerente nvarchar(MAX)

--almacena la firma de gerente cuando este autoriza la adicional
ALTER TABLE firma_electronica ADD firma_adicionalGerente nvarchar(MAX)

--almacena la firma de Admón de Gtías cuando este autoriza la pregarantia
ALTER TABLE firma_electronica ADD firma_pregarantiaAdmon nvarchar(MAX)

--almacena la firma de Admón de Gtías cuando esta autoriza la adicional
ALTER TABLE firma_electronica ADD firma_adicionalAdmon nvarchar(MAX)

--almacena la firma de jefe de taller cuando esta autoriza el carro parado
ALTER TABLE firma_electronica ADD firma_carroParado nvarchar(MAX)

--almacena la firma de responsable de refacciones cuando este autroiza las refacciones
ALTER TABLE firma_electronica ADD firma_refacc nvarchar(MAX)

--almacena firma de tecnico cuando este autoriza 
ALTER TABLE firma_electronica ADD firma_tecnico nvarchar(MAX)

--almacena el ID de venta del daño al que esta relacionado la mano en VentaD
ALTER TABLE CA_VentaD ADD IDDanno INT

--almacena el Renglon de venta del daño al que esta relacionado la mano en VentaD
ALTER TABLE CA_VentaD ADD RenglonDanno FLOAT(53)

--almacena el RenglonSub de venta del daño al que esta relacionado la mano en VentaD
ALTER TABLE CA_VentaD ADD RenglonSubDanno INT

--almacena el RenglonID de venta del daño al que esta relacionado la mano en VentaD
ALTER TABLE CA_VentaD ADD RenglonIDSubDanno INT