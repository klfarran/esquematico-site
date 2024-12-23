<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Español.Master" AutoEventWireup="true" CodeBehind="Documentación.aspx.cs" Inherits="scheme_traductor.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    
     <link rel="stylesheet" href="sitestyles.css" />

<div class="main-content">
    <!-- Jumbotron -->
    <div class="jtron">
      <h2>bienvenidos a la documentación de eschemántico!</h2>
    </div> 

    <!-- Sidebar -->
    <div class="sidebar">
      <ul class="nav flex-column">
        <li class="nav-item">
          <a class="sdbar nav-link" data-bs-toggle="collapse" href="#definitionsSubmenu" aria-expanded="true" 
                aria-controls="definitionsSubmenu">definiciones</a>
           <ul class="nav flex-column ms-3 collapse show" id="definitionsSubmenu">
            <li class="sdbar nav-item"><a class="nav-link" href="#">definir</a></li>
            <li class="sdbar nav-item"><a class="nav-link" href="#">rastrear</a></li>
            <li class="sdbar nav-item"><a class="nav-link" href="#">rastrear-definir</a></li>
            <li class="sdbar nav-item"><a class="nav-link" href="#">sea</a></li>
            <li class="sdbar nav-item"><a class="nav-link" href="#">sea*</a></li>
            <li class="sdbar nav-item"><a class="nav-link" href="#">¡establezca!</a></li>
            <li class="sdbar nav-item"><a class="nav-link" href="#">cita</a></li>
          </ul>
        </li>

        <li class="nav-item">
          <a class="nav-link" data-bs-toggle="collapse" href="#comparisonSubmenu" aria-expanded="true" 
                aria-controls="comparisonSubmenu">comparación e igualdad</a>
           <ul class="nav flex-column ms-3 collapse show" id="comparisonSubmenu">
            <li class="sdbar nav-item"><a class="nav-link" href="#">¿ig?</a></li>
            <li class="sdbar nav-item"><a class="nav-link" href="#">¿igv?</a></li>
            <li class="sdbar nav-item"><a class="nav-link" href="#">¿igual?</a></li>
          </ul>
        </li>

        <li class="nav-item">
          <a class="nav-link" data-bs-toggle="collapse" href="#conditionalsSubmenu" aria-expanded="true" 
                aria-controls="conditionalsSubmenu">potenciales</a>
          <ul class="nav flex-column ms-3 collapse show" id="conditionalsSubmenu">
            <li class="sdbar nav-item"><a class="nav-link" href="#">cierto</a></li>
            <li class="sdbar nav-item"><a class="nav-link" href="#">falso</a></li>
            <li class="sdbar nav-item"><a class="nav-link" href="#">si</a></li>
            <li class="sdbar nav-item"><a class="nav-link" href="#">sino</a></li>
            <li class="sdbar nav-item"><a class="nav-link" href="#">y</a></li>
            <li class="sdbar nav-item"><a class="nav-link" href="#">o</a></li>
            <li class="sdbar nav-item"><a class="nav-link" href="#">condición</a></li>
            <li class="sdbar nav-item"><a class="nav-link" href="#">¿nulo?</a></li>
            <li class="sdbar nav-item"><a class="nav-link" href="#">¿falso?</a></li>
            <li class="sdbar nav-item"><a class="nav-link" href="#">¿cierto?</a></li>
            <li class="sdbar nav-item"><a class="nav-link" href="#">¿booleano?</a></li>
            <li class="sdbar nav-item"><a class="nav-link" href="#">¿inmutable?</a></li>
          </ul>
        </li>

        <li class="nav-item">
          <a class="nav-link" data-bs-toggle="collapse" href="#numericsSubmenu" aria-expanded="true" 
                aria-controls="numericsSubmenu">aritmética</a>
          <ul class="nav flex-column ms-3 collapse show" id="numericsSubmenu">
            <li class="sdbar nav-item"><a class="nav-link" href="#">más</a></li>
            <li class="sdbar nav-item"><a class="nav-link" href="#">menos</a></li>
            <li class="sdbar nav-item"><a class="nav-link" href="#">mult</a></li>
            <li class="sdbar nav-item"><a class="nav-link" href="#">div</a></li>
            <li class="sdbar nav-item"><a class="nav-link" href="#">¿número?</a></li>
            <li class="sdbar nav-item"><a class="nav-link" href="#">¿número-entero?</a></li>
            <li class="sdbar nav-item"><a class="nav-link" href="#">¿cero?</a></li>
            <li class="sdbar nav-item"><a class="nav-link" href="#">¿positivo?</a></li>
            <li class="sdbar nav-item"><a class="nav-link" href="#">¿negativo?</a></li>
            <li class="sdbar nav-item"><a class="nav-link" href="#">¿número-par?</a></li>
            <li class="sdbar nav-item"><a class="nav-link" href="#">¿número-impar?</a></li>
            <li class="sdbar nav-item"><a class="nav-link" href="#">menos-de</a></li>
            <li class="sdbar nav-item"><a class="nav-link" href="#">más-de</a></li>
            <li class="sdbar nav-item"><a class="nav-link" href="#">raíz-cuadrada</a></li>
            <li class="sdbar nav-item"><a class="nav-link" href="#">expo</a></li>
            <li class="sdbar nav-item"><a class="nav-link" href="#">máx</a></li>
            <li class="sdbar nav-item"><a class="nav-link" href="#">mín</a></li>
            <li class="sdbar nav-item"><a class="nav-link" href="#">val-abso</a></li>
            <li class="sdbar nav-item"><a class="nav-link" href="#">cociente</a></li>
            <li class="sdbar nav-item"><a class="nav-link" href="#">residuo</a></li>
            <li class="sdbar nav-item"><a class="nav-link" href="#">cociente/residuo</a></li>
            <li class="sdbar nav-item"><a class="nav-link" href="#">módulo</a></li>
            <li class="sdbar nav-item"><a class="nav-link" href="#">redondear</a></li>
            <li class="sdbar nav-item"><a class="nav-link" href="#">truncar</a></li>
            <li class="sdbar nav-item"><a class="nav-link" href="#">signo</a></li>
          </ul>
        </li>

          <li class="nav-item">
          <a class="nav-link" data-bs-toggle="collapse" href="#stringsSubmenu" aria-expanded="true" 
                aria-controls="stringsSubmenu">cadenas</a>
          <ul class="nav flex-column ms-3 collapse show" id="stringsSubmenu">
            <li class="sdbar nav-item"><a class="nav-link" href="#">¿cadena?</a></li>
            <li class="sdbar nav-item"><a class="nav-link" href="#">longitud-de-cadena</a></li>
            <li class="sdbar nav-item"><a class="nav-link" href="#">subcadena</a></li>
            <li class="sdbar nav-item"><a class="nav-link" href="#">concatenar-cadena</a></li>
          </ul>
        </li>

        <li class="nav-item">
          <a class="nav-link" data-bs-toggle="collapse" href="#typesSubmenu" aria-expanded="true" 
                aria-controls="typesSubmenu">tipos</a>
          <ul class="nav flex-column ms-3 collapse show" id="typesSubmenu">
            <li class="sdbar nav-item"><a class="nav-link" href="#">¿átomo?</a></li>
            <li class="sdbar nav-item"><a class="nav-link" href="#">¿símbolo?</a></li>
            <li class="sdbar nav-item"><a class="nav-link" href="#">¿carácter?</a></li>
            <li class="sdbar nav-item"><a class="nav-link" href="#">¿booleano?</a></li>
            <li class="sdbar nav-item"><a class="nav-link" href="#">¿inmutable?</a></li>
          </ul>
        </li>

          <li class="nav-item">
          <a class="nav-link" data-bs-toggle="collapse" href="#listsSubmenu" aria-expanded="true" 
                aria-controls="listsSubmenu">listas</a>
          <ul class="nav flex-column ms-3 collapse show" id="listsSubmenu">
            <li class="sdbar nav-item"><a class="nav-link" href="#">combinar</a></li>
            <li class="sdbar nav-item"><a class="nav-link" href="#">lista</a></li>
            <li class="sdbar nav-item"><a class="nav-link" href="#">¿lista?</a></li>
            <li class="sdbar nav-item"><a class="nav-link" href="#">¿par?</a></li>
            <li class="sdbar nav-item"><a class="nav-link" href="#">longitud</a></li>
            <li class="sdbar nav-item"><a class="nav-link" href="#">concatenar</a></li>
            <li class="sdbar nav-item"><a class="nav-link" href="#">pri</a></li>
            <li class="sdbar nav-item"><a class="nav-link" href="#">prri</a></li>
            <li class="sdbar nav-item"><a class="nav-link" href="#">prrri</a></li>
            <li class="sdbar nav-item"><a class="nav-link" href="#">prrrri</a></li>
            <li class="sdbar nav-item"><a class="nav-link" href="#">res</a></li>
            <li class="sdbar nav-item"><a class="nav-link" href="#">ress</a></li>
            <li class="sdbar nav-item"><a class="nav-link" href="#">resss</a></li>
            <li class="sdbar nav-item"><a class="nav-link" href="#">ressss</a></li>
            <li class="sdbar nav-item"><a class="nav-link" href="#">pres</a></li>
            <li class="sdbar nav-item"><a class="nav-link" href="#">resp</a></li>
          </ul>
        </li>

      </ul>
    </div>

    <!--Begin main content-->

    <h5>aquí puede encontrar la sintaxis, ejemplos, y descripciones de todas las definiciones incluidas en eschemántico!</h5>
      <hr>

    <div style="margin-left: 50px;">
      <p>tenga en cuenta que para poder utilizar las definiciones proporcionadas en eschemántico!, es obligatorio que tenga estas dos líneas en la parte superior de cada programa: </p>
        <p style="margin-bottom: -5px;"><strong>#lang scheme</strong></p>
        <p><strong>(require scheme-traductor/scheme-traductor)</strong></p>
    </div>

  </div>
</asp:Content>
