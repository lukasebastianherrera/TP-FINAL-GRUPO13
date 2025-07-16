<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ModificarMedico.aspx.cs" Inherits="Vistas.ModificarMedico" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style10 {
            width: 400px;
        }
        .auto-style12 {
            width: 661px;
        }
        .auto-style13 {
            width: 170px;
        }
        .auto-style14 {
            width: 351px;
        }
    </style>
    </head>
<body>
    <form id="form1" runat="server">
        <div style="font-weight: bold;" >
           
            <table class="auto-style1">
                <tr>
                    <td class="auto-style10">
            <asp:HyperLink ID="hlVolver" runat="server" Font-Size="Medium" NavigateUrl="~/ABLMedicos.aspx" Font-Bold="False" ForeColor="Blue">Volver</asp:HyperLink>
                    </td>
                    <td class="auto-style13">&nbsp;</td>
                    <td class="auto-style12">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style10">&nbsp;</td>
                    <td class="auto-style13">&nbsp;</td>
                    <td class="auto-style12">
                        <asp:Label ID="lblModificarMedico" runat="server" Font-Size="XX-Large" Text="Modificar Médico"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="lblAdministrador" runat="server" Text="NombreAdmin" Font-Bold="False" Font-Size="Medium"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style10">&nbsp;</td>
                    <td class="auto-style13">&nbsp;</td>
                    <td class="auto-style12">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style10">&nbsp;</td>
                    <td class="auto-style13">
                        <asp:Label ID="lblDNI" runat="server" Font-Bold="False" Font-Size="Medium" Text="DNI del Médico:"></asp:Label>
                    </td>
                    <td class="auto-style12">
             <asp:TextBox ID="txtDni" runat="server" placeholder = " Ingresar DNI"></asp:TextBox>
                    &nbsp;<asp:RequiredFieldValidator 
                          ID="rfvDni" 
                          runat="server" 
                          ControlToValidate="txtDni" 
                          ErrorMessage="El DNI es obligatorio." 
                          ForeColor="Red" 
                          Display="Dynamic" 
                          SetFocusOnError="True" Font-Bold="False" />
                      
                      
                                    <asp:RegularExpressionValidator ID="revDni" runat="server" ControlToValidate="txtDni" Display="Dynamic" ErrorMessage="RegularExpressionValidator" ForeColor="Red" ValidationExpression="^\d{8}$" ValidationGroup="grupo1" Font-Bold="False">Debe ingresar 8 dígitos</asp:RegularExpressionValidator>
                                             
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
             <asp:Button ID="btnBuscarMedico" runat="server" Text="Buscar" />  
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style10">&nbsp;</td>
                    <td class="auto-style13">&nbsp;</td>
                    <td class="auto-style12">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                </table>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style14">&nbsp;</td>
                    <td>

                        <asp:GridView ID="gvMedico" runat="server" AutoGenerateColumns="False" AutoGenerateEditButton="True" CellPadding="4" Height="69px" OnRowCancelingEdit="gvMedico_RowCancelingEdit" OnRowEditing="gvMedico_RowEditing" OnRowUpdating="gvMedico_RowUpdating" Width="335px" OnRowDataBound="gvMedico_RowDataBound" AllowPaging="True" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" OnPageIndexChanging="gvMedico_PageIndexChanging" PageSize="3">
                            <Columns>
                                <asp:TemplateField HeaderText="Nombre">
                                    <EditItemTemplate>
                                        <asp:TextBox ID="txt_eit_Nombre" runat="server" Text='<%# Bind("Nombre") %>'></asp:TextBox>
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                        <asp:Label ID="lbl_it_Nombre" runat="server" Text='<%# Eval("Nombre") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Apellido">
                                    <EditItemTemplate>
                                        <asp:TextBox ID="txt_eit_Apellido" runat="server" Text='<%# Bind("Apellido") %>'></asp:TextBox>
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                        <asp:Label ID="lbl_it_Apellido" runat="server" Text='<%# Eval("Apellido") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="DNI">
                                    <EditItemTemplate>
                                        <asp:Label ID="lbl_eit_DNI" runat="server" Text='<%# Bind("DNI") %>'></asp:Label>
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                        <asp:Label ID="lbl_it_DNI" runat="server" Text='<%# Eval("DNI") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Legajo">
                                    <EditItemTemplate>
                                        <asp:TextBox ID="txt_eit_Legajo" runat="server" Text='<%# Bind("Legajo") %>'></asp:TextBox>
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                        <asp:Label ID="lbl_it_Legajo" runat="server" Text='<%# Eval("Legajo") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="ID Especialidad">
                                    <EditItemTemplate>
                                        <asp:TextBox ID="txt_eit_IdEspecialidad" runat="server" Text='<%# Bind("[Id Especialidad]") %>'></asp:TextBox>
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                        <asp:Label ID="lbl_IdEspecialidad" runat="server" Text='<%# Eval("[Id Especialidad]") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Especialidad">
                                    <EditItemTemplate>
                                        <asp:DropDownList
                                          ID="ddlEspecialidad"
                                          runat="server"
                                          DataTextField="Especialidad"
                                          DataValueField="[Id Especialidad]">
                                        </asp:DropDownList>
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                        <asp:Label ID="lbl_Especialidad" runat="server" Text='<%# Eval("Especialidad") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Estado">
                                    <EditItemTemplate>
                                        <asp:CheckBox ID="cb_eit_Estado" runat="server" Checked='<%# Bind("Estado") %>' />
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                        <asp:CheckBox ID="cb_it_Estado" runat="server" Checked='<%# Eval("Estado") %>' Enabled="false" />
                                    </ItemTemplate>
                                </asp:TemplateField>
                            </Columns>
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
                <tr>
                    <td class="auto-style14">&nbsp;</td>
                    <td>
                        <asp:Label ID="LabelPrueba" runat="server"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style14">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
            <br />
            <br />
           
        </div>
    </form>
</body>
</html>
