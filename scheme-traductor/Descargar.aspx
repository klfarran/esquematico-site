<%@ Page Title="About" Language="C#" MasterPageFile="~/Español.Master" AutoEventWireup="true" CodeBehind="Descargar.aspx.cs" Inherits="scheme_traductor.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

        <link rel="stylesheet" href="sitestyles.css" />

<div class="main-content">
    <div class="jumbotron">
        <h3 style="font-weight:600">descargar esquemático</h3>
    </div>
<!--
    <pre style="font-size:18px">
        
        por el momento, por favor consulte las instrucciones para la instalación manual <a class="link" href="https://github.com/klfarran/scheme-traductor.git">aquí</a> en el repositorio de GitHub de esquemático
 </pre>
    -->
    <pre style="font-size:18px">

 <span style="font-size:22px; font-weight:600">Instrucciones de instalación para el sistema operativo Windows</span>

         Navega a <a class="link" href="https://download.racket-lang.org">Descargar Dr Racket</a>
                 - En el menú desplegable 'Platform', selecciona la versión de Windows adecuada para tu computadora
                 - Haz clic en el botón "racket-...exe"
                 - Ejecuta el archivo "racket....exe"

         Descarga la carpeta <i>esquematico</i> de la rama 'main' de este repositorio
                 - Copia la carpeta <i>esquematico</i> en la carpeta <i>Racket/collects</i>
                 - Suponiendo que la unidad C: sea la unidad principal de tu computadora, generalmente se encuentra en 
                      <i>C:\Archivos de programa\Racket</i>

         Elimina la carpeta 'Racket' ubicada en <i>C:\Usuarios\*nombre de usuario*\AppData\Roaming\Racket </i>
                 - Crea una carpeta nueva llamada 'Racket' dentro de la carpeta <i>C:\Usuarios\*nombre de usuario*\AppData\Roaming</i>
                 - Descarga el archivo <i>racket-prefs.rktd</i> de la rama 'main' de este repositorio
                 - Pon el archivo <i>racket-prefs.rktd</i> dentro de la carpeta 'Racket' que creaste
 
         Abre Dr Racket, haz clic en <i>Run</i> en la esquina superior derecha, ¡y ya está!
                 - Ten en cuenta que todos los archivos deben comenzar (automáticamente) con las siguientes dos líneas para usar <i>esquemático</i> </pre>

      <pre><code class="language-scheme">
    #lang scheme
    (require esquematico/base)
      </code></pre>

    <pre style="font-size:18px">

 <span style="font-size:22px; font-weight:600">Instrucciones de instalación para el sistema operativo Mac</span>

         Navega a <a class="link" href="https://download.racket-lang.org">Descargar Dr Racket</a>
                  - En el menú desplegable 'Platform', selecciona la versión de MacOS adecuada para tu computadora
                  - Haz clic en el botón “racket-...dmg”
                  - En el cuadro de diálogo de abrir/guardar que aparece, elige guardar el archivo "racket-...dmg"
                  - Haz doble clic en el archivo de imagen de disco racket....dmg que guardaste
                  - Desde la carpeta del disco que se abre, arrastra la carpeta Racket vXXXX (donde XXXX es el número de la versión actual 
                        de DrRacket) a la carpeta <i>Aplicaciones</i>
 
        Descarga la carpeta <i>esquematico</i> de la rama 'main' de este repositorio
                  - Copia la carpeta <i>esquematico</i> en la carpeta Racket/collects
                  - La carpeta <i>collects</i> deber estar ubicada en <i>disco duro</i>/Aplicaciones/Racket vXXXX, donde XXXX es el número de la versión
                        actual de Dr Racket

        Abre la aplicación <i>Terminal</i> y asegúrate de que toda la jerarquía /Applications/Racket vXXXX/collects sea legible y ejecutable por 
        todos, pero no escribible por todos, ejecutando el comando:
              - chmod -R go+rx-w /Applications/Racket\ vXXXX/collects
 
        Si existen, elimina los archivos:
              - <i>disco duro</i>/Usuarios/<i>nombre de usuario</i>/Biblioteca/Preferencias/org.plt-scheme.DrScheme.plist
              - <i>disco duro</i>/Usuarios/<i>nombre de usuario</i>/Biblioteca/Preferencias/org.plt-scheme.prefs.ss
              - <i>disco duro</i>/Usuarios/<i>nombre de usuario</i>/Biblioteca/Preferencias/org.racket-lang.DrRacket.plist
              - <i>disco duro</i>/Usuarios/<i>nombre de usuario</i>/Biblioteca/Preferencias/org.racket-lang.prefs.rktd
              - <i>disco duro</i>/Usuarios/<i>nombre de usuario</i>/Biblioteca/Preferencias/PLT-autosave-toc
              - <i>disco duro</i>/Usuarios/<i>nombre de usuario</i>/Biblioteca/Preferencias/PLT-autosave-toc-save
              - <i>disco duro</i>/Usuarios/<i>nombre de usuario</i>/Biblioteca/Preferencias/PLT-autosave-toc.rktd
              - <i>disco duro</i>/Usuarios/<i>nombre de usuario</i>/Biblioteca/Preferencias/PLT-autosave-toc-save.rktd
 
        Descarga el archivo <i>org.racket-lang.prefs.rktd</i> de la rama 'main' de este repositorio
               - Copia el archivo <i>org.racket-lang.prefs.rktd</i> en la carpeta <i>disco duro</i>/Usuarios/<i>nombre de usuario</i>/Biblioteca/Preferencias

    </pre>
   
      <pre><code class="language-scheme">
    #lang scheme
    (require esquematico/base)
      </code></pre>

    <!--
    <pre style="font-size:18px">
           
    seleccione la descarga apropiada a continuación según el sistema operativo de su computadora
            <span style="font-size:12px">para instalar manualmente, consulte las instrucciones en el archivo README del repositorio de <i>esquemático</i> en GitHub, ubicado <a class="link" href="https://github.com/klfarran/scheme-traductor.git">aquí</a> </span>
    </pre>
    -->
</div>

</asp:Content>
