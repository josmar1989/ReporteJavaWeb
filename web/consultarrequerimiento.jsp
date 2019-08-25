<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.util.Iterator"%>
<%@page import="Model.Requerimiento"%>
<%@page import="java.util.List"%>
<%@page import="DAOmodel.DAORequerimiento"%>
<%ResultSet resultadogerencia = null;%>
<%ResultSet resultadodepto = null;%>
<%ResultSet resultadoasignacion = null;%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="css/style.css">     
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">         
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Consultar Requerimientos</title>
    </head>
    <body>
        <%
            try {
                Connection gerencia
                        = DriverManager.getConnection("jdbc:mysql://localhost/requerimiento?user=admin&password=admin");
                Statement statement = gerencia.createStatement();
                resultadogerencia = statement.executeQuery("select * from gerencia");
            } catch (Exception e) {
                out.println("wrong entry" + e);
            }
        %>

        <%
            try {
                Connection depto
                        = DriverManager.getConnection("jdbc:mysql://localhost/requerimiento?user=admin&password=admin");
                Statement statement = depto.createStatement();
                resultadodepto = statement.executeQuery("select * from depto");
            } catch (Exception e) {
                out.println("wrong entry" + e);
            }
        %>

        <%
            try {
                Connection asignacion
                        = DriverManager.getConnection("jdbc:mysql://localhost/requerimiento?user=admin&password=admin");
                Statement statement = asignacion.createStatement();
                resultadoasignacion = statement.executeQuery("select * from unidad");
            } catch (Exception e) {
                out.println("wrong entry" + e);
            }
        %> 

        <div class="container">
            <div class="col-lg-6">
                <center>                
                    <h2>Consultar Requerimientos</h2>
                    <form action="agregar">
                        <table align="center" border="0"width="700">
                            <tr valign="top">
                                <td width="200">
                                    Gerencia:
                                <td>
                                    <select class="select-css2">
                                        <%  while (resultadogerencia.next()) {%>
                                        <option><%= resultadogerencia.getString(2)%></option>
                                        <% } %>
                                    </select>
                                </td>
                            </tr>
                            <tr valign="top">
                                <td>
                                    Depto.:
                                <td>
                                    <select class="select-css2">
                                        <%  while (resultadodepto.next()) {%>
                                        <option><%= resultadodepto.getString(2)%></option>
                                        <% } %>
                                    </select>
                            </tr>
                            <tr valign="top">
                                <td>
                                    Asignacion:
                                <td>
                                    <select class="select-css2">
                                        <%  while (resultadoasignacion.next()) {%>
                                        <option><%= resultadoasignacion.getString(2)%></option>
                                        <% } %>
                                    </select>
                                </td>
                                <td valign="bottom">
                                    <input placeholder="Buscar..."></input>
                                </td>
                            </tr>
                    </form>
            </div>
        </table>

<br>

        <table cellspacing="1" cellpadding="10" bgcolor="black">
            <tr bgcolor="f1f1f1">
                <td>Id</td>
                <td>Detalle</td>
                <td>Estado</td>
                <td>Gerencia</td>
                <td>Depto</td>
                <td>Responsable</td>
                <td>Usuario</td>
            </tr>
            <%
                DAORequerimiento dao = new DAORequerimiento();
                List<Requerimiento> list = dao.listar();
                Iterator<Requerimiento> iter = list.iterator();
                Requerimiento req = null;
                while (iter.hasNext()) {
                    req = iter.next();

            %>
            <tr bgcolor="f2f2f2">
                <td><%= req.getId()%></td>
                <td><%= req.getDetalle()%></td>
                <td><%= req.getEstado()%></td>
                <td><%= req.getIdGerencia()%></td>
                <td><%= req.getIdDepto()%></td>
                <td><%= req.getIdResponsable()%></td>
                <td><%= req.getIdUsuario()%></td>
            </tr>
            <%}%>
        </table>
        <br>
        <input type="button" value="Volver al Menú" onclick="location.href = 'menuprincipal.jsp'">


        </body>
        </html>
