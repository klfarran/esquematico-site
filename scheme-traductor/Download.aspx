<%@ Page Title="" Language="C#" MasterPageFile="~/English.Master" AutoEventWireup="true" CodeBehind="Download.aspx.cs" Inherits="scheme_traductor.Discussion" %>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <link rel="stylesheet" href="sitestyles.css" />

<div class="eng-main-content">
    <div class="jumbotron">
       <h3>install esquemático</h3>
    </div>
<!--
    <pre style="font-size:18px">
        
        for now, please see the instructions for manual installation located <a class="link" href="https://github.com/klfarran/scheme-traductor.git">here</a> in the esquemático GitHub repository
    </pre>

-->

       <pre style="font-size:18px">

 <span style="font-size:22px; font-weight:600">Install and Configure Dr Racket with esquemático for Windows:</span>

         Navigate to <a class="link" href="https://download.racket-lang.org">Download Dr Racket</a>
                - Download the version appropriate for your computer and operating system (Windows)
                - Click on the “racket-...exe” button
                - Execute the "racket....exe" file

         Download the <i>esquematico</i> folder from the main branch in this repository
                 - Copy the <i>esquematico</i>  folder into the <i>Racket/collects</i> folder
                 - Assuming that the C: drive is the main drive on your computer, this is usually located at:
                      <i>C:\Program Files\Racket</i>

         Delete the 'Racket' folder located at <i>C:\Users\*username*\AppData\Roaming\Racket </i>
                 - Create a new folder called 'Racket' inside the folder <i>C:\Users\*username*\AppData\Roaming</i>
                 - Download the <i>racket-prefs.rktd</i> file from the branch 'main' of this repository
                 - Place the <i>racket-prefs.rktd</i> file inside of the 'Racket' folder you created
 
         Open Dr Racket, hit <i>Run</i> in the upper right hand corner, and you're all set!
                 - Note that all files should (automatically) start with the following two lines in order to use <i>esquemático</i> </pre>

      <pre><code class="language-scheme">
    #lang scheme
    (require esquematico/base)
      </code></pre>

    <pre style="font-size:18px">

 <span style="font-size:22px; font-weight:600">Install and Configure Dr Racket with esquemático for Mac:</span>

         Naviage to <a class="link" href="https://download.racket-lang.org">Download Dr Racket</a>
                - Download the version appropriate for your computer and operating system (MacOS)
                - Click on the “racket-...dmg” button
                - In the opening/saving dialog that follows choose to save the file "racket....dmg"
                - Double-click on the "racket....dmg" disk-image file that you saved
                - From the disk folder that opens, drag the Racket vXXXX folder (where XXXX is the number of the current version
                        of DrRacket) to the <i>Applications</i> folder
 
        Download the <i>esquematico</i> folder from the branch 'main' of this repository
                  - Copy the <i>esquematico</i> folder into the Racket/collects folder
                  - The <i>collects</i> folder should be located at <i>hard drive</i>/Applications/Racket vXXXX, where XXXX is the number of the 
                        current version of Dr Racket


       Open the <i>Terminal</i> Application and make sure that the entire /Applications/Racket vXXXX/collects hierarchy is world-readbale 
       and word-executable, but not world-writable by executing the command:
              - chmod -R go+rx-w /Applications/Racket\ vXXXX/collects
 
        If they exist, delete the files:
              - <i>hard drive</i>/Users/<i>user name</i>/Library/Preferences/org.plt-scheme.DrScheme.plist
              - <i>hard drive</i>/Users/<i>user name</i>/Library/Preferences/org.plt-scheme.prefs.ss
              - <i>hard drive</i>/Users/<i>user name</i>/Library/Preferences/org.racket-lang.DrRacket.plist
              - <i>hard drive</i>/Users/<i>user name</i>/Library/Preferences/org.racket-lang.prefs.rktd
              - <i>hard drive</i>/Users/<i>user name</i>/Library/Preferences/PLT-autosave-toc
              - <i>hard drive</i>/Users/<i>user name</i>/Library/Preferences/PLT-autosave-toc-save
              - <i>hard drive</i>/Users/<i>user name</i>/Library/Preferences/PLT-autosave-toc.rktd
              - <i>hard drive</i>/Users/<i>user name</i>/Library/Preferences/PLT-autosave-toc-save.rktd
 
        Download the file <i>org.racket-lang.prefs.rktd</i> from the branch 'main' of this repository 

               - Copy the file <i>org.racket-lang.prefs.rktd</i> in the folder <i>hard disk</i>/Users/<i>username</i>/Library/Preferences

    </pre>
   
      <pre><code class="language-scheme">
    #lang scheme
    (require esquematico/base)
      </code></pre>

</div>

</asp:Content>
