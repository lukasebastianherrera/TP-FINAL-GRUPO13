<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ListarMedicos.aspx.cs" Inherits="Vistas.ListarMedicos" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 400px;
        }
        .auto-style7 {
            width: 152px;
        }
        .auto-style11 {
            width: 292px;
        }
        .auto-style12 {
            width: 404px;
        }
        .auto-style13 {
            width: 382px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div >
            <table class="auto-style1">
                <tr>
                    <td class="auto-style2">
                        <asp:HyperLink ID="hlVolver" runat="server" NavigateUrl="~/ABLMedicos.aspx" Font-Size="Medium" ForeColor="Blue">Volver</asp:HyperLink>
                    </td>
                    <td class="auto-style7">&nbsp;</td>
                    <td class="auto-style11">&nbsp;</td>
                    <td class="auto-style12">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style7">&nbsp;</td>
                    <td class="auto-style11">
                        <asp:Label ID="lblListarMedicos" runat="server" Font-Bold="True" Font-Size="XX-Large" Text="Listar Médicos"></asp:Label>
                    </td>
                    <td class="auto-style12">&nbsp;</td>
                    <td>
                        <asp:Label ID="lblAdministrador" runat="server">NombreAdmin</asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style7">&nbsp;</td>
                    <td class="auto-style11">&nbsp;</td>
                    <td class="auto-style12">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style7">
                        <asp:Label ID="lblDniMedico" runat="server" Text="DNI del Médico:"></asp:Label>
                    </td>
                    <td class="auto-style11">
                        <asp:TextBox ID="txtDni" runat="server" placeholder="Ingresar DNI"></asp:TextBox>
                       <asp:RequiredFieldValidator 
                          ID="rfvDni" 
                          runat="server" 
                          ControlToValidate="txtDni" 
                          ErrorMessage="El DNI es obligatorio." 
                          ForeColor="Red" 
                          Display="Dynamic" 
                          SetFocusOnError="True" Font-Bold="False" />
                      
                      
                      <asp:RegularExpressionValidator 
                          ID="revDni" 
                          runat="server" 
                          ControlToValidate="txtDni" 
                          ErrorMessage="Ingrese solo números (máx. 8 dígitos)." 
                          ValidationExpression="^\d{1,8}$" 
                          ForeColor="Red" 
                          Display="Dynamic" 
                          SetFocusOnError="True" Font-Bold="False" />
                                             
                    </td>
                    <td class="auto-style12">
                        <asp:Button ID="btnFiltrar" runat="server" Text="Filtrar" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="btnMostrarTodos" runat="server" Text="Mostrar todos" />
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style7">&nbsp;</td>
                    <td class="auto-style11">&nbsp;</td>
                    <td class="auto-style12">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                </table>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style13">&nbsp;</td>
                    <td>
                        <asp:GridView ID="gvMedicos" runat="server">
                        </asp:GridView>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style13">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style13">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
            <br />
        </div>
    </form>
</body>
</html>