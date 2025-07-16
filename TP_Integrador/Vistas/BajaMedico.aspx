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
        .auto-style13 {
            width: 465px;
        }
        .auto-style14 {
            width: 496px;
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
                    <td class="auto-style6">&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style7">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style6">&nbsp;</td>
                    <td class="auto-style3">Apellido:</td>
                    <td class="auto-style4">
                              <asp:TextBox ID="txtApellido" 
                                  runat="server" 
                                  placeholder="Ingrese parte del apellido" Width="158px"></asp:TextBox>
                    
                             <asp:RegularExpressionValidator ID="revApellido" 
                                 runat="server"
                                 ControlToValidate="txtApellido" 
                                 Display="Dynamic"
                                 ErrorMessage="RegularExpressionValidator" 
                                 ForeColor="Red" ValidationExpression="^[a-zA-Z]+$" 
                                 ValidationGroup="grupo2">Error, solo texto
                             </asp:RegularExpressionValidator>

                    </td>
                    <td class="auto-style7">
                        <asp:Button ID="btn_buscarApellido" runat="server" Text="Filtrar" OnClick="btn_BuscarApellido_Click" ValidationGroup="grupo2" />
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style6">&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style4">
                        <asp:Label ID="lblMensajeApellido" runat="server" EnableTheming="True" ForeColor="Red"></asp:Label>
                    </td>
                    <td class="auto-style7">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                </table>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style13">&nbsp;</td>
                    <td class="auto-style14">
                        <asp:GridView ID="Grv_medicos" runat="server" AllowPaging="True" AutoGenerateSelectButton="True" PageSize="6" OnSelectedIndexChanged="Grv_medicos_SelectedIndexChanged" OnPageIndexChanging="Grv_medicos_PageIndexChanging" DataKeyNames="dni" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" >
                            <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
                            <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
                            <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
                            <RowStyle BackColor="White" ForeColor="#003399" />
                            <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                            <SortedAscendingCellStyle BackColor="#EDF6F6" />
                            <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
                            <SortedDescendingCellStyle BackColor="#D6DFDF" />
                            <SortedDescendingHeaderStyle BackColor="#002876" />
                        </asp:GridView>
                    </td>
                    <td>&nbsp;</td>
                </tr>
            </table>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style6">&nbsp;</td>
                    <td class="auto-style15">&nbsp;</td>
                    <td class="auto-style4">
                        <asp:Label ID="lblMensaje" runat="server" Font-Size="Medium"></asp:Label>
                    </td>
                    <td class="auto-style16">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style6">&nbsp;</td>
                    <td class="auto-style15">&nbsp;</td>
                    <td class="auto-style4">
                        <asp:Button ID="btnEliminar" runat="server" Text="Eliminar" OnClick="btnEliminar_Click" CausesValidation="false" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="btnCancelar" runat="server" Text="Cancelar" OnClick="btnCancelar_Click" CausesValidation="false"/>
                    </td>
                    <td class="auto-style16">
                        &nbsp;</td>
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