<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AltaPaciente.aspx.cs" Inherits="Vistas.AltaPaciente" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div style="font-size: xx-large; font-weight: bold">
            Añadir Paciente
        </div>
    
    <div class="form-group">
        <asp:Label ID="lblNombre" runat="server" Text="Nombre:" CssClass="form-label"></asp:Label>
        <asp:TextBox ID="txtNombre" runat="server" CssClass="form-control" placeholder="Ingresar Nombre"></asp:TextBox>
    </div> <br />
    <div class="form-group">
        <asp:Label ID="lblApellido" runat="server" Text="Apellido:" CssClass="form-label"></asp:Label>
        <asp:TextBox ID="txtApellido" runat="server" CssClasss="form-control" placeholder="Ingresar Apellido "></asp:TextBox>
    </div> <br />
    <div class="form-group">
        <asp:Label ID="lblDni" runat="server" Text="DNI:" CssClass="form-label"></asp:Label>
        <asp:TextBox ID="txtDni" runat="server" CssClass="form-control" placeholder="Ingresar DNI"></asp:TextBox>
    </div> <br />
    <div class="form-group">
        <asp:Label ID="lblEmail" runat="server" Text="E-mail:" CssClass="form-label"></asp:Label>
        <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" placeholder="Ingresar Correo"></asp:TextBox>
    </div> <br />
    <div class="form-group">
        <asp:Label ID="lblCelular" runat="server" Text="Tel/Celular:" CssClass="form-label"></asp:Label>
        <asp:TextBox ID="txtCelular" runat="server" CssClass="form-control" placeholder="Ingresar Celular"></asp:TextBox>
    </div> <br />
    <div class="form-group">
        <asp:Label ID="lblNacionalidad" runat="server" Text="Nacionalidad:" CssClass="form-label"></asp:Label>
        <asp:TextBox ID="txtNacionalidad" runat="server" CssClass="form-control" placeholder="Ingresar Nacionalidad"></asp:TextBox>
    </div> <br />
    <div class="form-group">
        <asp:Label ID="lblDireccion" runat="server" Text="Dirección:" CssClass="form-label"></asp:Label>
        <asp:TextBox ID="txtDireccion" runat="server" CssClass="form-control" placeholder="Ingresar Direccion"></asp:TextBox>
    </div> <br />
    <div class="form-group">
        <asp:Label ID="lblFechaNacimiento" runat="server" Text="Fecha de Nacimiento:" CssClass="form-label"></asp:Label>
        <div class="form-columns">
            <asp:DropDownList ID="ddlDia" runat="server" CssClass="form-control">
                <asp:ListItem Value="0">Seleccionar Día</asp:ListItem>
            </asp:DropDownList>
            <asp:DropDownList ID="ddlMes" runat="server" CssClass="form-control">
                <asp:ListItem Text="Seleccionar Mes" Value="0" />
            </asp:DropDownList>
            <asp:DropDownList ID="ddlAño" runat="server" CssClass="form-control">
                <asp:ListItem Text="Seleccionar Año" Value="0" />
            </asp:DropDownList>
        </div> <br />
    </div> <br />
        <div class="form-group">
            <asp:Label ID="lblSexo" runat="server" Text="Sexo:" CssClass="form-label"></asp:Label>
            <asp:DropDownList ID="ddlSexo" runat="server" CssClass="form-control" OnSelectedIndexChanged="ddlSexo_SelectedIndexChanged">
                <asp:ListItem Value="0">Seleccionar Sexo</asp:ListItem>
                <asp:ListItem Value="M">Masculino</asp:ListItem>
                <asp:ListItem Value="F">Femenino</asp:ListItem>
            </asp:DropDownList>
        </div> <br />
        <div class="form-group">
            <asp:Label ID="lblProvincia" runat="server" Text="Provincia:" CssClass="form-label"></asp:Label>
            <asp:DropDownList ID="ddlProvincia" runat="server" CssClass="form-control" AutoPostBack="True"></asp:DropDownList>
        </div> <br />
        <div class="form-group">
            <asp:Label ID="lblLocalidad" runat="server" Text="Localidad:" CssClass="form-label"></asp:Label>
            <asp:DropDownList ID="ddlLocalidad" runat="server" CssClass="form-control"></asp:DropDownList>
        </div> <br />
        <div>

            <asp:Button ID="btnAtras" runat="server" PostBackUrl="~/ABMLPacientes.aspx" Text="Atrás" />

        </div>
        </form>
</body>
</html>