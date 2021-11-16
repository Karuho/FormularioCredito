<%-- 
    Document   : resultado
    Created on : 25-04-2021, 23:14:31
    Author     : Carlos Torres
--%>

<%@page import="modelo.InteresModelo"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<% InteresModelo calculadoraInteres = (InteresModelo) request.getAttribute("calculadoraIntereses");
    if (calculadoraInteres.getNombreCliente() == "") {
        request.getRequestDispatcher("index.jsp").forward(request, response);
    }
%>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Formulario Solicitud Crédito Hipotecario</title>
        <script type="text/javascript" src="js/validaciones.js"></script>
        <link type="text/css" rel="stylesheet" href="css/estilos.css" media="screen" /></link>
    </head>
    <body>
        <form name="frmInteres" id="frmInteres">
            <table border="0" cellspacing="1" cellpadding="2" width="650" align="center">
                <tr>
                    <td align="center">
                        <fieldset><legend>Resultado Inversión</legend>
                            <table align="center" cellpadding="2" cellspacing="1" border="0" widht="500">
                                <tr>
                                    <td align="center" colspan="2">
                                        <img src="imagenes/interes.jpg" class="imagenCentral">
                                    </td>
                                </tr>
                                <tr>
                                    <td align="center" colspan="2" style="text-align: center;" class="textosNormal">
                                        <h3><b>Estimado</b> <%= calculadoraInteres.getNombreCliente()%></h3>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="center" colspan="2" style="text-align: justify;padding-top: 5px; padding-bottom: 5px; padding-left: 10px; padding-right: 10px;" class="textosNormal">
                                        Su inversi&oacute;n de $ <%= calculadoraInteres.getMontoInvertir()%>, depositado a <%= calculadoraInteres.getAnosSolicitud()%> a&ntilde;o/s, en base a una tasa del 1.5%, ha producido un inter&eacute;s de <%= calculadoraInteres.getCalculoInteres()%>, lo cual le ha dejado una ganacia final de: $ <%= calculadoraInteres.getResultadoFinal()%>.
                                    </td>
                                </tr>
                                <tr>
                                    <td align="center" colspan="2" style="padding-top: 10px; padding-bottom: 10px; padding-left: 10px; padding-right: 10px;">
                                        <input type="button" name="btnVolver" id="btnVolver" value="Volver" class="botonCancelar" tabindex="1" onclick="window.location.href = 'index.jsp';">
                                    </td>
                                </tr>
                            </table>
                        </fieldset>
                    </td>
                </tr>
            </table>
        </form>
    </body>
</html>
