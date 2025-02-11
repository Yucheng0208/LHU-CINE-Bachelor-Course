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
            學號：D1094181017<br />
            姓名：張育丞</div>
        <asp:Label ID="Label1" runat="server" Text="請輸入身分證字號："></asp:Label>
&nbsp;
        <asp:TextBox ID="TextBox1" runat="server" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
&nbsp;
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="驗證" />
        <br />
        <br />
        <asp:Label ID="Label2" runat="server" Text="認證結果： "></asp:Label>
    </form>
</body>
</html>
