<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CrearUsuarioMedico.aspx.cs" Inherits="Vistas.CrearUsuarioMedico" %>

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
            width: 188px;
        }
        .auto-style4 {
            width: 250px;
        }
        .auto-style5 {
            width: 291px;
        }
        .auto-style6 {
            width: 573px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div >
            <table class="auto-style1">
                <tr>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style5">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td class="auto-style6">&nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4">
                        <asp:HyperLink ID="hlVolver" runat="server" NavigateUrl="~/ABLMedicos.aspx">Volver</asp:HyperLink>
                    </td>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style5">
                        <asp:Label ID="lblCrearUsuarioMedico" runat="server" Font-Bold="True" Font-Size="XX-Large" Text="Crear Usuario"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                    <td class="auto-style6">&nbsp;</td>
                    <td>
                        <asp:Label ID="lblAdministrador" runat="server">NombreAdmin</asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style5">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td class="auto-style6">&nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style3">
                        <asp:Label ID="lblIdMedico" runat="server" Font-Size="Medium" Text="Id Médico:"></asp:Label>
                    </td>
                    <td class="auto-style5">
                        <asp:TextBox ID="txtIdMedico" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:Button ID="btnBuscarIdMedico" runat="server" Text="Buscar" />
                    </td>
                    <td class="auto-style6">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style5">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td class="auto-style6">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style3">
                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False">
                            <Columns>
                                <asp:TemplateField HeaderText="IdMedico"></asp:TemplateField>
                                <asp:TemplateField HeaderText="Nombre"></asp:TemplateField>
                                <asp:TemplateField HeaderText="Apellido"></asp:TemplateField>
                                <asp:TemplateField HeaderText="Especialidad"></asp:TemplateField>
                            </Columns>
                        </asp:GridView>
                    </td>
                    <td class="auto-style5">
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                    <td class="auto-style6">&nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                 <tr>
                     <td class="auto-style4">&nbsp;</td>
                     <td class="auto-style3">
                         &nbsp;</td>
                     <td class="auto-style5">
                         &nbsp;</td>
                     <td>&nbsp;</td>
                     <td class="auto-style6">&nbsp;</td>
                     <td>&nbsp;</td>
                 </tr>
                 <tr>
                     <td class="auto-style4">&nbsp;</td>
                     <td class="auto-style3">
                        <asp:Label ID="lblUsuario" runat="server" Text="Usuario:" Font-Size="Medium"></asp:Label>
                     </td>
                     <td class="auto-style5">
                        <asp:TextBox ID="txtUsuario" runat="server"></asp:TextBox>
                     </td>
                     <td>&nbsp;</td>
                     <td class="auto-style6">&nbsp;</td>
                     <td>&nbsp;</td>
                 </tr>
                <tr>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style3">
                        &nbsp;</td>
                    <td class="auto-style5">
                        &nbsp;</td>
                    <td>&nbsp;</td>
                    <td class="auto-style6">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style3">
                        <asp:Label ID="lblContrasena" runat="server" Text="Contraseña:" Font-Size="Medium"></asp:Label>
                    </td>
                    <td class="auto-style5">
                        <asp:TextBox ID="txtContrasena" runat="server"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                    <td class="auto-style6">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style3">
                        &nbsp;</td>
                    <td class="auto-style5">
                        &nbsp;</td>
                    <td>&nbsp;</td>
                    <td class="auto-style6">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style3">
                        <asp:Label ID="lblConfirmarContrasena" runat="server" Font-Size="Medium" Text="Confirmar contraseña:"></asp:Label>
                    </td>
                    <td class="auto-style5">
                        <asp:TextBox ID="txtConfirmarContrasena" runat="server"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                    <td class="auto-style6">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style5">
                        &nbsp;</td>
                    <td>&nbsp;</td>
                    <td class="auto-style6">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style5">
                        <asp:Button ID="btnCrearUsuario" runat="server" Text="Crear Usuario" />
                    </td>
                    <td>&nbsp;</td>
                    <td class="auto-style6">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:Button ID="btnAtras" runat="server" PostBackUrl="~/ABLMedicos.aspx" Text="Atrás" />
                    </td>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style5">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td class="auto-style6">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style5">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td class="auto-style6">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style5">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td class="auto-style6">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>

