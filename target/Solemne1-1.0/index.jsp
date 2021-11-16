<%-- 
    Document   : index
    Created on : 25-04-2021, 23:13:12
    Author     : Carlos Torres
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Formulario Solicitud Crédito Hipotecario</title>
        <script type="text/javascript" src="js/validaciones.js"></script>
        <link type="text/css" rel="stylesheet" href="css/estilos.css" media="screen" /></link>
    </head>
    <body>
        <form name="frmInteres" id="frmInteres" action="InteresControlador" method="POST">
            <table class="tablaExterna" border="0" cellspacing="0" cellpadding="5" align="center" width="650" height="350">
                <tr>
                    <td align="center">
                        <fieldset><legend>Calculo de Interés</legend>
                            <table class="table extBorder" align="center" cellpadding="2" cellspacing="1" border="0" widht="500">
                                <tr>
                                    <td align="right" class="tituloItem">
                                        Nombre del Cliente:
                                    </td>
                                    <td>
                                        <input type="text" id="txtCliente" name="txtCliente" maxlength="30" class="textosCajas" onclick="fnLimpiaErrores();" placeholder="Nombre">
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right" class="tituloItem">
                                        Edad del Cliente:
                                    </td>
                                    <td>
                                        <input type="text" id="txtEdad" name="txtEdad" maxlength="2" class="textosCajas" style="width: 30px;" tabindex="2" onclick="fnLimpiaErrores();" placeholder="18">
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right" class="tituloItem">
                                        Monto a Invertir:
                                    </td>
                                    <td>
                                        <input type="text" id="txtMonto" name="txtMonto" maxlength="6" class="textosCajas" style="width: 200px;" tabindex="3" onclick="fnLimpiaErrores();" placeholder="Ej: 50000">
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right" class="tituloItem">
                                        Cantidad de Años:
                                    </td>
                                    <td>
                                        <select name="lstAnos" id="lstAnos" class="textosSelect" style="width: 211px;" tabindex="4" onclick="fnLimpiaErrores();">
                                            <option value="">Seleccione</option>
                                            <option value="1">1 Año</option>
                                            <option value="2">2 Años</option>
                                            <option value="3">3 Años</option>
                                            <option value="4">4 Años</option>
                                            <option value="5">5 Años</option>
                                        </select>
                                    </td>
                                </tr>
                            </table>
                            <br>
                            <br>
                            <table border="0" cellspacing="0" cellpadding="0" align="center">
                                <tr>
                                    <td colspan="2" id="errores" class="textosNormal"></td>
                                </tr>
                            </table>
                            <tr>
                                <td align="center" colspan="2">
                                    <input type="button" name="btnValidar" id="btnValidar" value="Simular" class="boton" tabindex="5" onclick="fnValidaDatos();">/
                                    <input type="button" name="btnLimpiar" id="btnLimpiar" value="Limpiar" class="boton" tabindex="6" onclick="fnLimpiar();">
                                </td>
                            </tr>
                        </fieldset>
                    </td>
                </tr>
            </table>
        </form>
    </body>
</html>
