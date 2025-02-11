<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="D1094181017.aspx.cs" Inherits="D1094181017.D1094181017" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:CheckBox ID="CheckBox1" runat="server" OnCheckedChanged="CheckBox1_CheckedChanged" />
            <br />
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" />
            <br />
            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
            <br />
            <asp:CheckBoxList ID="CheckBoxList1" runat="server" OnSelectedIndexChanged="CheckBoxList1_SelectedIndexChanged">
                <asp:ListItem>CTa</asp:ListItem>
                <asp:ListItem>CTb</asp:ListItem>
                <asp:ListItem>CTc</asp:ListItem>
            </asp:CheckBoxList>
        </div>
        <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
        <br />
        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Button" />
        <br />
        <br />
        Add Item<br />
        <br />
        Text&nbsp;&nbsp;&nbsp; <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <br />
        <br />
        Value&nbsp; <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Button" />
        <br />
        <br />
        <asp:DropDownList ID="DropDownList1" runat="server" Height="16px" Width="96px">
            <asp:ListItem Value="DTav">DTa</asp:ListItem>
            <asp:ListItem Value="DTbv">DTb</asp:ListItem>
            <asp:ListItem Value="DTcv">DTc</asp:ListItem>
        </asp:DropDownList>
        <br />
        <br />
        <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="Button" />
        &nbsp;
        <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
        <br />
        <br />
        <asp:RadioButtonList ID="RadioButtonList1" runat="server" OnSelectedIndexChanged="RadioButtonList1_SelectedIndexChanged">
            <asp:ListItem Selected="True" Value="RTav">RTa</asp:ListItem>
            <asp:ListItem Value="RTbv">RTb</asp:ListItem>
            <asp:ListItem Value="RTcv">RTc</asp:ListItem>
        </asp:RadioButtonList>
        <br />
        <asp:Button ID="Button5" runat="server" OnClick="Button5_Click" Text="Button" />
        &nbsp;
        <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
    </form>
</body>
</html>