<%@ Page Title="" Language="C#" MasterPageFile="~/English.Master" AutoEventWireup="true" CodeBehind="Documentation.aspx.cs" Inherits="scheme_traductor.Documentation" %>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

     <link rel="stylesheet" href="sitestyles.css" />

<div class="main-content">
    <!-- Jumbotron -->
    <div class="jtron">
      <h2>welcome to the documentation for eschemántico!</h2>
    </div> 

    <!-- Sidebar -->
    <div class="sidebar">
      <ul class="nav flex-column">
        <li class="nav-item">
          <a class="sdbar nav-link" data-bs-toggle="collapse" href="#definitionsSubmenu" aria-expanded="true" 
                aria-controls="definitionsSubmenu"><strong>definitions</strong></a>
           <ul class="nav flex-column ms-3 collapse show" id="definitionsSubmenu">
            <li class="sdbar nav-item"><a class="nav-link" href="#"><strong>definir</strong> (define)</a></li>
            <li class="sdbar nav-item"><a class="nav-link" href="#"><strong>rastrear</strong> (trace)</a></li>
            <li class="sdbar nav-item"><a class="nav-link" href="#"><strong>rastrear-definir</strong> (trace-define)</a></li>
            <li class="sdbar nav-item"><a class="nav-link" href="#"><strong>sea</strong> (let)</a></li>
            <li class="sdbar nav-item"><a class="nav-link" href="#"><strong>sea*</strong> (let*)</a></li>
            <li class="sdbar nav-item"><a class="nav-link" href="#"><strong>¡establezca!</strong> (set!)</a></li>
            <li class="sdbar nav-item"><a class="nav-link" href="#"><strong>cita</strong> (quote)</a></li>
          </ul>
        </li>

        <li class="nav-item">
          <a class="nav-link" data-bs-toggle="collapse" href="#comparisonSubmenu" aria-expanded="true" 
                aria-controls="comparisonSubmenu"><strong>comparison</strong></a>
           <ul class="nav flex-column ms-3 collapse show" id="comparisonSubmenu">
            <li class="sdbar nav-item"><a class="nav-link" href="#"><strong>¿ig?</strong> (eq?)</a></li>
            <li class="sdbar nav-item"><a class="nav-link" href="#"><strong>¿igv?</strong> (eqv?)</a></li>
            <li class="sdbar nav-item"><a class="nav-link" href="#"><strong>¿igual?</strong> (equal?)</a></li>
          </ul>
        </li>

        <li class="nav-item">
          <a class="nav-link" data-bs-toggle="collapse" href="#conditionalsSubmenu" aria-expanded="true" 
                aria-controls="conditionalsSubmenu"><strong>conditionals</strong></a>
          <ul class="nav flex-column ms-3 collapse show" id="conditionalsSubmenu">
            <li class="sdbar nav-item"><a class="nav-link" href="#"><strong>cierto</strong> (true)</a></li>
            <li class="sdbar nav-item"><a class="nav-link" href="#"><strong>falso</strong> (false)</a></li>
            <li class="sdbar nav-item"><a class="nav-link" href="#"><strong>si</strong> (if)</a></li>
            <li class="sdbar nav-item"><a class="nav-link" href="#"><strong>sino</strong> (else)</a></li>
            <li class="sdbar nav-item"><a class="nav-link" href="#"><strong>y</strong> (and)</a></li>
            <li class="sdbar nav-item"><a class="nav-link" href="#"><strong>o</strong> (or)</a></li>
            <li class="sdbar nav-item"><a class="nav-link" href="#"><strong>condición</strong> (cond)</a></li>
            <li class="sdbar nav-item"><a class="nav-link" href="#"><strong>¿nulo?</strong> (null?)</a></li>
            <li class="sdbar nav-item"><a class="nav-link" href="#"><strong>¿falso?</strong> (false?)</a></li>
            <li class="sdbar nav-item"><a class="nav-link" href="#"><strong>¿cierto?</strong> (true?)</a></li>
            <li class="sdbar nav-item"><a class="nav-link" href="#"><strong>¿booleano?</strong> (boolean?)</a></li>
            <li class="sdbar nav-item"><a class="nav-link" href="#"><strong>¿inmutable?</strong> (immutable?)</a></li>
          </ul>
        </li>

        <li class="nav-item">
          <a class="nav-link" data-bs-toggle="collapse" href="#numericsSubmenu" aria-expanded="true" 
                aria-controls="numericsSubmenu"><strong>numerics</strong></a>
          <ul class="nav flex-column ms-3 collapse show" id="numericsSubmenu">
            <li class="sdbar nav-item"><a class="nav-link" href="#"><strong>más</strong> (+)</a></li>
            <li class="sdbar nav-item"><a class="nav-link" href="#"><strong>menos</strong> (-)</a></li>
            <li class="sdbar nav-item"><a class="nav-link" href="#"><strong>mult</strong> (*)</a></li>
            <li class="sdbar nav-item"><a class="nav-link" href="#"><strong>div</strong> (/)</a></li>
            <li class="sdbar nav-item"><a class="nav-link" href="#"><strong>¿número?</strong> (number?)</a></li>
            <li class="sdbar nav-item"><a class="nav-link" href="#"><strong>¿número-entero?</strong> (integer?)</a></li>
            <li class="sdbar nav-item"><a class="nav-link" href="#"><strong>¿cero?</strong> (zero?)</a></li>
            <li class="sdbar nav-item"><a class="nav-link" href="#"><strong>¿positivo?</strong> (positive?)</a></li>
            <li class="sdbar nav-item"><a class="nav-link" href="#"><strong>¿negativo?</strong> (negative?)</a></li>
            <li class="sdbar nav-item"><a class="nav-link" href="#"><strong>¿número-par?</strong> (even?)</a></li>
            <li class="sdbar nav-item"><a class="nav-link" href="#"><strong>¿número-impar?</strong> (odd?)</a></li>
            <li class="sdbar nav-item"><a class="nav-link" href="#"><strong>menos-de</strong> (<)</a></li>
            <li class="sdbar nav-item"><a class="nav-link" href="#"><strong>más-de</strong> (>)</a></li>
            <li class="sdbar nav-item"><a class="nav-link" href="#"><strong>raíz-cuadrada</strong> (sqrt)</a></li>
            <li class="sdbar nav-item"><a class="nav-link" href="#"><strong>expo</strong> (expt)</a></li>
            <li class="sdbar nav-item"><a class="nav-link" href="#"><strong>máx</strong> (max)</a></li>
            <li class="sdbar nav-item"><a class="nav-link" href="#"><strong>mín</strong> (min)</a></li>
            <li class="sdbar nav-item"><a class="nav-link" href="#"><strong>val-abso</strong> (abs)</a></li>
            <li class="sdbar nav-item"><a class="nav-link" href="#"><strong>cociente</strong> (quptient)</a></li>
            <li class="sdbar nav-item"><a class="nav-link" href="#"><strong>residuo</strong> (remainder)</a></li>
            <li class="sdbar nav-item"><a class="nav-link" href="#"><strong>cociente/residuo</strong> (quotient/remainder)</a></li>
            <li class="sdbar nav-item"><a class="nav-link" href="#"><strong>módulo</strong> (modulo)</a></li>
            <li class="sdbar nav-item"><a class="nav-link" href="#"><strong>redondear</strong> (round)</a></li>
            <li class="sdbar nav-item"><a class="nav-link" href="#"><strong>truncar</strong> (truncate)</a></li>
            <li class="sdbar nav-item"><a class="nav-link" href="#"><strong>signo</strong> (sgn)</a></li>
          </ul>
        </li>

          <li class="nav-item">
          <a class="nav-link" data-bs-toggle="collapse" href="#stringsSubmenu" aria-expanded="true" 
                aria-controls="stringsSubmenu"><strong>strings</strong></a>
          <ul class="nav flex-column ms-3 collapse show" id="stringsSubmenu">
            <li class="sdbar nav-item"><a class="nav-link" href="#"><strong>¿cadena?</strong> (string?)</a></li>
            <li class="sdbar nav-item"><a class="nav-link" href="#"><strong>longitud-de-cadena</strong> (string-length)</a></li>
            <li class="sdbar nav-item"><a class="nav-link" href="#"><strong>subcadena</strong> (substring)</a></li>
            <li class="sdbar nav-item"><a class="nav-link" href="#"><strong>concatenar-cadena</strong> (string-append)</a></li>
          </ul>
        </li>

        <li class="nav-item">
          <a class="nav-link" data-bs-toggle="collapse" href="#typesSubmenu" aria-expanded="true" 
                aria-controls="typesSubmenu"><strong>types</strong></a>
          <ul class="nav flex-column ms-3 collapse show" id="typesSubmenu">
            <li class="sdbar nav-item"><a class="nav-link" href="#"><strong>¿átomo?</strong> (atom?)</a></li>
            <li class="sdbar nav-item"><a class="nav-link" href="#"><strong>¿símbolo?</strong> (symbol?)</a></li>
            <li class="sdbar nav-item"><a class="nav-link" href="#"><strong>¿carácter?</strong> (char?)</a></li>
            <li class="sdbar nav-item"><a class="nav-link" href="#"><strong>¿booleano?</strong> (boolean?)</a></li>
            <li class="sdbar nav-item"><a class="nav-link" href="#"><strong>¿inmutable?</strong> (immutable?)</a></li>
          </ul>
        </li>

          <li class="nav-item">
          <a class="nav-link" data-bs-toggle="collapse" href="#listsSubmenu" aria-expanded="true" 
                aria-controls="listsSubmenu"><strong>lists</strong></a>
          <ul class="nav flex-column ms-3 collapse show" id="listsSubmenu">
            <li class="sdbar nav-item"><a class="nav-link" href="#"><strong>combinar</strong> (cons)</a></li>
            <li class="sdbar nav-item"><a class="nav-link" href="#"><strong>lista</strong> (list)</a></li>
            <li class="sdbar nav-item"><a class="nav-link" href="#"><strong>¿lista?</strong> (list?)</a></li>
            <li class="sdbar nav-item"><a class="nav-link" href="#"><strong>¿par?</strong> (pair?)</a></li>
            <li class="sdbar nav-item"><a class="nav-link" href="#"><strong>longitud</strong> (length)</a></li>
            <li class="sdbar nav-item"><a class="nav-link" href="#"><strong>concatenar</strong> (append)</a></li>
            <li class="sdbar nav-item"><a class="nav-link" href="#"><strong>pri</strong> (car)</a></li>
            <li class="sdbar nav-item"><a class="nav-link" href="#"><strong>prri</strong> (caar)</a></li>
            <li class="sdbar nav-item"><a class="nav-link" href="#"><strong>prrri</strong> (caaar)</a></li>
            <li class="sdbar nav-item"><a class="nav-link" href="#"><strong>prrrri</strong> (caaaar)</a></li>
            <li class="sdbar nav-item"><a class="nav-link" href="#"><strong>res</strong> (cdr)</a></li>
            <li class="sdbar nav-item"><a class="nav-link" href="#"><strong>ress</strong> (cddr)</a></li>
            <li class="sdbar nav-item"><a class="nav-link" href="#"><strong>resss</strong> (cdddr)</a></li>
            <li class="sdbar nav-item"><a class="nav-link" href="#"><strong>ressss</strong> (cddddr)</a></li>
            <li class="sdbar nav-item"><a class="nav-link" href="#"><strong>pres</strong> (cadr)</a></li>
            <li class="sdbar nav-item"><a class="nav-link" href="#"><strong>resp</strong> (cdar)</a></li>
          </ul>
        </li>

      </ul>
    </div>

    <!--Begin main content-->

    
    <h5>here you can find the syntax, examples, and descriptions of all of the definitions included in eschemántico!</h5>
      <hr>

   <div style="margin-left: 50px;">
      <p>keep in mind that in order to use the definitions provided in eschemántico!, you must have these two lines at the top of every program: </p>
        <p style="margin-bottom: -5px;"><strong>#lang scheme</strong></p>
        <p><strong>(require scheme-traductor/scheme-traductor)</strong></p>
    </div>

  </div>

</asp:Content>
