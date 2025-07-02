<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="VistaMedico.aspx.cs" Inherits="Vistas.VistaMedico" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style8 {
            width: 400px;
        }
        .auto-style10 {
            width: 158px;
        }
        .auto-style13 {
            width: 384px;
        }
        .auto-style14 {
            width: 245px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style8">
                        <asp:HyperLink ID="HLVolver" runat="server" NavigateUrl="~/Inicio.aspx" ForeColor="Blue">Volver al Inicio</asp:HyperLink>
                    </td>
                    <td class="auto-style10">&nbsp;</td>
                    <td class="auto-style13">&nbsp;</td>
                    <td class="auto-style14">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style8">&nbsp;</td>
                    <td class="auto-style10">&nbsp;</td>
                    <td class="auto-style13">
                        <asp:Label ID="lblTurnos" runat="server" Font-Bold="True" Font-Size="XX-Large" Text="Turnos"></asp:Label>
                    </td>
                    <td class="auto-style14">&nbsp;</td>
                    <td>
                        <asp:Label ID="lblNombreMedico" runat="server" Text="NombreMedico"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style8">&nbsp;</td>
                    <td class="auto-style10">&nbsp;</td>
                    <td class="auto-style13">&nbsp;</td>
                    <td class="auto-style14">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style8">&nbsp;</td>
                    <td class="auto-style10">
                        <asp:Label ID="lblDniPaciente" runat="server" Text="DNI del paciente:"></asp:Label>
                    </td>
                    <td class="auto-style13">
                        <asp:TextBox ID="txtDNI" runat="server" ></asp:TextBox>
                    &nbsp;<asp:RequiredFieldValidator ID="rfvDni" runat="server" ControlToValidate="txtDNI" Display="Dynamic" ErrorMessage="RequiredFieldValidator" ForeColor="Red" ValidationGroup="grupo1">Ingrese DNI</asp:RequiredFieldValidator>
                                    &nbsp;&nbsp;&nbsp;<asp:RegularExpressionValidator ID="revDni" runat="server" ControlToValidate="txtDNI" Display="Dynamic" ErrorMessage="RegularExpressionValidator" ForeColor="Red" ValidationExpression="^[0-9,$]*$" ValidationGroup="grupo1">Error, solo ingrese números</asp:RegularExpressionValidator>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="btnBuscar" runat="server" Text="Buscar" />
                    </td>
                    <td class="auto-style14">
&nbsp;&nbsp;
                        </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style8">&nbsp;</td>
                    <td class="auto-style10">&nbsp;</td>
                    <td class="auto-style13">&nbsp;</td>
                    <td class="auto-style14">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style8">&nbsp;</td>
                    <td class="auto-style10">
                        <asp:Label ID="lblFiltrar" runat="server" Text="Filtrar por:"></asp:Label>
                    </td>
                    <td class="auto-style13">
                        <asp:DropDownList ID="DropDownList1" runat="server">
                            <asp:ListItem Value="Todos">Todos</asp:ListItem>
                            <asp:ListItem>Presentes</asp:ListItem>
                            <asp:ListItem>Ausentes</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td class="auto-style14">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>      
                <tr>
                    <td class="auto-style8">&nbsp;</td>
                    <td class="auto-style10">&nbsp;</td>
                    <td class="auto-style13">
                        &nbsp;</td>
                    <td class="auto-style14">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style8">&nbsp;</td>
                    <td class="auto-style10">&nbsp;</td>
                    <td class="auto-style13">
                        <asp:GridView ID="GridView1" runat="server">
                        </asp:GridView>
                    </td>
                    <td class="auto-style14">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
