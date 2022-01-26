--funci�n de procedimiento para clonar solo el encabezado de una orden p�blica para una orden de garant�a 
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[xpCA_CopiarSoloEncabezadoGarantia]') AND type IN ('P'))
	DROP TABLE [dbo].[xpCA_CopiarSoloEncabezadoGarantia]
GO
CREATE PROCEDURE [dbo].[xpCA_CopiarSoloEncabezadoGarantia]
      @Modulo   char(5), 
      @ID   int, 
      @Mov    char(20),
      @Usuario  char(10), 
      @FechaEmision datetime, 
      @Estatus  char(15),---
      @Moneda   char(10),---
      @TipoCambio float, --
      @AlmacenDestino char(10),---
      @GenerarDirecto bit,---
      @GenerarMov char(20),---
      @GenerarMovID   varchar(20), ---
      @GenerarID  int OUTPUT,---
      @Ok   int OUTPUT,
      @CopiarBitacora bit = 0,----
      @CopiarSucursalDestino bit = 0----
--//WITH ENCRYPTION
AS BEGIN
  DECLARE
    @Empresa  char(5), 
	@Sucursal int,
	@Almacen  char(10),---
	@MovID    varchar(20),
	@Contacto     char(10),
    @Condicion      varchar(50),
    @Vencimiento    datetime,
    @OrigenTipo     char(10),
    @Origen     char(20),
    @OrigenID     varchar(20),
    @UsarSucursalMovOrigen  bit,
    @AC       bit,
    @CfgTipoCambio    varchar(20)/*,
    @Nivel      varchar(20)*/


  EXEC spExtraerFecha @FechaEmision OUTPUT

  SELECT @CfgTipoCambio = TipoCambio FROM EmpresaCfgModulo WHERE Empresa = @Empresa AND Modulo = @Modulo
  IF @CfgTipoCambio = 'Venta'  SELECT @TipoCambio = TipoCambioVenta  FROM Mon WHERE Moneda = @Moneda ELSE
  IF @CfgTipoCambio = 'Compra' SELECT @TipoCambio = TipoCambioCompra FROM Mon WHERE Moneda = @Moneda 

  SELECT @UsarSucursalMovOrigen = UsarSucursalMovOrigen,
         @AC = AC
    FROM EmpresaGral 
   WHERE Empresa = @Empresa

  -- obetener almacen de la orden 
  SELECT @Almacen = Almacen,  @Empresa= Empresa, @Sucursal= Sucursal, @MovID= MovID FROM Venta WHERE ID = @ID
  
  
  IF @UsarSucursalMovOrigen = 0
    SELECT @Sucursal = Sucursal FROM UsuarioSucursal WHERE Usuario = @Usuario


  IF @Mov IS NOT NULL AND @MovID IS NOT NULL
  BEGIN
/*    SELECT @Nivel = 'HIJO'
    SELECT @Nivel = ISNULL(UPPER(NULLIF(RTRIM(Nivel), '')), 'HIJO')
      FROM CfgMovFlujo
     WHERE Modulo = @Modulo AND OMov = @Mov AND DMov = @GenerarMov
*/
    SELECT @OrigenTipo = @Modulo, @Origen = @Mov, @OrigenID = @MovID
/*    IF @Nivel = 'DIRECTO' 
      SELECT @OrigenTipo = NULL, @Origen = NULL, @OrigenID = NULL 
    ELSE 
    IF @Nivel IN ('HERMANO', 'PADRE', 'ABUELO')
    BEGIN
      EXEC spMovInfo @ID, @Modulo, @OrigenTipo = @OrigenTipo OUTPUT, @Origen = @Origen OUTPUT, @OrigenID = @OrigenID OUTPUT
      IF @Nivel IN ('PADRE', 'ABUELO') AND @OrigenID IS NOT NULL
      BEGIN
        EXEC spMovInfo NULL, @Modulo, @Origen, @OrigenID, @Empresa = @Empresa, @OrigenTipo = @OrigenTipo OUTPUT, @Origen = @Origen OUTPUT, @OrigenID = @OrigenID OUTPUT
        IF @Nivel = 'ABUELO' AND @OrigenID IS NOT NULL
          EXEC spMovInfo NULL, @Modulo, @Origen, @OrigenID, @Empresa = @Empresa, @OrigenTipo = @OrigenTipo OUTPUT, @Origen = @Origen OUTPUT, @OrigenID = @OrigenID OUTPUT
      END
    END*/
  END

