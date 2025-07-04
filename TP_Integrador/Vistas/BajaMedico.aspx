<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BajaMedico.aspx.cs" Inherits="Vistas.BajaMedico" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style3 {
            width: 152px;
        }
        .auto-style4 {
            width: 379px;
        }
        .auto-style6 {
            width: 400px;
        }
        .auto-style7 {
            width: 360px;
        }
        .auto-style8 {
            width: 400px;
            height: 42px;
        }
        .auto-style9 {
            width: 152px;
            height: 42px;
        }
        .auto-style10 {
            width: 379px;
            height: 42px;
        }
        .auto-style11 {
            width: 360px;
            height: 42px;
        }
        .auto-style12 {
            height: 42px;
        }
        .auto-style13 {
            width: 527px;
        }
        .auto-style14 {
            width: 744px;
        }
        .auto-style15 {
            width: 154px;
        }
        .auto-style16 {
            width: 361px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style6">
                        <asp:HyperLink ID="hlVolver" runat="server" NavigateUrl="~/ABLMedicos.aspx" ForeColor="Blue">Volver</asp:HyperLink>
                    </td>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style7">&nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style6">
                        &nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style4">
                        <asp:Label ID="lblEliminarMedico" runat="server" Font-Bold="True" Font-Size="XX-Large" Text="Eliminar Médico"></asp:Label>
                    </td>
                    <td class="auto-style7">&nbsp;</td>
                    <td>
                        <asp:Label ID="lblAdministrador" runat="server">NombreAdmin</asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style6">&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style7">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style8"></td>
                    <td class="auto-style9">
                        <asp:Label ID="lblDniMedico" runat="server" Text="DNI del Médico:"></asp:Label>
                    </td>
                    <td class="auto-style10"> 
            <asp:TextBox ID="txtDni" runat="server" CssClass="form-control" placeholder="Ingresar DNI" Width="139px"></asp:TextBox>
                       <asp:RequiredFieldValidator 
                          ID="rfvDni" 
                          runat="server" 
                          ControlToValidate="txtDni" 
                          ErrorMessage="El DNI es obligatorio." 
                          ForeColor="Red" 
                          Display="Dynamic" 
                          SetFocusOnError="True" />

             <asp:RegularExpressionValidator 
                 ID="revDni" 
                 runat="server" 
                 ControlToValidate="txtDni" 
                 Display="Dynamic" 
                 ErrorMessage="RegularExpressionValidator"
                 ForeColor="Red" 
                 ValidationExpression="^\d{8}$" 
                 ValidationGroup="grupo1">Debe ingresar 8 dígitos</asp:RegularExpressionValidator>
                                             
                    </td>
                    <td class="auto-style11">
                        <asp:Button ID="btnBuscarMedico" runat="server" Text="Buscar" OnClick="btnBuscarMedico_Click" />
                    </td>
                    <td class="auto-style12"></td>
                </tr>
                <tr>
                    <td class="auto-style6">&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style7">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                </table>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style13">&nbsp;</td>
                    <td class="auto-style14">
                        <asp:GridView ID="Grv_medicos" runat="server">
                        </asp:GridView>
                    </td>
                    <td>&nbsp;</td>
                </tr>
            </table>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style6">&nbsp;</td>
                    <td class="auto-style15">&nbsp;</td>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style16">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style6">&nbsp;</td>
                    <td class="auto-style15">&nbsp;</td>
                    <td class="auto-style4">
                        <asp:Button ID="btnEliminar" runat="server" Text="Eliminar" OnClick="btnEliminar_Click" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="btnCancelar" runat="server" Text="Cancelar" OnClick="btnCancelar_Click" />
                    </td>
                    <td class="auto-style16">
                        <asp:Label ID="lblMensaje" runat="server" Font-Size="Medium"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style6">&nbsp;</td>
                    <td class="auto-style15">&nbsp;</td>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style16">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
            <br />
        </div>
    </form>
</body>
</html>