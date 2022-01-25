
[Forma]
Clave=ServicioPaquetes_OS
Icono=0
Modulos=(Todos)
MovModulo=(Todos)
Nombre=Paquetes

ListaCarpetas=(Lista)
CarpetaPrincipal=ServicioPaquetes_OS
PosicionInicialIzquierda=160
PosicionInicialArriba=62
PosicionInicialAlturaCliente=617
PosicionInicialAncho=1220
VentanaSiempreAlFrente=S
VentanaTipoMarco=Normal
VentanaPosicionInicial=por Diseño
VentanaAjustarZonas=S
VentanaEscCerrar=S
VentanaEstadoInicial=Normal
VentanaAvanzaTab=S
BarraHerramientas=S
AccionesTamanoBoton=15x5
AccionesDerecha=S
ListaAcciones=(Lista)
PosicionSec1=58
[ServicioPaquetes_OS]
Estilo=Iconos
PestanaOtroNombre=S
PestanaNombre=Paquetes
Clave=ServicioPaquetes_OS
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=B1
Vista=ServicioPaquetes_OS
Fuente={Tahoma, 8, Negro, []}
CampoColorLetras=Negro
CampoColorFondo=Blanco

CarpetaVisible=S

Filtros=S
FiltroPredefinido=S
FiltroNullNombre=(sin clasificar)
FiltroEnOrden=S
FiltroTodoNombre=(Todo)
FiltroAncho=20
FiltroTipo=General










IconosCampo=(sin Icono)
IconosEstilo=Detalles
IconosAlineacion=de Arriba hacia Abajo
IconosConSenales=S
IconosSubTitulo=<T>Paquetes<T>
IconosSeleccionPorLlave=S
IconosSeleccionMultiple=S
ElementosPorPaginaEsp=200
ListaEnCaptura=(Lista)
IconosNombre=ServicioPaquetes_OS:IdPaquete
FiltroGeneral=(Articulo = <T>{Info.Articulo}<T> or Articulo LIKE <T>%Todos%<T> ) and (Modelo = <T>{Info.Modelo}<T> or Modelo LIKE <T>%Todos%<T>)   <BR>{SI(ConDatos(Info.Cilindros), <T>and (Cilindros = <T>+comillas(Info.Cilindros)+<T>or Cilindros LIKE <T>+comillas(<T>%Todos%<T>)+<T>)<T>,<T><T>)}<BR>{SI(ConDatos(Info.Transmision), <T>and (Transmision = <T>+comillas(Info.Transmision)+<T>or Transmision LIKE <T>+comillas(<T>%Todos%<T>)+<T>)<T>,<T><T>)}<BR>{SI(ConDatos(Info.Motor), <T>and (Motor = <T>+comillas(Info.Motor)+<T>or Motor LIKE <T>+comillas(<T>%Todos%<T>)+<T>)<T>,<T><T>)}
[ServicioPaquetes_OS.Columnas]
0=-2
1=57
2=103
3=-2
4=-2
5=-2
6=-2
7=-2
8=-2
9=-2
10=-2
11=-2




DescripcionL=604
PAQ_EST=58
TipoPaquete=184
Kilometraje=64
Precio=64
TipoPrecio=124
Prorrateo=154
TTabulador=85
TFacturado=90
ClavePlanta=604
Actualizacion=113
12=-2
[Acciones.Aceptar]
Nombre=Aceptar
Boton=23
NombreEnBoton=S
NombreDesplegar=Aceptar
EnBarraHerramientas=S
TipoAccion=Ventana
ClaveAccion=Aceptar
Activo=S
Visible=S

Antes=S
;AntesExpresiones=EjecutarSQL(<T>LimpiaListaSt :nEstacion<T>, EstacionTrabajo)<BR>RegistrarSeleccion(<T>ServicioPaquetes_OS<T>)<BR>EjecutarSQL(<T>spGenerarDetalleST :tTabla,:nIde,:tEmpresa,:nSucursal,:nEstacion,:nProduccion,:tOkRef<T>,<T>VentaD<T>,Info.ID,Empresa,Sucursal,EstacionTrabajo,1,<T><T>)<BR>Informacion(<T>Paquete(s) ingresado(s) con éxito a la orden de servicio<T>)
AntesExpresiones=EjecutarSQL(<T>LimpiaListaSt :nEstacion<T>, EstacionTrabajo)<BR>RegistrarSeleccion(<T>ServicioPaquetes_OS<T>)<BR>Asigna(Info.Mensaje,(SQL(<T>DECLARE @OkRef varchar(255) EXEC spGenerarDetalleST :tTabla,:nIde,:tEmpresa,:nSucursal,:nEstacion,:nProduccion,@OkRef OUTPUT SELECT @OkRef<T>,<T>VentaD<T>,Info.ID,Empresa,Sucursal,EstacionTrabajo,1)))<BR>Si(Info.Mensaje=<T>Ok<T>,Informacion(<T>Paquete(s) ingresado(s) con éxito a la orden de servicio<T>),Informacion(Info.Mensaje))
[Acciones.Cancelar]
Nombre=Cancelar
Boton=21
NombreEnBoton=S
NombreDesplegar=Cancelar
EnBarraHerramientas=S
TipoAccion=Ventana
ClaveAccion=Cancelar
Activo=S
Visible=S














