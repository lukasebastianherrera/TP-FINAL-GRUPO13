<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AltaPaciente.aspx.cs" Inherits="Vistas.AltaPaciente
    " %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style11 {
            width: 118px;
        }
        .auto-style12 {
            width: 240px;
        }
        .auto-style19 {
            width: 104px;
        }
        .auto-style25 {
            width: 223px;
        }
        .auto-style26 {
            width: 309px;
        }
        .auto-style27 {
            width: 921px;
        }
        .auto-style28 {
            width: 50px;
        }
        .auto-style29 {
            width: 75px;
        }
        .auto-style30 {
            width: 192px;
        }
        .auto-style31 {
            width: 75px;
            height: 38px;
        }
        .auto-style32 {
            width: 118px;
            height: 38px;
        }
        .auto-style33 {
            width: 240px;
            height: 38px;
        }
        .auto-style34 {
            width: 50px;
            height: 38px;
        }
        .auto-style35 {
            width: 104px;
            height: 38px;
        }
        .auto-style36 {
            width: 192px;
            height: 38px;
        }
        .auto-style37 {
            height: 38px;
        }
        .auto-style38 {
            width: 75px;
            height: 73px;
        }
        .auto-style39 {
            width: 118px;
            height: 73px;
        }
        .auto-style40 {
            width: 240px;
            height: 73px;
        }
        .auto-style41 {
            width: 50px;
            height: 73px;
        }
        .auto-style42 {
            width: 104px;
            height: 73px;
        }
        .auto-style43 {
            width: 192px;
            height: 73px;
        }
        .auto-style44 {
            height: 73px;
        }
        .auto-style45 {
            width: 75px;
            height: 26px;
        }
        .auto-style46 {
            width: 118px;
            height: 26px;
        }
        .auto-style47 {
            width: 240px;
            height: 26px;
        }
        .auto-style48 {
            width: 50px;
            height: 26px;
        }
        .auto-style49 {
            width: 104px;
            height: 26px;
        }
        .auto-style50 {
            width: 192px;
            height: 26px;
        }
        .auto-style51 {
            height: 26px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td>
                        <table class="auto-style1">
                            <tr>
                                <td class="auto-style25">
                                    <asp:HyperLink ID="hlVolver" runat="server" Font-Size="Medium" NavigateUrl="~/ABMLPacientes.aspx" ForeColor="Blue">Volver</asp:HyperLink>
                                </td>
                                <td class="auto-style26">&nbsp;</td>
                                <td class="auto-style27">&nbsp;</td>
                                <td>
                                    &nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style25">&nbsp;</td>
                                <td class="auto-style26">&nbsp;</td>
                                <td class="auto-style27">
                                    <asp:Label ID="lblAnadirPaciente" runat="server" Font-Bold="True" Font-Size="XX-Large" Text="Añadir Paciente"></asp:Label>
                                </td>
                                <td>
                                    <asp:Label ID="lblAdministrador" runat="server" Font-Size="Medium">NombreAdmin</asp:Label>
                                </td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style25">&nbsp;</td>
                                <td class="auto-style26">&nbsp;</td>
                                <td class="auto-style27">&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                        </table>
                        <table class="auto-style1">
                            <tr>
                                <td class="auto-style29">&nbsp;</td>
                                <td class="auto-style11">
                                    <asp:Label ID="Label2" runat="server" Font-Size="Medium" Text="Nombre:"></asp:Label>
                                </td>
                                <td class="auto-style12">
        <asp:TextBox ID="txtNombre" runat="server" CssClass="form-control" placeholder="Ingresar Nombre"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="rfvNombre" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="txtNombre" Display="Dynamic" ForeColor="Red" ValidationGroup="grupo1">Ingrese un nombre</asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="revNombre" runat="server" ControlToValidate="txtNombre" Display="Dynamic" ErrorMessage="RegularExpressionValidator" ForeColor="Red" ValidationExpression="^[a-zA-Z]+$" ValidationGroup="grupo1">Error, solo letras</asp:RegularExpressionValidator>
                                </td>
                                <td class="auto-style28">&nbsp;</td>
                                <td class="auto-style19">
                                    <asp:Label ID="Label3" runat="server" Font-Size="Medium" Text="Apellido:"></asp:Label>
                                </td>
                                <td class="auto-style12">
        <asp:TextBox ID="txtApellido" runat="server" CssClasss="form-control" placeholder="Ingresar Apellido "></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="rfvApellido" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="txtApellido" Display="Dynamic" ForeColor="Red" ValidationGroup="grupo1">Ingrese un apellido</asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ControlToValidate="txtApellido" Display="Dynamic" ErrorMessage="RegularExpressionValidator" ForeColor="Red" ValidationExpression="^[a-zA-Z]+$" ValidationGroup="grupo1">Error, solo letras</asp:RegularExpressionValidator>
                                </td>
                                <td class="auto-style28">&nbsp;</td>
                                <td class="auto-style30">
        <asp:Label ID="lblFechaNacimiento" runat="server" Text="Fecha de Nacimiento:" Font-Size="Medium"></asp:Label>
                                </td>
                                <td>
                                    <asp:DropDownList ID="ddlDia" runat="server" CssClass="form-control" >
                                        <asp:ListItem Value="0">Seleccionar Día</asp:ListItem>
                                    </asp:DropDownList>
                                    <asp:RequiredFieldValidator ID="rfvDia" runat="server" ControlToValidate="ddlDia" Display="Dynamic" ErrorMessage="RequiredFieldValidator" ForeColor="Red" InitialValue="0" ValidationGroup="grupo1">Elija un día</asp:RequiredFieldValidator>
                                    <asp:DropDownList ID="ddlMes" runat="server" CssClass="form-control">
                                        <asp:ListItem Text="Seleccionar Mes" Value="0" />
                                    </asp:DropDownList>
                                    <asp:RequiredFieldValidator ID="rfvMes" runat="server" ControlToValidate="ddlMes" Display="Dynamic" ErrorMessage="RequiredFieldValidator" ForeColor="Red" InitialValue="0" ValidationGroup="grupo1">Elija un Mes</asp:RequiredFieldValidator>
                                    <asp:DropDownList ID="ddlAnio" runat="server" CssClass="form-control">
                                        <asp:ListItem Text="Seleccionar Año" Value="0" />
                                    </asp:DropDownList>
                                    <asp:RequiredFieldValidator ID="rfvAnio" runat="server" ControlToValidate="ddlAnio" Display="Dynamic" ErrorMessage="RequiredFieldValidator" ForeColor="Red" InitialValue="0" ValidationGroup="grupo1">Elija un Año</asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style29">&nbsp;</td>
                                <td class="auto-style11">
                                    &nbsp;</td>
                                <td class="auto-style12">
                                    &nbsp;</td>
                                <td class="auto-style28">&nbsp;</td>
                                <td class="auto-style19">
                                    &nbsp;</td>
                                <td class="auto-style12">
                                    &nbsp;</td>
                                <td class="auto-style28">&nbsp;</td>
                                <td class="auto-style30">&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style31"></td>
                                <td class="auto-style32">
        <asp:Label ID="lblDni" runat="server" Text="DNI:" Font-Size="Medium"></asp:Label>
                                </td>
                                <td class="auto-style33">
                                    <asp:TextBox ID="txtDNI" runat="server" CssClass="form-control" placeholder="Ingresar DNI"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="rfvDni" runat="server" ControlToValidate="txtDNI" Display="Dynamic" ErrorMessage="RequiredFieldValidator" ForeColor="Red" ValidationGroup="grupo1">Ingrese DNI</asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="revDni" runat="server" ControlToValidate="txtDNI" Display="Dynamic" ErrorMessage="RegularExpressionValidator" ForeColor="Red" ValidationExpression="^[0-9,$]*$" ValidationGroup="grupo1">Error, solo ingrese números</asp:RegularExpressionValidator>
                                </td>
                                <td class="auto-style34"></td>
                                <td class="auto-style35">
            <asp:Label ID="lblSexo" runat="server" Text="Sexo:" Font-Size="Medium"></asp:Label>
                                </td>
                                <td class="auto-style33">
            <asp:DropDownList ID="ddlSexo" runat="server" CssClass="form-control">
                <asp:ListItem Value="0">Seleccionar Sexo</asp:ListItem>
                <asp:ListItem Value="Masculino">Masculino</asp:ListItem>
                <asp:ListItem Value="Femenino">Femenino</asp:ListItem>
            </asp:DropDownList>
                                    <asp:RequiredFieldValidator ID="rfvSexo" runat="server" ControlToValidate="ddlSexo" Display="Dynamic" ErrorMessage="RequiredFieldValidator" ForeColor="Red" InitialValue="0" ValidationGroup="grupo1">Elija un sexo</asp:RequiredFieldValidator>
                                </td>
                                <td class="auto-style34"></td>
                                <td class="auto-style36">
                                    <asp:Label ID="lblNacionalidad" runat="server" Font-Size="Medium" Text="Nacionalidad:"></asp:Label>
                                </td>
                                <td class="auto-style37">
                        <asp:DropDownList ID="ddlNacionalidad" runat="server">
                            <asp:ListItem Value="0">Seleccionar Nacionalidad</asp:ListItem>
                            <asp:ListItem Value="Argentina">Argentina</asp:ListItem>
                            <asp:ListItem Value="Bolivia">Bolivia</asp:ListItem>
                            <asp:ListItem Value="Brasil">Brasil</asp:ListItem>
                            <asp:ListItem Value="Chile">Chile</asp:ListItem>
                            <asp:ListItem Value="Colombia">Colombia</asp:ListItem>
                            <asp:ListItem Value="Ecuador">Ecuador</asp:ListItem>
                            <asp:ListItem Value="Paraguay">Paraguay</asp:ListItem>
                            <asp:ListItem Value="Perú">Perú</asp:ListItem>
                            <asp:ListItem Value="Uruguay">Uruguay</asp:ListItem>
                            <asp:ListItem Value="Venezuela">Venezuela</asp:ListItem>
                            <asp:ListItem Value="Otros">Otros</asp:ListItem>
                        </asp:DropDownList>
                                    <asp:RequiredFieldValidator ID="rfvNacionalidad" runat="server" ControlToValidate="ddlNacionalidad" Display="Dynamic" ErrorMessage="RequiredFieldValidator" ForeColor="Red" InitialValue="0" ValidationGroup="grupo1">Elija una Nacionalidad</asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style29">&nbsp;</td>
                                <td class="auto-style11">
                                    &nbsp;</td>
                                <td class="auto-style12">
                                    &nbsp;</td>
                                <td class="auto-style28">&nbsp;</td>
                                <td class="auto-style19">
                                    &nbsp;</td>
                                <td class="auto-style12">
                                    &nbsp;</td>
                                <td class="auto-style28">&nbsp;</td>
                                <td class="auto-style30">&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style38"></td>
                                <td class="auto-style39">
        <asp:Label ID="lblEmail" runat="server" Text="E-mail:" Font-Bold="False" Font-Size="Medium"></asp:Label>
                                </td>
                                <td class="auto-style40">
        <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" placeholder="Ingresar Correo"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="rfvEmail" runat="server" ControlToValidate="txtEmail" Display="Dynamic" ErrorMessage="RequiredFieldValidator" ForeColor="Red" ValidationGroup="grupo1">Ingrese un email</asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="revEmail" runat="server" ControlToValidate="txtEmail" Display="Dynamic" ErrorMessage="RegularExpressionValidator" ForeColor="Red" ValidationExpression="^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$" ValidationGroup="grupo1">Error, ingrese un email valido</asp:RegularExpressionValidator>
                                </td>
                                <td class="auto-style41"></td>
                                <td class="auto-style42">
        <asp:Label ID="lblCelular" runat="server" Text="Tel/Celular:" Font-Size="Medium"></asp:Label>
                                </td>
                                <td class="auto-style40">
        <asp:TextBox ID="txtCelular" runat="server" CssClass="form-control" placeholder="Ingresar Celular"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="rfvTelefono" runat="server" ControlToValidate="txtCelular" Display="Dynamic" ErrorMessage="RequiredFieldValidator" ForeColor="Red" ValidationGroup="grupo1">Ingrese un número de teléfono</asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="revTelefono" runat="server" ControlToValidate="txtCelular" Display="Dynamic" ErrorMessage="RegularExpressionValidator" ForeColor="Red" ValidationExpression="^[0-9,$]*$" ValidationGroup="grupo1">Error, solo ingrese números</asp:RegularExpressionValidator>
                                </td>
                                <td class="auto-style41"></td>
                                <td class="auto-style43">
        <asp:Label ID="lblDireccion" runat="server" Text="Dirección:" Font-Size="Medium"></asp:Label>
                                </td>
                                <td class="auto-style44">
        <asp:TextBox ID="txtDireccion" runat="server" CssClass="form-control" placeholder="Ingresar Direccion" TextMode="MultiLine"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="rfv" runat="server" ControlToValidate="txtDireccion" Display="Dynamic" ErrorMessage="RequiredFieldValidator" ForeColor="Red" ValidationGroup="grupo1">Ingrese una dirección</asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style29">&nbsp;</td>
                                <td class="auto-style11">
                                    &nbsp;</td>
                                <td class="auto-style12">
                                    &nbsp;</td>
                                <td class="auto-style28">&nbsp;</td>
                                <td class="auto-style19">
                                    &nbsp;</td>
                                <td class="auto-style12">
                                    &nbsp;</td>
                                <td class="auto-style28">&nbsp;</td>
                                <td class="auto-style30">&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style29"></td>
                                <td class="auto-style11">
            <asp:Label ID="lblProvincia" runat="server" Text="Provincia:" Font-Size="Medium"></asp:Label>
                                </td>
                                <td class="auto-style12">
            <asp:DropDownList ID="ddlProvincia" runat="server" CssClass="form-control" AutoPostBack="True" OnSelectedIndexChanged="ddlProvincia_SelectedIndexChanged"></asp:DropDownList>
                                    <asp:RequiredFieldValidator ID="rfvProvincia" runat="server" ControlToValidate="ddlProvincia" Display="Dynamic" ErrorMessage="RequiredFieldValidator" ForeColor="Red" InitialValue="0" ValidationGroup="grupo1">Elija una Provincia</asp:RequiredFieldValidator>
                                </td>
                                <td class="auto-style28"></td>
                                <td class="auto-style19">
            <asp:Label ID="lblLocalidad" runat="server" Text="Localidad:" Font-Size="Medium"></asp:Label>
                                </td>
                                <td class="auto-style12">
            <asp:DropDownList ID="ddlLocalidad" runat="server" CssClass="form-control"></asp:DropDownList>
                                    <asp:RequiredFieldValidator ID="rfvLocalidad" runat="server" ControlToValidate="ddlLocalidad" Display="Dynamic" ErrorMessage="RequiredFieldValidator" ForeColor="Red" InitialValue="0" ValidationGroup="grupo1">Elija una Localidad</asp:RequiredFieldValidator>
                                </td>
                                <td class="auto-style28"></td>
                                <td class="auto-style30">&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style45"></td>
                                <td class="auto-style46">
                                    </td>
                                <td class="auto-style47">
                                    </td>
                                <td class="auto-style48"></td>
                                <td class="auto-style49">
                                    </td>
                                <td class="auto-style47">
                                    </td>
                                <td class="auto-style48"></td>
                                <td class="auto-style50"></td>
                                <td class="auto-style51"></td>
                            </tr>
                             <tr>
                                 <td class="auto-style31"></td>
                                 <td class="auto-style32">
                                     </td>
                                 <td class="auto-style33">
                                     </td>
                                 <td class="auto-style34"></td>
                                 <td class="auto-style35">
                                     </td>
                                 <td class="auto-style33">
                                     <asp:Button ID="btnGuardar" runat="server" Text="Guardar" OnClick="btnGuardar_Click" ValidationGroup="grupo1" />
                                 </td>
                                 <td class="auto-style34"></td>
                                 <td class="auto-style36">
                                     <asp:Label ID="lblMensaje" runat="server" Font-Size="Medium"></asp:Label>
                                 </td>
                                 <td class="auto-style37"></td>
                             </tr>
                             <tr>
                                 <td class="auto-style29">&nbsp;</td>
                                 <td class="auto-style11">

                                     &nbsp;</td>
                                 <td class="auto-style12">
                                     &nbsp;</td>
                                 <td class="auto-style28">&nbsp;</td>
                                 <td class="auto-style19">
                                     &nbsp;</td>
                                 <td class="auto-style12">
                                     &nbsp;</td>
                                 <td class="auto-style28">&nbsp;</td>
                                 <td class="auto-style30">&nbsp;</td>
                                 <td>&nbsp;</td>
                             </tr>
                        </table>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

                    </td>
                </tr>
                </table>
        </div>
    </form>
</body>
</html>