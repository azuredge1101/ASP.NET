<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="WebApplication11.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <br />
            <br />
            <asp:Panel ID="Panel1" runat="server" GroupingText="主餐">
                <asp:CheckBox ID="chkSandwich" runat="server" Text="三明治" />
                &nbsp;數量:<asp:TextBox ID="txtQuantity" runat="server"></asp:TextBox>
                &nbsp;&nbsp;
                <asp:CheckBox ID="chkHamburger" runat="server" Text="漢堡" />
                &nbsp;數量:<asp:TextBox ID="txt1Quantity" runat="server"></asp:TextBox>
            </asp:Panel>
            <br />
            <br />
            <br />
            <asp:Panel ID="Panel2" runat="server" GroupingText="飲料">
                <asp:CheckBox ID="chkSoymilk" runat="server" Text="豆漿" />
                &nbsp;數量:<asp:TextBox ID="txt2Quantity" runat="server"></asp:TextBox>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:CheckBox ID="chkMilktea" runat="server" Text="奶茶" />
                &nbsp;數量:<asp:TextBox ID="txt3Quantity" runat="server"></asp:TextBox>
            </asp:Panel>
            <br />
            <br />
            <br />
            <asp:Panel ID="Panel3" runat="server" GroupingText="選購">
                <asp:CheckBox ID="chkTopioca" runat="server" Text="珍珠" />
            </asp:Panel>
            <br />
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="確認" />
            <br />
            <br />
            <br />
            <br />
            <br />
            <asp:Label ID="lblOutput" runat="server"></asp:Label>
            <br />
            <br />
            <br />
            <br />
        </div>
    </form>
</body>
</html>