[Filtros]
Estilo=Ficha
Clave=Filtros
AlineacionAutomatica=S
AcomodarTexto=S
MostrarConteoRegistros=S
Zona=A1
Vista=(Variables)
Fuente={Tahoma, 8, Negro, []}
CampoColorLetras=Negro
CampoColorFondo=Blanco
CarpetaVisible=S

FichaEspacioEntreLineas=0
FichaEspacioNombres=0
FichaColorFondo=Negro


ListaEnCaptura=(Lista)


PestanaOtroNombre=S
FichaEspacioNombresAuto=S
FichaNombres=Izquierda
FichaAlineacion=Izquierda
FichaAlineacionDerecha=S




[ServicioPaquetes_OS.FiltroListaEstatus]
(Inicio)=(Todos)
(Todos)=ACTIVO
ACTIVO=ELIMINADO
ELIMINADO=(Fin)



















[Filtros.Info.Articulo]
Carpeta=Filtros
Clave=Info.Articulo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco














[Filtros.Info.Modelo]
Carpeta=Filtros
Clave=Info.Modelo
Editar=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[Filtros.Info.Cilindros]
Carpeta=Filtros
Clave=Info.Cilindros
Editar=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco

[Filtros.Info.Transmision]
Carpeta=Filtros
Clave=Info.Transmision
Editar=S
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco






[ServicioPaquetes_OS.DescripcionC]
Carpeta=ServicioPaquetes_OS
Clave=DescripcionC
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco

[ServicioPaquetes_OS.DescripcionL]
Carpeta=ServicioPaquetes_OS
Clave=DescripcionL
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=250
ColorFondo=Blanco

[ServicioPaquetes_OS.TipoPaquete]
Carpeta=ServicioPaquetes_OS
Clave=TipoPaquete
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=30
ColorFondo=Blanco

[ServicioPaquetes_OS.Kilometraje]
Carpeta=ServicioPaquetes_OS
Clave=Kilometraje
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
ColorFondo=Blanco

[ServicioPaquetes_OS.ClavePlanta]
Carpeta=ServicioPaquetes_OS
Clave=ClavePlanta
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=100
ColorFondo=Blanco














[Filtros.Info.Motor]
Carpeta=Filtros
Clave=Info.Motor
Editar=S
LineaNueva=N
ValidaNombre=S
3D=S
Tamano=20
ColorFondo=Blanco



[Filtros.ListaEnCaptura]
(Inicio)=Info.Articulo
Info.Articulo=Info.Modelo
Info.Modelo=Info.Cilindros
Info.Cilindros=Info.Transmision
Info.Transmision=Info.Motor
Info.Motor=(Fin)










[ServicioPaquetes_OS.Articulo]
Carpeta=ServicioPaquetes_OS
Clave=Articulo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco

[ServicioPaquetes_OS.Modelo]
Carpeta=ServicioPaquetes_OS
Clave=Modelo
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco

[ServicioPaquetes_OS.Cilindros]
Carpeta=ServicioPaquetes_OS
Clave=Cilindros
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco

[ServicioPaquetes_OS.Transmision]
Carpeta=ServicioPaquetes_OS
Clave=Transmision
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco

[ServicioPaquetes_OS.Motor]
Carpeta=ServicioPaquetes_OS
Clave=Motor
Editar=S
LineaNueva=S
ValidaNombre=S
3D=S
Tamano=50
ColorFondo=Blanco
























































































































[ServicioPaquetes_OS.ListaEnCaptura]
(Inicio)=Articulo
Articulo=Modelo
Modelo=Cilindros
Cilindros=Transmision
Transmision=Motor
Motor=DescripcionC
DescripcionC=DescripcionL
DescripcionL=TipoPaquete
TipoPaquete=Kilometraje
Kilometraje=ClavePlanta
ClavePlanta=(Fin)



[Forma.ListaCarpetas]
(Inicio)=Filtros
Filtros=ServicioPaquetes_OS
ServicioPaquetes_OS=(Fin)

[Forma.ListaAcciones]
(Inicio)=Aceptar
Aceptar=Cancelar
Cancelar=(Fin)
