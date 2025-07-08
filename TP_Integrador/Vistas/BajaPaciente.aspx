<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BajaPaciente.aspx.cs" Inherits="Vistas.BajaPaciente" %>

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
        .auto-style3 {
            width: 152px;
        }
        .auto-style4 {
            width: 333px;
        }
        .auto-style6 {
            width: 400px;
            height: 40px;
        }
        .auto-style7 {
            height: 40px;
        }
        .auto-style8 {
            width: 152px;
            height: 40px;
        }
        .auto-style9 {
            width: 333px;
            height: 40px;
        }
        .auto-style13 {
            width: 348px;
        }
        .auto-style14 {
            width: 348px;
            height: 40px;
        }
        .auto-style20 {
            width: 400px;
            height: 76px;
        }
        .auto-style21 {
            width: 152px;
            height: 76px;
        }
        .auto-style22 {
            width: 333px;
            height: 76px;
        }
        .auto-style23 {
            width: 348px;
            height: 76px;
        }
        .auto-style24 {
            height: 76px;
        }
        .auto-style26 {
            width: 701px;
        }
        .auto-style27 {
            width: 502px;
        }
        .auto-style28 {
            width: 116px;
        }
        .auto-style29 {
            width: 358px;
        }
        .auto-style30 {
            width: 406px;
        }
    </style>
</head>

<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style2">
            <asp:HyperLink ID="hlVolver" runat="server" Font-Size="Medium" NavigateUrl="~/ABMLPacientes.aspx" ForeColor="Blue">Volver</asp:HyperLink>
                    </td>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style13">&nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style20"></td>
                    <td class="auto-style21"></td>
                    <td class="auto-style22">
                        <asp:Label ID="lblEliminarPaciente" runat="server" Font-Bold="True" Font-Size="XX-Large" Text="Eliminar Paciente"></asp:Label>
                    </td>
                    <td class="auto-style23"></td>
                    <td class="auto-style24">
                        <asp:Label ID="lblAdministrador" runat="server">NombreAdmin</asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style13">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style6"></td>
                    <td class="auto-style8">
                        <asp:Label ID="lblDNI" runat="server" Text="DNI del Paciente:"></asp:Label>
                    </td>
                    <td class="auto-style9"> 
            <asp:TextBox ID="txtDni" runat="server" CssClass="form-control" placeholder="Ingresar DNI"></asp:TextBox>
                    
                    
                                    <asp:RegularExpressionValidator ID="revDni" runat="server" ControlToValidate="txtDni" Display="Dynamic" ErrorMessage="RegularExpressionValidator" ForeColor="Red" ValidationExpression="^\d{8}$" ValidationGroup="grupo1">Debe ingresar 8 dígitos</asp:RegularExpressionValidator>
                   
                    </td>
                    <td class="auto-style14">
             <asp:Button ID="btnBuscarPaciente" runat="server" Text="Buscar por DNI"  OnClick="btnBuscarPaciente_Click" ValidationGroup="grupo1"/>  
                    </td>
                    <td class="auto-style7"></td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style4">
                        <asp:Label ID="lblMensajeDni" runat="server" ForeColor="Red"></asp:Label>
                    </td>
                    <td class="auto-style13">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style4">
                        &nbsp;</td>
                    <td class="auto-style13">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style3">
                        <asp:Label ID="lblApellido" runat="server" Text="Apellido:"></asp:Label>
                    </td>
                    <td class="auto-style4">
                        <asp:TextBox ID="txtApellido" runat="server" placeholder="Ingrese parte del apellido"></asp:TextBox>
                    
                    
                                    <asp:RegularExpressionValidator ID="revApellido" runat="server" ControlToValidate="txtApellido" Display="Dynamic" ErrorMessage="RegularExpressionValidator" ForeColor="Red" ValidationExpression="^[a-zA-Z]+$" ValidationGroup="grupo2">Error, solo letras</asp:RegularExpressionValidator>
                                </td>
                    <td class="auto-style13">
                        <asp:Button ID="btnBuscarApellido" runat="server" OnClick="btnBuscarApellido_Click" Text="Filtrar" ValidationGroup="grupo2" />
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style4">
                        <asp:Label ID="lblMensajeApellido" runat="server" ForeColor="Red"></asp:Label>
                    </td>
                    <td class="auto-style13">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                </table>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style27">&nbsp;</td>
                    <td class="auto-style26">
                       <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="true" AllowPaging="True" OnPageIndexChanging="GridView1_PageIndexChanging" PageSize="6" AutoGenerateSelectButton="True" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                           <PagerStyle HorizontalAlign="Center" />
                        </asp:GridView>

                    &nbsp;&nbsp;&nbsp; </td>
                    <td>&nbsp;</td>
                </tr>
            </table>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style29">&nbsp;</td>
                    <td class="auto-style28">&nbsp;</td>
                    <td class="auto-style30">&nbsp;<asp:Label ID="lblMensaje" runat="server" ForeColor="Green"></asp:Label>
                        &nbsp;&nbsp;&nbsp;&nbsp; </td>
                    <td class="auto-style13">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style29">&nbsp;</td>
                    <td class="auto-style28">&nbsp;</td>
                    <td class="auto-style30">
                        <asp:Button ID="btnEliminar" runat="server" Text="Eliminar" OnClick="btnEliminar_Click" CausesValidation="False" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="btnCancelar" runat="server" Text="Cancelar" Width="72px" OnClick="btnCancelar_Click" CausesValidation="False" />
                    </td>
                    <td class="auto-style13">
                        &nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style29">&nbsp;</td>
                    <td class="auto-style28">&nbsp;</td>
                    <td class="auto-style30">&nbsp;</td>
                    <td class="auto-style13">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
            <br />
            <br />
        </div>
    </form>
</body>
</html>