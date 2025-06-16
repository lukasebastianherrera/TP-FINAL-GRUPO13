<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminMenu.aspx.cs" Inherits="Vistas.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style5 {
            width: 184px;
        }
        .auto-style8 {
            width: 184px;
            height: 26px;
        }
        .auto-style9 {
            width: 244px;
        }
        .auto-style10 {
            width: 450px;
        }
        .auto-style11 {
            width: 1105px;
        }
        .auto-style12 {
            width: 207px;
            height: 26px;
        }
        .auto-style13 {
            width: 244px;
            height: 26px;
        }
        .auto-style14 {
            width: 450px;
            height: 26px;
        }
        .auto-style15 {
            width: 207px;
        }
        .auto-style16 {
            width: 101px;
        }
        .auto-style17 {
            width: 101px;
            height: 26px;
        }
        .auto-style18 {
            width: 207px;
            height: 48px;
        }
        .auto-style19 {
            width: 244px;
            height: 48px;
        }
        .auto-style20 {
            width: 184px;
            height: 48px;
        }
        .auto-style21 {
            width: 101px;
            height: 48px;
        }
        .auto-style22 {
            width: 450px;
            height: 48px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
             <table class="auto-style11">
     <tr>
         <td class="auto-style15">&nbsp;</td>
         <td class="auto-style9">&nbsp;</td>
         <td class="auto-style5">&nbsp;</td>
         <td class="auto-style16">
             &nbsp;</td>
         <td class="auto-style10">&nbsp;</td>
     </tr>
     <tr>
         <td class="auto-style15">
             <asp:HyperLink ID="hlInicio" runat="server" NavigateUrl="~/Inicio.aspx">Volver al Inicio</asp:HyperLink>
         </td>
         <td class="auto-style9">&nbsp;
             <br />
             <br />
             <br />
             <br />
             &nbsp;</td>
         <td class="auto-style5">
             <asp:Label ID="lblPacientes" runat="server" Font-Bold="True" Text="Menú Adminstradores" Font-Size="XX-Large"></asp:Label>
         </td>
         <td class="auto-style16">&nbsp;</td>
         <td class="auto-style10">
             <asp:Label ID="lblAdministrador" runat="server" Font-Bold="False" Font-Size="Medium">AdminNombre</asp:Label>
         </td>
     </tr>
     <tr>
         <td class="auto-style12"></td>
         <td class="auto-style13"></td>
         <td class="auto-style8"></td>
         <td class="auto-style17"></td>
         <td class="auto-style14"></td>
     </tr>
     <tr>
         <td class="auto-style15"></td>
         <td class="auto-style9"></td>
         <td class="auto-style5">

 <asp:HyperLink ID="hlABMLPaciente" runat="server" NavigateUrl="~/ABMLPacientes.aspx" Font-Bold="False" Font-Size="Medium" ForeColor="Blue">ABML Pacientes</asp:HyperLink>

         </td>
         <td class="auto-style16"></td>
         <td class="auto-style10"></td>
     </tr>
     <tr>
         <td class="auto-style12"></td>
         <td class="auto-style13"></td>
         <td class="auto-style8"></td>
         <td class="auto-style17"></td>
         <td class="auto-style14"></td>
     </tr>
     <tr>
         <td class="auto-style18"></td>
         <td class="auto-style19"></td>
         <td class="auto-style20">

 <asp:HyperLink ID="hlABMLMedicos" runat="server" NavigateUrl="~/ABLMedicos.aspx" Font-Bold="False" Font-Size="Medium" ForeColor="Blue">ABML Médicos</asp:HyperLink>

         </td>
         <td class="auto-style21"></td>
         <td class="auto-style22"></td>
     </tr>
     <tr>
         <td class="auto-style15">&nbsp;</td>
         <td class="auto-style9">&nbsp;</td>
         <td class="auto-style5">&nbsp;</td>
         <td class="auto-style16">&nbsp;</td>
         <td class="auto-style10">&nbsp;</td>
     </tr>
     <tr>
         <td class="auto-style15">&nbsp;</td>
         <td class="auto-style9">&nbsp;</td>
         <td class="auto-style5">

 <asp:HyperLink ID="hlAsignacionTurnos" runat="server" NavigateUrl="~/AsignacionTurnos.aspx" Font-Bold="False" Font-Size="Medium" ForeColor="Blue">Asignar Turnos</asp:HyperLink>

         </td>
         <td class="auto-style16">&nbsp;</td>
         <td class="auto-style10">&nbsp;</td>
     </tr>
     <tr>
         <td class="auto-style15">&nbsp;</td>
         <td class="auto-style9">&nbsp;</td>
         <td class="auto-style5">&nbsp;</td>
         <td class="auto-style16">&nbsp;</td>
         <td class="auto-style10">&nbsp;</td>
     </tr>
     <tr>
         <td class="auto-style15">&nbsp;</td>
         <td class="auto-style9">&nbsp;</td>
         <td class="auto-style5">

 <asp:HyperLink ID="hlInformes" runat="server" NavigateUrl="~/Informes.aspx" Font-Bold="False" Font-Size="Medium" ForeColor="Blue">Informes</asp:HyperLink>

         </td>
         <td class="auto-style16">&nbsp;</td>
         <td class="auto-style10">&nbsp;</td>
     </tr>
 </table>
 <br />
        </div>
    </form>
</body>
</html>
