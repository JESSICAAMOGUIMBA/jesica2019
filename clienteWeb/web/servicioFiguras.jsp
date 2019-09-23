<%-- 
    Document   : servicioFiguras
    Created on : 12/07/2019, 18:07:34
    Author     : Usuario
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Perimetros Figuras</title>
    </head>
    <body>
        <h1>Perimetros de las Figuras Geometricas</h1>
        <form action="servicioFiguras.jsp" method="POST">
            <h2 for="txt_nombre">Perimetro del cuadrado: </h2>
            <label for="txt_nombre">Lado del cuadrado: </label>
            <input type="text" name="txt_num1" />
            <input type="submit" value="Enviar" name="Enviar" />
            <br>
            <h2 for="txt_nombre">Perimetro del rectangulo: </h2>
            <label for="txt_nombre">Base del rectangulo: </label>
            <input type="text" name="txt_numR" />
            <br>
            <br>
            <label for="txt_nombre">Altura del rectangulo: </label>
            <input type="text" name="txt_numR1" />
            <br>
            <br>
            <input type="submit" value="Enviar" name="Enviar" />
        </form>
    </body>
    
    <%!
    String lado;
    String base1;
    String altura1;
    %>
    
    <%
    lado=request.getParameter("txt_num1");
    base1=request.getParameter("txt_numR");
    altura1=request.getParameter("txt_numR1");
    %>
        <%-- start web service invocation --%>
    <%
    try {
	uddi.Figuras_Service service = new uddi.Figuras_Service();
	uddi.Figuras port = service.getFigurasPort();
	 // TODO initialize WS operation arguments here
	double ladoCuadrado = Double.parseDouble(lado);
	// TODO process result here
	double result = port.cuadrado(ladoCuadrado);
	out.println("Result = "+result);
    } catch (Exception ex) {
	// TODO handle custom exceptions here
    }
    %>
    <%-- end web service invocation --%>
    <%-- start web service invocation --%><hr/>
    <%
    try {
	uddi.Figuras_Service service = new uddi.Figuras_Service();
	uddi.Figuras port = service.getFigurasPort();
	 // TODO initialize WS operation arguments here
	double base = Double.parseDouble(base1);
	double altura = Double.parseDouble(altura1);
	// TODO process result here
	double result = port.rectangulo(base, altura);
	out.println("Result = "+result);
    } catch (Exception ex) {
	// TODO handle custom exceptions here
    }
    %>
    <%-- end web service invocation --%><hr/>

</html>
