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
        .auto-style5 {
            width: 182px;
        }
        .auto-style6 {
            width: 189px;
        }
        .auto-style7 {
            width: 400px;
        }
        .auto-style8 {
            width: 466px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div >
            <table class="auto-style1">
                <tr>
                    <td class="auto-style7">
                        <asp:HyperLink ID="hlVolver" runat="server" NavigateUrl="~/ABLMedicos.aspx" ForeColor="Blue">Volver</asp:HyperLink>
                    </td>
                    <td class="auto-style5">&nbsp;</td>
                    <td class="auto-style8">&nbsp;</td>
                    <td class="auto-style6">&nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style7">
                        &nbsp;</td>
                    <td class="auto-style5">
                        &nbsp;</td>
                    <td class="auto-style8">
                        <asp:Label ID="lblCrearUsuarioMedico" runat="server" Font-Bold="True" Font-Size="XX-Large" Text="Crear Usuario"></asp:Label>
                    </td>
                    <td class="auto-style6">&nbsp;</td>
                    <td>
                        <asp:Label ID="lblAdministrador" runat="server">NombreAdmin</asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style7">&nbsp;</td>
                    <td class="auto-style5">&nbsp;</td>
                    <td class="auto-style8">&nbsp;</td>
                    <td class="auto-style6">&nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style7">&nbsp;</td>
                    <td class="auto-style5">
                        <asp:Label ID="lblDniMedico" runat="server" Font-Size="Medium" Text="DNI Médico:"></asp:Label>
                    </td>
                    <td class="auto-style8">
                        <asp:TextBox ID="txtIdMedico" runat="server" placeholder="Ingresar DNI"></asp:TextBox>
                    &nbsp;<asp:RequiredFieldValidator 
                          ID="rfvDni" 
                          runat="server" 
                          ControlToValidate="txtIdMedico" 
                          ErrorMessage="El DNI es obligatorio." 
                          ForeColor="Red" 
                          Display="Dynamic" 
                          SetFocusOnError="True" Font-Bold="False" />
                      
                      
                        &nbsp;<asp:RegularExpressionValidator ID="revDni" runat="server" ControlToValidate="txtDni" Display="Dynamic" ErrorMessage="RegularExpressionValidator" ForeColor="Red" ValidationExpression="^\d{8}$" ValidationGroup="grupo1" Font-Bold="False">Debe ingresar 8 dígitos</asp:RegularExpressionValidator>
                                             
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="btnBuscarIdMedico" runat="server" Text="Buscar" />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    </td>
                    <td class="auto-style6">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style7">&nbsp;</td>
                    <td class="auto-style5">&nbsp;</td>
                    <td class="auto-style8">&nbsp;</td>
                    <td class="auto-style6">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style7">&nbsp;</td>
                    <td class="auto-style5">
                        &nbsp;</td>
                    <td class="auto-style8">
                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False">
                            <Columns>
                                <asp:TemplateField HeaderText="IdMedico"></asp:TemplateField>
                                <asp:TemplateField HeaderText="Nombre"></asp:TemplateField>
                                <asp:TemplateField HeaderText="Apellido"></asp:TemplateField>
                                <asp:TemplateField HeaderText="Especialidad"></asp:TemplateField>
                            </Columns>
                        </asp:GridView>
                    </td>
                    <td class="auto-style6">&nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                 <tr>
                     <td class="auto-style7">&nbsp;</td>
                     <td class="auto-style5">
                         &nbsp;</td>
                     <td class="auto-style8">&nbsp;</td>
                     <td class="auto-style6">&nbsp;</td>
                     <td>&nbsp;</td>
                 </tr>
                 <tr>
                     <td class="auto-style7">&nbsp;</td>
                     <td class="auto-style5">
                        <asp:Label ID="lblUsuario" runat="server" Text="Usuario:" Font-Size="Medium"></asp:Label>
                     </td>
                     <td class="auto-style8">
                        <asp:TextBox ID="txtUsuario" runat="server" placeholder="Ingresar usuario"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="rfvUsuario" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="txtUsuario" Display="Dynamic" ForeColor="Red" ValidationGroup="grupo1">Ingrese un usuario</asp:RequiredFieldValidator>
                     </td>
                     <td class="auto-style6">&nbsp;</td>
                     <td>&nbsp;</td>
                 </tr>
                <tr>
                    <td class="auto-style7">&nbsp;</td>
                    <td class="auto-style5">
                        &nbsp;</td>
                    <td class="auto-style8">&nbsp;</td>
                    <td class="auto-style6">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style7">&nbsp;</td>
                    <td class="auto-style5">
                        <asp:Label ID="lblContrasena" runat="server" Text="Contraseña:" Font-Size="Medium"></asp:Label>
                    </td>
                    <td class="auto-style8">
                        <asp:TextBox ID="txtContrasena1" runat="server" TextMode="Password" placeholder="Ingresar contraseña"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfvContrasena1" runat="server" ControlToValidate="txtContrasena1" Display="Dynamic" ErrorMessage="RequiredFieldValidator" ForeColor="Red" ValidationGroup="grupo1">Ingrese una contraseña</asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style6">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style7">&nbsp;</td>
                    <td class="auto-style5">
                        &nbsp;</td>
                    <td class="auto-style8">&nbsp;</td>
                    <td class="auto-style6">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style7">&nbsp;</td>
                    <td class="auto-style5">
                        <asp:Label ID="lblConfirmarContrasena" runat="server" Font-Size="Medium" Text="Confirmar contraseña:"></asp:Label>
                    </td>
                    <td class="auto-style8">
                        <asp:TextBox ID="txtContrasena2" runat="server" TextMode="Password" placeholder="Ingresar contraseña"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfvContrasena" runat="server" ControlToValidate="txtContrasena2" Display="Dynamic" ErrorMessage="RequiredFieldValidator" ForeColor="Red" ValidationGroup="grupo1">Reingrese la contraseña</asp:RequiredFieldValidator>
                        <asp:CompareValidator ID="cvContrasena" runat="server" ControlToCompare="txtContrasena1" ControlToValidate="txtContrasena2" Display="Dynamic" ErrorMessage="Las contraseñas no coinciden" ForeColor="Red" ValidationGroup="grupo1"></asp:CompareValidator>
                    </td>
                    <td class="auto-style6">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style7">&nbsp;</td>
                    <td class="auto-style5">
                        &nbsp;</td>
                    <td class="auto-style8">&nbsp;</td>
                    <td class="auto-style6">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style7">&nbsp;</td>
                    <td class="auto-style5">
                        &nbsp;</td>
                    <td class="auto-style8">
                        <asp:Button ID="btnCrearUsuario" runat="server" Text="Crear Usuario" OnClick="btnCrearUsuario_Click" ValidationGroup="grupo1" />
                    </td>
                    <td class="auto-style6">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style7">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</td>
                    <td class="auto-style5">&nbsp;</td>
                    <td class="auto-style8">
                        <asp:Label ID="lblMensajeExito" runat="server"></asp:Label>
                    </td>
                    <td class="auto-style6">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style7">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</td>
                    <td class="auto-style5">&nbsp;</td>
                    <td class="auto-style8">&nbsp;</td>
                    <td class="auto-style6">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style7">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</td>
                    <td class="auto-style5">&nbsp;</td>
                    <td class="auto-style8">&nbsp;</td>
                    <td class="auto-style6">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>

