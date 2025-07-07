<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AltaMedico.aspx.cs" Inherits="Vistas.ABMLmedicos" %>

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
            width: 151px;
        }
        .auto-style12 {
            width: 240px;
        }
        .auto-style15 {
            width: 240px;
            height: 29px;
        }
        .auto-style16 {
            height: 29px;
        }
        .auto-style19 {
            width: 121px;
        }
        .auto-style20 {
            width: 121px;
            height: 29px;
        }
        .auto-style24 {
            width: 309px;
        }
        .auto-style25 {
            width: 774px;
        }
        .auto-style27 {
            width: 75px;
            height: 29px;
        }
        .auto-style28 {
            width: 50px;
        }
        .auto-style29 {
            width: 50px;
            height: 29px;
        }
        .auto-style31 {
            width: 174px;
            height: 29px;
        }
        .auto-style38 {
            width: 175px;
        }
        .auto-style40 {
            width: 64px;
        }
        .auto-style41 {
            width: 60px;
        }
        .auto-style44 {
            width: 313px;
        }
        .auto-style46 {
            width: 75px;
            height: 23px;
        }
        .auto-style48 {
            width: 240px;
            height: 23px;
        }
        .auto-style49 {
            width: 50px;
            height: 23px;
        }
        .auto-style50 {
            width: 121px;
            height: 23px;
        }
        .auto-style51 {
            width: 174px;
            height: 23px;
        }
        .auto-style52 {
            height: 23px;
        }
        .auto-style53 {
            width: 75px;
            height: 127px;
        }
        .auto-style55 {
            width: 240px;
            height: 127px;
        }
        .auto-style56 {
            width: 50px;
            height: 127px;
        }
        .auto-style57 {
            width: 121px;
            height: 127px;
        }
        .auto-style58 {
            width: 174px;
            height: 127px;
        }
        .auto-style59 {
            height: 127px;
        }
        .auto-style60 {
            width: 75px;
        }
        .auto-style61 {
            width: 120px;
        }
        .auto-style62 {
            width: 120px;
            height: 29px;
        }
        .auto-style63 {
            width: 120px;
            height: 127px;
        }
        .auto-style64 {
            width: 120px;
            height: 23px;
        }
        .auto-style65 {
            width: 174px;
        }
        .auto-style66 {
            width: 581px;
        }
        .auto-style67 {
            width: 242px;
        }
        .auto-style68 {
            width: 75px;
            height: 33px;
        }
        .auto-style69 {
            width: 581px;
            height: 33px;
        }
        .auto-style70 {
            width: 242px;
            height: 33px;
        }
        .auto-style71 {
            height: 33px;
        }
        .auto-style72 {
            width: 351px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td >
                        <table class="auto-style1">
                            <tr>
                                <td class="auto-style44">
                                    <asp:HyperLink ID="hlVolver" runat="server" NavigateUrl="~/ABLMedicos.aspx" ForeColor="Blue">Volver</asp:HyperLink>
                                </td>
                                <td class="auto-style24">&nbsp;</td>
                                <td class="auto-style25">&nbsp;</td>
                                <td>
                                    &nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style44">
                                    &nbsp;</td>
                                <td class="auto-style24">&nbsp;</td>
                                <td class="auto-style25">
                                    <asp:Label ID="lblAltaMedico" runat="server" Font-Bold="True" Font-Size="XX-Large" Text="Añadir Médico"></asp:Label>
                                </td>
                                <td>
                                    <asp:Label ID="lblAdministrador" runat="server" Font-Size="Medium">NombreAdmin</asp:Label>
                                </td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style44">&nbsp;</td>
                                <td class="auto-style24">&nbsp;</td>
                                <td class="auto-style25">&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                        </table>
                        <table class="auto-style1">
                            <tr>
                                <td class="auto-style60">&nbsp;</td>
                                <td class="auto-style61">
                                    <asp:Label ID="lblLegajo" runat="server" Font-Size="Medium" Text="Legajo:"></asp:Label>
                                </td>
                                <td class="auto-style12">
                        <asp:TextBox ID="TxtLegajo" runat="server" placeholder="Ingresar Legajo"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="rfvLegajo" runat="server" ControlToValidate="TxtLegajo" Display="Dynamic" ErrorMessage="RequiredFieldValidator" ForeColor="Red" ValidationGroup="grupo1">Ingrese Legajo</asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="revDni0" runat="server" ControlToValidate="TxtLegajo" Display="Dynamic" ErrorMessage="RegularExpressionValidator" ForeColor="Red" ValidationExpression="^[A-Za-z0-9]{5}$" ValidationGroup="grupo1">Debe tener 5 caracteres</asp:RegularExpressionValidator>
                                </td>
                                <td class="auto-style28">&nbsp;</td>
                                <td class="auto-style19">
                                    <asp:Label ID="lblNombre" runat="server" Font-Size="Medium" Text="Nombre:"></asp:Label>
                                </td>
                                <td class="auto-style12">
                        <asp:TextBox ID="TxtNombre" runat="server" placeholder="Ingresar nombre"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="rfvNombre" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="TxtNombre" Display="Dynamic" ForeColor="Red" ValidationGroup="grupo1">Ingrese un nombre</asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="revNombre" runat="server" ControlToValidate="TxtNombre" Display="Dynamic" ErrorMessage="RegularExpressionValidator" ForeColor="Red" ValidationExpression="^[a-zA-Z]+$" ValidationGroup="grupo1">Error, solo letras</asp:RegularExpressionValidator>
                                </td>
                                <td class="auto-style28">&nbsp;</td>
                                <td class="auto-style65">
                                    <asp:Label ID="lblApellido" runat="server" Font-Size="Medium" Text="Apellido:"></asp:Label>
                                </td>
                                <td>
                        <asp:TextBox ID="TxtApellido" runat="server" placeholder="Ingresar apellido"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="rfvApellido" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="TxtApellido" Display="Dynamic" ForeColor="Red" ValidationGroup="grupo1">Ingrese un apellido</asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ControlToValidate="TxtApellido" Display="Dynamic" ErrorMessage="RegularExpressionValidator" ForeColor="Red" ValidationExpression="^[a-zA-Z]+$" ValidationGroup="grupo1">Error, solo letras</asp:RegularExpressionValidator>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style27"></td>
                                <td class="auto-style62"></td>
                                <td class="auto-style15"></td>
                                <td class="auto-style29"></td>
                                <td class="auto-style20"></td>
                                <td class="auto-style15"></td>
                                <td class="auto-style29"></td>
                                <td class="auto-style31"></td>
                                <td class="auto-style16"></td>
                            </tr>
                            <tr>
                                <td class="auto-style53"></td>
                                <td class="auto-style63">
                                    <asp:Label ID="lblDNI" runat="server" Font-Size="Medium" Text="DNI:"></asp:Label>
                                </td>
                                <td class="auto-style55">
                        <asp:TextBox ID="TxtDNI" runat="server" placeholder="Ingresar DNI"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="rfvDni" runat="server" ControlToValidate="TxtDNI" Display="Dynamic" ErrorMessage="RequiredFieldValidator" ForeColor="Red" ValidationGroup="grupo1">Ingrese DNI</asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="revDni" runat="server" ControlToValidate="TxtDNI" Display="Dynamic" ErrorMessage="RegularExpressionValidator" ForeColor="Red" ValidationExpression="^\d{8}$" ValidationGroup="grupo1">Debe ingresar 8 dígitos</asp:RegularExpressionValidator>
                                </td>
                                <td class="auto-style56"></td>
                                <td class="auto-style57">
                                    <asp:Label ID="lblSexo" runat="server" Font-Size="Medium" Text="Sexo:"></asp:Label>
                                </td>
                                <td class="auto-style55">
                        <asp:DropDownList ID="ddlSexo" runat="server" >
                            <asp:ListItem Value="0">Seleccionar sexo</asp:ListItem>
                            <asp:ListItem Value="Masculino">Masculino</asp:ListItem>
                            <asp:ListItem Value="Femenino">Femenino</asp:ListItem>
                        </asp:DropDownList>
                                    <asp:RequiredFieldValidator ID="rfvSexo" runat="server" ControlToValidate="ddlSexo" Display="Dynamic" ErrorMessage="RequiredFieldValidator" ForeColor="Red" InitialValue="0" ValidationGroup="grupo1">Elija un sexo</asp:RequiredFieldValidator>
                                </td>
                                <td class="auto-style56"></td>
                                <td class="auto-style58">
        <asp:Label ID="lblFechaNacimiento" runat="server" Text="Fecha de Nacimiento:" Font-Size="Medium"></asp:Label>
                                </td>
                                <td class="auto-style59">
                                    <asp:DropDownList ID="ddlDia" runat="server" CssClass="form-control" >
                                        <asp:ListItem Value="0">Seleccionar Día</asp:ListItem>
                                    </asp:DropDownList>
                                    <asp:RequiredFieldValidator ID="rfvDia" runat="server" ControlToValidate="ddlDia" Display="Dynamic" ErrorMessage="RequiredFieldValidator" ForeColor="Red" InitialValue="0" ValidationGroup="grupo1">Elija un día</asp:RequiredFieldValidator>
                                    <asp:DropDownList ID="ddlMes" runat="server" CssClass="form-control">
                                        <asp:ListItem Text="Seleccionar Mes" Value="0" />
                                    </asp:DropDownList>
                                    <asp:RequiredFieldValidator ID="rfvMes" runat="server" ControlToValidate="ddlMes" Display="Dynamic" ErrorMessage="RequiredFieldValidator" ForeColor="Red" InitialValue="0" ValidationGroup="grupo1">Elija un Mes</asp:RequiredFieldValidator>
                                    <asp:DropDownList ID="ddlAño" runat="server" CssClass="form-control">
                                        <asp:ListItem Text="Seleccionar Año" Value="0" />
                                    </asp:DropDownList>
                                    <asp:RequiredFieldValidator ID="rfvAnio" runat="server" ControlToValidate="ddlAño" Display="Dynamic" ErrorMessage="RequiredFieldValidator" ForeColor="Red" InitialValue="0" ValidationGroup="grupo1">Elija un Año</asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style46"></td>
                                <td class="auto-style64"></td>
                                <td class="auto-style48"></td>
                                <td class="auto-style49"></td>
                                <td class="auto-style50">
                                    </td>
                                <td class="auto-style48">
                                    </td>
                                <td class="auto-style49"></td>
                                <td class="auto-style51"></td>
                                <td class="auto-style52"></td>
                            </tr>
                            <tr>
                                <td class="auto-style60"></td>
                                <td class="auto-style61">
                                    <asp:Label ID="lblNacionalidad" runat="server" Font-Size="Medium" Text="Nacionalidad:"></asp:Label>
                                </td>
                                <td class="auto-style12">
                        <asp:DropDownList ID="DdlNacionalidad" runat="server">
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
                                    <asp:RequiredFieldValidator ID="rfvNacionalidad" runat="server" ControlToValidate="DdlNacionalidad" Display="Dynamic" ErrorMessage="RequiredFieldValidator" ForeColor="Red" InitialValue="0" ValidationGroup="grupo1">Elija una Nacionalidad</asp:RequiredFieldValidator>
                                </td>
                                <td class="auto-style28"></td>
                                    <td class="auto-style19">
                                        <asp:Label ID="lblDireccion" runat="server" Text="Dirección:" Font-Size="Medium"></asp:Label>
                                                                </td>
                                                                <td class="auto-style12">
                                        <asp:TextBox ID="txtDireccion" runat="server" CssClass="form-control" placeholder="Ingresar Direccion" TextMode="MultiLine"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="rfv" runat="server" ControlToValidate="txtDireccion" Display="Dynamic" ErrorMessage="RequiredFieldValidator" ForeColor="Red" ValidationGroup="grupo1">Ingrese una dirección</asp:RequiredFieldValidator>
                                                                </td>
                                                                <td class="auto-style28"></td>
                                                                <td class="auto-style65">
                                        <asp:Label ID="lblEmail" runat="server" Text="E-mail:" Font-Bold="False" Font-Size="Medium"></asp:Label>
                                                                </td>
                                                                <td>
                                        <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" placeholder="Ingresar Correo"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="rfvEmail" runat="server" ControlToValidate="txtEmail" Display="Dynamic" ErrorMessage="RequiredFieldValidator" ForeColor="Red" ValidationGroup="grupo1">Ingrese un email</asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="revEmail" runat="server" ControlToValidate="txtEmail" Display="Dynamic" ErrorMessage="RegularExpressionValidator" ForeColor="Red" ValidationExpression="^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$" ValidationGroup="grupo1">Error, ingrese un email valido</asp:RegularExpressionValidator>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style60">&nbsp;</td>
                                <td class="auto-style61">&nbsp;</td>
                                <td class="auto-style12">&nbsp;</td>
                                <td class="auto-style28">&nbsp;</td>
                                <td class="auto-style19">&nbsp;</td>
                                <td class="auto-style12">&nbsp;</td>
                                <td class="auto-style28">&nbsp;</td>
                                <td class="auto-style65">&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style60">&nbsp;</td>
                                <td class="auto-style61">
                <asp:Label ID="lblProvincia" runat="server" Text="Provincia:" Font-Size="Medium"></asp:Label>
                                    </td>
                                    <td class="auto-style12">
                <asp:DropDownList ID="ddlProvincia" runat="server" CssClass="form-control" AutoPostBack="True" OnSelectedIndexChanged="ddlProvincia_SelectedIndexChanged1"></asp:DropDownList>
                                    <asp:RequiredFieldValidator ID="rfvProvincia" runat="server" ControlToValidate="ddlProvincia" Display="Dynamic" ErrorMessage="RequiredFieldValidator" ForeColor="Red" InitialValue="0" ValidationGroup="grupo1">Elija una Provincia</asp:RequiredFieldValidator>
                                    </td>
                                    <td class="auto-style28">&nbsp;</td>
                                    <td class="auto-style19">
                <asp:Label ID="lblLocalidad" runat="server" Text="Localidad:" Font-Size="Medium"></asp:Label>
                                    </td>
                                    <td class="auto-style12">
                <asp:DropDownList ID="ddlLocalidad" runat="server" CssClass="form-control"></asp:DropDownList>
                                    <asp:RequiredFieldValidator ID="rfvLocalidad" runat="server" ControlToValidate="ddlLocalidad" Display="Dynamic" ErrorMessage="RequiredFieldValidator" ForeColor="Red" InitialValue="0" ValidationGroup="grupo1">Elija una Localidad</asp:RequiredFieldValidator>
                                    </td>
                                    <td class="auto-style28">&nbsp;</td>
                                    <td class="auto-style65">
            <asp:Label ID="lblCelular" runat="server" Text="Tel/Celular:" Font-Size="Medium"></asp:Label>
                                    </td>
                                    <td>
            <asp:TextBox ID="txtCelular" runat="server" CssClass="form-control" placeholder="Ingresar Celular"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="rfvTelefono" runat="server" ControlToValidate="txtCelular" Display="Dynamic" ErrorMessage="RequiredFieldValidator" ForeColor="Red" ValidationGroup="grupo1">Ingrese un número de teléfono</asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="revTelefono" runat="server" ControlToValidate="txtCelular" Display="Dynamic" ErrorMessage="RegularExpressionValidator" ForeColor="Red" ValidationExpression="^\d{10}$" ValidationGroup="grupo1">Debe ingresar 10 dígitos</asp:RegularExpressionValidator>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style60">&nbsp;</td>
                                <td class="auto-style61">
                                    &nbsp;</td>
                                <td class="auto-style12">
                                    &nbsp;</td>
                                <td class="auto-style28">&nbsp;</td>
                                <td class="auto-style19">
                                    &nbsp;</td>
                                <td class="auto-style12">
                                    &nbsp;</td>
                                <td class="auto-style28">&nbsp;</td>
                                <td class="auto-style65">&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style60"></td>
                                <td class="auto-style61">
                                    <asp:Label ID="lblEspecialidad" runat="server" Font-Size="Medium" Text="Especialidad:"></asp:Label>
                                </td>
                                <td class="auto-style12">
                        <asp:DropDownList ID="DdlEspecialidad" runat="server">
                        </asp:DropDownList>
                                    <asp:RequiredFieldValidator ID="rfvEspecialidad" runat="server" ControlToValidate="DdlEspecialidad" Display="Dynamic" ErrorMessage="RequiredFieldValidator" ForeColor="Red" InitialValue="0" ValidationGroup="grupo1">Elija una Especialidad</asp:RequiredFieldValidator>
                                </td>
                                <td class="auto-style28"></td>
                                <td class="auto-style19"></td>
                                <td class="auto-style12"></td>
                                <td class="auto-style28"></td>
                                <td class="auto-style65"></td>
                                <td></td>
                            </tr>
                            
                        </table>
                        <table class="auto-style1">
                            <tr>
                                <td class="auto-style60">&nbsp;</td>
                                <td class="auto-style11">
                                    &nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style60">&nbsp;</td>
                                <td class="auto-style11">
                                    <asp:Label ID="lblDiasAtencion" runat="server" Font-Size="Medium" Text="Días de atención:"></asp:Label>
                                </td>
                                <td>
                                    <asp:CheckBoxList ID="cblDias" runat="server" RepeatDirection="Horizontal" Font-Size="Medium" ValidationGroup="grupo1">
                                        <asp:ListItem Value="1">Lunes</asp:ListItem>
                                        <asp:ListItem Value="2">Martes</asp:ListItem>
                                        <asp:ListItem Value="3">Miércoles</asp:ListItem>
                                        <asp:ListItem Value="4">Jueves</asp:ListItem>
                                        <asp:ListItem Value="5">Viernes</asp:ListItem>
                                        <asp:ListItem Value="6">Sábado</asp:ListItem>
                                    </asp:CheckBoxList>
                                    <asp:Label ID="lblErrorDias" runat="server" ForeColor="Red"></asp:Label>
                                </td>
                            </tr>
                            </table>
                        <table class="auto-style1">
                            <tr>
                                <td class="auto-style60">&nbsp;</td>
                                <td class="auto-style38">&nbsp;</td>
                                <td class="auto-style41">&nbsp;</td>
                                <td class="auto-style72">&nbsp;</td>
                                <td class="auto-style40">&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style60">&nbsp;</td>
                                <td class="auto-style38">
                                    <asp:Label ID="lblHorarioAtencion" runat="server" Font-Size="Medium" Text="Horario de atención:"></asp:Label>
                                </td>
                                <td class="auto-style41">&nbsp;</td>
                                <td class="auto-style72">
                                    <asp:Label ID="lblErrorHorario" runat="server" ForeColor="Red"></asp:Label>
                                </td>
                                <td class="auto-style40">&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style60">&nbsp;</td>
                                <td class="auto-style38">&nbsp;</td>
                                <td class="auto-style41">
                                    <asp:Label ID="lblDesde" runat="server" Font-Size="Medium" Text="Desde:"></asp:Label>
                                </td>
                                <td class="auto-style72">
                                    <asp:TextBox ID="txtDesde" runat="server" placeholder="Ingresar horario" TextMode="Time"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="rfvDesde" runat="server" ControlToValidate="txtDesde" Display="Dynamic" ErrorMessage="RequiredFieldValidator" ForeColor="Red" ValidationGroup="grupo1">Ingrese una hora</asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="revDesde" runat="server" ControlToValidate="txtDesde" Display="Dynamic" ErrorMessage="RegularExpressionValidator" ForeColor="Red" ValidationExpression="^([01]?\d|2[0-3]):[0-5]\d$" ValidationGroup="grupo1">Error, solo ingrese números</asp:RegularExpressionValidator>
                                </td>
                                <td class="auto-style40">
                                    <asp:Label ID="lblHasta" runat="server" Font-Size="Medium" Text="Hasta:"></asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="txtHasta" runat="server" placeholder="Ingresar horario" TextMode="Time"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="rfvHasta" runat="server" ControlToValidate="txtHasta" Display="Dynamic" ErrorMessage="RequiredFieldValidator" ForeColor="Red" ValidationGroup="grupo1">Ingrese una hora</asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="revHasta" runat="server" ControlToValidate="txtHasta" Display="Dynamic" ErrorMessage="RegularExpressionValidator" ForeColor="Red" ValidationExpression="^([01]?\d|2[0-3]):[0-5]\d$" ValidationGroup="grupo1">Error, solo ingrese números</asp:RegularExpressionValidator>
                                </td>
                            </tr>
                        </table>
                        <table class="auto-style1">
                            <tr>
                                <td class="auto-style60">&nbsp;</td>
                                <td class="auto-style66">&nbsp;</td>
                                <td class="auto-style67">&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style68"></td>
                                <td class="auto-style69"></td>
                                <td class="auto-style70"><asp:Button ID="btnGuardar" runat="server" Text="Guardar" ValidationGroup="grupo1" OnClick="btnGuardar_Click" />
                                 </td>
                                <td class="auto-style71"><asp:Label ID="lblMensaje" runat="server" Font-Size="Medium"></asp:Label>
                                 </td>
                                <td class="auto-style71"></td>
                            </tr>
                            <tr>
                                <td class="auto-style60">&nbsp;</td>
                                <td class="auto-style66">
                                    &nbsp;</td>
                                <td class="auto-style67">&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                        </table>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                </tr>
                </table>

        </div>
    </form>
</body>
</html>
