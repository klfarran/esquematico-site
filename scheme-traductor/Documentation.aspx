<%@ Page Title="" Language="C#" MasterPageFile="~/English.Master" AutoEventWireup="true" CodeBehind="Documentation.aspx.cs" Inherits="scheme_traductor.Documentation" %>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

     <link rel="stylesheet" href="sitestyles.css" />

     <!-- Sidebar -->
    <div class="sidebar">
      <ul class="nav flex-column">
        <li class="nav-item">
            <div class="dropdown">
              <a class="sdbar triangle nav-link" data-bs-toggle="collapse" href="#definitionsSubmenu" aria-expanded="false" 
                aria-controls="definitionsSubmenu"> ▼ </a>
             <a class="sdbar nav-link" runat="server">definitions</a>
            </div>
           <ul class="nav flex-column ms-3 collapse" id="definitionsSubmenu">
            <li class="sdbar nav-item"><a class="nav-link" runat="server"><strong>definir</strong> (define)</a></li>
            <li class="sdbar nav-item"><a class="nav-link" runat="server"><strong>rastrear</strong> (trace)</a></li>
            <li class="sdbar nav-item"><a class="nav-link" runat="server"><strong>rastrear-definir</strong> (trace-define)</a></li>
            <li class="sdbar nav-item"><a class="nav-link" runat="server"><strong>sea</strong> (let)</a></li>
            <li class="sdbar nav-item"><a class="nav-link" runat="server"><strong>sea*</strong> (let*)</a></li>
            <li class="sdbar nav-item"><a class="nav-link" runat="server"><strong>¡establezca!</strong> (set!)</a></li>
          </ul>
        </li>

        <li class="nav-item">
            <div class="dropdown">
              <a class="sdbar triangle nav-link" data-bs-toggle="collapse" href="#comparisonSubmenu" aria-expanded="false" 
                aria-controls="comparisonsSubmenu"> ▼ </a>
             <a class="sdbar nav-link" runat="server">comparison</a>
            </div>
           <ul class="nav flex-column ms-3 collapse" id="comparisonSubmenu">
            <li class="sdbar nav-item"><a class="nav-link" runat="server" ><strong>¿ig?</strong> (eq?)</a></li>
            <li class="sdbar nav-item"><a class="nav-link" runat="server" ><strong>¿igv?</strong> (eqv?)</a></li>
            <li class="sdbar nav-item"><a class="nav-link" runat="server" ><strong>¿igual?</strong> (equal?)</a></li>
          </ul>
        </li>

        <li class="nav-item">
            <div class="dropdown">
              <a class="sdbar triangle nav-link" data-bs-toggle="collapse" href="#conditionalsSubmenu" aria-expanded="false" 
                aria-controls="conditionalsSubmenu"> ▼ </a>
             <a class="sdbar nav-link" runat="server">conditionals</a>
            </div>
          <ul class="nav flex-column ms-3 collapse" id="conditionalsSubmenu">
            <li class="sdbar nav-item"><a class="nav-link" runat="server" ><strong>cierto</strong> (true)</a></li>
            <li class="sdbar nav-item"><a class="nav-link" runat="server" ><strong>falso</strong> (false)</a></li>
            <li class="sdbar nav-item"><a class="nav-link" runat="server" ><strong>si</strong> (if)</a></li>
            <li class="sdbar nav-item"><a class="nav-link" runat="server" ><strong>sino</strong> (else)</a></li>
            <li class="sdbar nav-item"><a class="nav-link" runat="server" ><strong>y</strong> (and)</a></li>
            <li class="sdbar nav-item"><a class="nav-link" runat="server" ><strong>o</strong> (or)</a></li>
            <li class="sdbar nav-item"><a class="nav-link" runat="server" ><strong>condición</strong> (cond)</a></li>
            <li class="sdbar nav-item"><a class="nav-link" runat="server" ><strong>¿falso?</strong> (false?)</a></li>
            <li class="sdbar nav-item"><a class="nav-link" runat="server" ><strong>¿cierto?</strong> (true?)</a></li>
            <li class="sdbar nav-item"><a class="nav-link" runat="server" ><strong>¿booleano?</strong> (boolean?)</a></li>
            <li class="sdbar nav-item"><a class="nav-link" runat="server" ><strong>¿inmutable?</strong> (immutable?)</a></li>
          </ul>
        </li>

        <li class="nav-item">
            <div class="dropdown">
              <a class="sdbar triangle nav-link" data-bs-toggle="collapse" href="#numericsSubmenu" aria-expanded="false" 
                aria-controls="numericsSubmenu"> ▼ </a>
             <a class="sdbar nav-link" runat="server">numerics</a>
            </div>
          <ul class="nav flex-column ms-3 collapse" id="numericsSubmenu">
            <li class="sdbar nav-item"><a class="nav-link" runat="server" ><strong>más</strong> (+)</a></li>
            <li class="sdbar nav-item"><a class="nav-link" runat="server" ><strong>menos</strong> (-)</a></li>
            <li class="sdbar nav-item"><a class="nav-link" runat="server" ><strong>mult</strong> (*)</a></li>
            <li class="sdbar nav-item"><a class="nav-link" runat="server" ><strong>div</strong> (/)</a></li>
            <li class="sdbar nav-item"><a class="nav-link" runat="server" ><strong>¿número?</strong> (number?)</a></li>
            <li class="sdbar nav-item"><a class="nav-link" runat="server" ><strong>¿número-entero?</strong> (integer?)</a></li>
            <li class="sdbar nav-item"><a class="nav-link" runat="server" ><strong>¿cero?</strong> (zero?)</a></li>
            <li class="sdbar nav-item"><a class="nav-link" runat="server" ><strong>¿positivo?</strong> (positive?)</a></li>
            <li class="sdbar nav-item"><a class="nav-link" runat="server" ><strong>¿negativo?</strong> (negative?)</a></li>
            <li class="sdbar nav-item"><a class="nav-link" runat="server" ><strong>¿número-par?</strong> (even?)</a></li>
            <li class="sdbar nav-item"><a class="nav-link" runat="server" ><strong>¿número-impar?</strong> (odd?)</a></li>
            <li class="sdbar nav-item"><a class="nav-link" runat="server" ><strong>menos-de</strong> (<)</a></li>
            <li class="sdbar nav-item"><a class="nav-link" runat="server" ><strong>más-de</strong> (>)</a></li>
            <li class="sdbar nav-item"><a class="nav-link" runat="server" ><strong>raíz-cuadrada</strong> (sqrt)</a></li>
            <li class="sdbar nav-item"><a class="nav-link" runat="server" ><strong>expo</strong> (expt)</a></li>
            <li class="sdbar nav-item"><a class="nav-link" runat="server" ><strong>máx</strong> (max)</a></li>
            <li class="sdbar nav-item"><a class="nav-link" runat="server" ><strong>mín</strong> (min)</a></li>
            <li class="sdbar nav-item"><a class="nav-link" runat="server" ><strong>val-abso</strong> (abs)</a></li>
            <li class="sdbar nav-item"><a class="nav-link" runat="server" ><strong>cociente</strong> (quptient)</a></li>
            <li class="sdbar nav-item"><a class="nav-link" runat="server" ><strong>residuo</strong> (remainder)</a></li>
            <li class="sdbar nav-item"><a class="nav-link" runat="server" ><strong>cociente/residuo</strong> (quotient/remainder)</a></li>
            <li class="sdbar nav-item"><a class="nav-link" runat="server" ><strong>módulo</strong> (modulo)</a></li>
            <li class="sdbar nav-item"><a class="nav-link" runat="server" ><strong>redondear</strong> (round)</a></li>
            <li class="sdbar nav-item"><a class="nav-link" runat="server" ><strong>truncar</strong> (truncate)</a></li>
            <li class="sdbar nav-item"><a class="nav-link" runat="server" ><strong>signo</strong> (sgn)</a></li>
          </ul>
        </li>

          <li class="nav-item">
            <div class="dropdown">
              <a class="sdbar triangle nav-link" data-bs-toggle="collapse" href="#stringsSubmenu" aria-expanded="false" 
                aria-controls="stringsSubmenu"> ▼ </a>
             <a class="sdbar nav-link" runat="server">strings</a>
            </div>
          <ul class="nav flex-column ms-3 collapse" id="stringsSubmenu">
            <li class="sdbar nav-item"><a class="nav-link" runat="server" ><strong>¿cadena?</strong> (string?)</a></li>
            <li class="sdbar nav-item"><a class="nav-link" runat="server" ><strong>longitud-de-cadena</strong> (string-length)</a></li>
            <li class="sdbar nav-item"><a class="nav-link" runat="server" ><strong>subcadena</strong> (substring)</a></li>
            <li class="sdbar nav-item"><a class="nav-link" runat="server" ><strong>concatenar-cadena</strong> (string-append)</a></li>
          </ul>
        </li>

        <li class="nav-item">
            <div class="dropdown">
              <a class="sdbar triangle nav-link" data-bs-toggle="collapse" href="#typesSubmenu" aria-expanded="false" 
                aria-controls="typesSubmenu"> ▼ </a>
             <a class="sdbar nav-link" runat="server">types</a>
            </div>
          <ul class="nav flex-column ms-3 collapse" id="typesSubmenu">
            <li class="sdbar nav-item"><a class="nav-link" runat="server" ><strong>¿átomo?</strong> (atom?)</a></li>
            <li class="sdbar nav-item"><a class="nav-link" runat="server" ><strong>¿símbolo?</strong> (symbol?)</a></li>
            <li class="sdbar nav-item"><a class="nav-link" runat="server" ><strong>¿carácter?</strong> (char?)</a></li>
            <li class="sdbar nav-item"><a class="nav-link" runat="server" ><strong>¿booleano?</strong> (boolean?)</a></li>
            <li class="sdbar nav-item"><a class="nav-link" runat="server" ><strong>¿inmutable?</strong> (immutable?)</a></li>
          </ul>
        </li>

          <li class="nav-item">
             <div class="dropdown">
              <a class="sdbar triangle nav-link" data-bs-toggle="collapse" href="#listsSubmenu" aria-expanded="false" 
                aria-controls="listsSubmenu"> ▼ </a>
             <a class="sdbar nav-link" runat="server">lists</a>
            </div>
          <ul class="nav flex-column ms-3 collapse" id="listsSubmenu">
            <li class="sdbar nav-item"><a class="nav-link" runat="server" ><strong>combinar</strong> (cons)</a></li>
            <li class="sdbar nav-item"><a class="nav-link" runat="server" ><strong>lista</strong> (list)</a></li>
            <li class="sdbar nav-item"><a class="nav-link" runat="server" ><strong>¿lista?</strong> (list?)</a></li>
            <li class="sdbar nav-item"><a class="nav-link" runat="server" ><strong>¿par?</strong> (pair?)</a></li>
            <li class="sdbar nav-item"><a class="nav-link" runat="server" ><strong>¿nulo?</strong> (null?)</a></li>
            <li class="sdbar nav-item"><a class="nav-link" runat="server" ><strong>longitud</strong> (length)</a></li>
            <li class="sdbar nav-item"><a class="nav-link" runat="server" ><strong>concatenar</strong> (append)</a></li>
            <li class="sdbar nav-item"><a class="nav-link" runat="server" ><strong>pri</strong> (car)</a></li>
            <li class="sdbar nav-item"><a class="nav-link" runat="server" ><strong>prri</strong> (caar)</a></li>
            <li class="sdbar nav-item"><a class="nav-link" runat="server" ><strong>prrri</strong> (caaar)</a></li>
            <li class="sdbar nav-item"><a class="nav-link" runat="server" ><strong>prrrri</strong> (caaaar)</a></li>
            <li class="sdbar nav-item"><a class="nav-link" runat="server" ><strong>res</strong> (cdr)</a></li>
            <li class="sdbar nav-item"><a class="nav-link" runat="server" ><strong>ress</strong> (cddr)</a></li>
            <li class="sdbar nav-item"><a class="nav-link" runat="server" ><strong>resss</strong> (cdddr)</a></li>
            <li class="sdbar nav-item"><a class="nav-link" runat="server" ><strong>ressss</strong> (cddddr)</a></li>
            <li class="sdbar nav-item"><a class="nav-link" runat="server" ><strong>pres</strong> (cadr)</a></li>
            <li class="sdbar nav-item"><a class="nav-link" runat="server" ><strong>resp</strong> (cdar)</a></li>
          </ul>
        </li>

      </ul>
    </div>
      

<div class="main-content">
    <!-- Jumbotron -->
    <div class="jtron">
      <h2>welcome to the documentation for esquemático!</h2>
    </div> 
    
    <h5>here you can view all definitions included in esquemático along with their translations</h5>
      <hr>

      <p>to view the translation for a definition, expand the sidebar to the left</p>
      <p>keep in mind that in order to use the spanish definitions provided in <i>esquemático!</i>, you must have these two lines at the top of every program: </p>
        <pre><code class="language-scheme">
  #lang scheme
  (require scheme-traductor/scheme-traductor) 
    </code></pre>



</asp:Content>