IF @Modulo = 'VTAS' 
    INSERT Venta (UltimoCambio, Sucursal, SucursalOrigen, SucursalDestino, OrigenTipo,  Origen,  OrigenID,  Empresa,  Usuario,  Estatus,  Mov,         MovID,         FechaEmision,  Directo,         Almacen,  AlmacenDestino,  Concepto, Proyecto, UEN, Moneda,  TipoCambio,  Referencia, Observaciones, Prioridad, Codigo, Cliente, EnviarA, Agente, AgenteServicio, FormaEnvio, FechaRequerida, HoraRequerida, FechaOriginal, FechaOrdenCompra, ReferenciaOrdenCompra, OrdenCompra, Condicion, Vencimiento, CtaDinero, Descuento, DescuentoGlobal, ServicioTipo, ServicioArticulo, ServicioSerie, ServicioContrato, ServicioContratoID, ServicioContratoTipo, ServicioGarantia, ServicioDescripcion, ServicioFlotilla, ServicioRampa, ServicioIdentificador, ServicioFecha, ServicioPlacas, ServicioKms, ServicioSiniestro, Atencion, Departamento, ZonaImpuesto, ListaPreciosEsp, GenerarOP, DesglosarImpuestos, DesglosarImpuesto2, ExcluirPlaneacion, ConVigencia, VigenciaDesde, VigenciaHasta, Bonificacion, Causa, Periodicidad, SubModulo, ContUso, Espacio, AutoCorrida, AutoCorridaHora, AutoCorridaServicio, AutoCorridaRol, AutoCorridaOrigen, AutoCorridaDestino, AutoCorridaKms, AutoCorridaLts, AutoCorridaRuta, AutoBoleto, AutoKms, AutoKmsActuales, AutoBomba, AutoBombaContador, GastoAcreedor, GastoConcepto, Comentarios, ServicioTipoOrden, ServicioTipoOperacion, ServicioExpress, ServicioDemerito, ServicioDeducible, ServicioDeducibleImporte, ServicioNumero, ServicioNumeroEconomico, ServicioAseguradora, SucursalVenta, RenglonID, AF, AFArticulo, AFSerie, ContratoTipo, ContratoDescripcion, ContratoSerie, ContratoValor, ContratoValorMoneda, ContratoSeguro, ContratoVencimiento, ContratoResponsable, Clase, SubClase, EndosarA, LineaCredito, TipoAmortizacion, TipoTasa, TieneTasaEsp, TasaEsp, Comisiones, ComisionesIVA, AgenteComision, ServicioPoliza, FormaPagoTipo, SobrePrecio, ContUso2, ContUso3, ContratoID, ContratoMov, ContratoMovID, AnticipoFacturadoTipoServicio,  ServicioModelo, ServicioTipoPrecio, TipoCita, HoraRecepcion,FichaRefDeducible, DemeritoMontoRecupero, DemeritoBancoDeposito, DemeritoFechaDeposito, DemeritoRefFicha,ServicioDeducibleBanco,ServicioDeducibleFecha,FolioElectronico) --DIMAS   -- Omar L.D. Se agrego el campo ServicioModelo para arrastar el modelo del vin y el precio del paquete para Fame Valladolid **PARA MAZDA TAMPICO QUITAR /* ServicioModelo, ServicioTipoPrecio, HoraRecepcion,*/
           SELECT GETDATE(), @Sucursal, @Sucursal, CASE WHEN @CopiarSucursalDestino = 1 THEN SucursalDestino ELSE @Sucursal END, @OrigenTipo, @Origen, @OrigenID, @Empresa, @Usuario, @Estatus, @GenerarMov, @GenerarMovID, @FechaEmision, @GenerarDirecto, @Almacen, @AlmacenDestino, 'Garantia', Proyecto, UEN, @Moneda, ISNULL(@TipoCambio, TipoCambio), Referencia, Observaciones, Prioridad, Codigo, Cliente, EnviarA, Agente, AgenteServicio, FormaEnvio, FechaRequerida, HoraRequerida, FechaOriginal, FechaOrdenCompra, ReferenciaOrdenCompra, OrdenCompra, Condicion, Vencimiento, CtaDinero, Descuento, DescuentoGlobal, ServicioTipo, ServicioArticulo, ServicioSerie, ServicioContrato, ServicioContratoID, ServicioContratoTipo, ServicioGarantia, ServicioDescripcion, ServicioFlotilla, ServicioRampa, ServicioIdentificador, ServicioFecha, ServicioPlacas, ServicioKms, ServicioSiniestro, Atencion, Departamento, ZonaImpuesto, ListaPreciosEsp, GenerarOP, DesglosarImpuestos, DesglosarImpuesto2, ExcluirPlaneacion, ConVigencia, VigenciaDesde, VigenciaHasta, Bonificacion, Causa, Periodicidad, SubModulo, ContUso, Espacio, AutoCorrida, AutoCorridaHora, AutoCorridaServicio, AutoCorridaRol, AutoCorridaOrigen, AutoCorridaDestino, AutoCorridaKms, AutoCorridaLts, AutoCorridaRuta, AutoBoleto, AutoKms, AutoKmsActuales, AutoBomba, AutoBombaContador, GastoAcreedor, GastoConcepto, Comentarios, 'Garantia', ServicioTipoOperacion, ServicioExpress, ServicioDemerito, ServicioDeducible, ServicioDeducibleImporte, ServicioNumero, ServicioNumeroEconomico, ServicioAseguradora, SucursalVenta, RenglonID, AF, AFArticulo, AFSerie, ContratoTipo, ContratoDescripcion, ContratoSerie, ContratoValor, ContratoValorMoneda, ContratoSeguro, ContratoVencimiento, ContratoResponsable, Clase, SubClase, EndosarA, LineaCredito, TipoAmortizacion, TipoTasa, TieneTasaEsp, TasaEsp, Comisiones, ComisionesIVA, AgenteComision, ServicioPoliza, FormaPagoTipo, SobrePrecio, ContUso2, ContUso3, ContratoID, ContratoMov, ContratoMovID, AnticipoFacturadoTipoServicio, ServicioModelo, ServicioTipoPrecio, TipoCita,
        --DIMAS: -->OBTENGO LA HORA DE RECEPCION
        (SELECT ISNULL(MIN(HORA),SUBSTRING(CONVERT(VARCHAR, ISNULL(GETDATE(),''), 8),1,5)) FROM AGENDAHORA WHERE HORA > SUBSTRING(CONVERT(VARCHAR, ISNULL(GETDATE(),''), 8),1,5)),FichaRefDeducible, DemeritoMontoRecupero, DemeritoBancoDeposito, DemeritoFechaDeposito, DemeritoRefFicha,ServicioDeducibleBanco,ServicioDeducibleFecha,FolioElectronico
             FROM Venta WHERE ID = @ID 
       INSERT INTO CA_IdsGarantia VALUES((SELECT MAX(id) FROM venta),@ID)
  -- Leer Identity
  SELECT @GenerarID = SCOPE_IDENTITY()

/*  IF @Modulo = 'CMP'
    INSERT CampanaRecurso (ID, Recurso, Sucursal, SucursalOrigen)
    SELECT @GenerarID, Recurso, @Sucursal, @Sucursal
      FROM CampanaRecurso
     WHERE ID = @ID*/

  IF @AC = 1
    EXEC spCopiarTablaAmortizacionGuia @Modulo, @ID, @Modulo, @GenerarID

  --EXEC spMovCopiarFormaAnexo @Modulo, @ID, @Modulo, @GenerarID 
  --EXEC spMovCopiarAnexos @Sucursal, @Modulo, @ID, @Modulo, @GenerarID, @CopiarBitacora
  --EXEC xpMovCopiarEncabezado @Sucursal, @Modulo, @ID, @Empresa, @Mov, @MovID, @Usuario, @FechaEmision, @Estatus, @Moneda, @TipoCambio, @Almacen, @AlmacenDestino, @GenerarDirecto, @GenerarMov, @GenerarMovID, @GenerarID, @Ok OUTPUT, @CopiarBitacora

  IF EXISTS(SELECT * FROM EmpresaCfgModulo WHERE Empresa = @Empresa AND Modulo = @Modulo AND UPPER(Tiempos) = 'SI')
    INSERT MovTiempo (Modulo,  Sucursal,  ID,         Usuario,  FechaInicio, FechaComenzo, Estatus) 
               VALUES(@Modulo, @Sucursal, @GenerarID, @Usuario, GETDATE(),   GETDATE(),    @Estatus)
END


/* =============================================
-- Autor: Francisco  San Juan
-- Creación: 25/01/2022
-- Ejemplo: En la vista vwCA_GarantiasPartsOperaciones se utiliza solo filtrar por orden(MOVID) con varios articulos en ella 
-- Descripción:  Funcion para obtener la division de la clave de fabrica de los articulos tipo refacciones en una orden de servicio de tipo gantía se hizo 
   copia de la funcion fnParteCodigo que se utliza para la interfaz de dashboard
-- =============================================*/
IF EXISTS (SELECT * FROM SYSOBJECTS WHERE ID = OBJECT_ID('dbo.fnCA_ParteCodigoGrtias') AND Type = 'FN')
  DROP FUNCTION dbo.fnCA_ParteCodigoGrtias
GO 
CREATE FUNCTION fnCA_ParteCodigoGrtias  
 (@Codigo char(22),  
  @Parte int)  
RETURNS char(20)  
AS  
BEGIN  
    declare @fnParteCodigo char(20)  
    declare @Parte0   char(20)  
  
   SELECT @Parte0 = SUBSTRING(@Codigo,PATINDEX ( '%-%' , @Codigo )+1 ,LEN(@Codigo))  
   IF @Parte=1   
    SELECT @fnParteCodigo = (Case When CHARINDEX('-',@Codigo) = 0  
      Then NULL  
      Else SUBSTRING(@Codigo,1,CHARINDEX('-',@Codigo)-1)  
      End)  
   IF @Parte=2   
    SELECT @fnParteCodigo = (Case When CHARINDEX('-',@Parte0) = 0 or LEN(@Parte0)<2  
      Then @Parte0   
      Else SUBSTRING(@Parte0,1,CHARINDEX('-', @Parte0)-1)   
      End)  
   IF @Parte=3  
    SELECT @fnParteCodigo = (Case When CHARINDEX('-',@Parte0) = 0 or LEN(@Parte0)<2  
      Then NULL  
      Else SUBSTRING(@Parte0,CHARINDEX('-', @Parte0)+1,LEN(@Parte0))   
      End)  

   SELECT @fnParteCodigo = ISNULL(@fnParteCodigo,'')

   RETURN (@fnParteCodigo)  
END  
