<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Details.aspx.cs" Inherits="WebApplication1.Details" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="品牌" DataSourceID="SqlDataSource1" Height="50px" Width="125px">
                <Fields>
                    <asp:BoundField DataField="品牌" HeaderText="品牌" ReadOnly="True" SortExpression="品牌" />
                    <asp:BoundField DataField="車款" HeaderText="車款" SortExpression="車款" />
                    <asp:BoundField DataField="類型" HeaderText="類型" SortExpression="類型" />
                    <asp:BoundField DataField="公升數" HeaderText="公升數" SortExpression="公升數" />
                    <asp:BoundField DataField="介紹" HeaderText="介紹" SortExpression="介紹" />
                </Fields>
            </asp:DetailsView>
            <br />
            <br />
            <br />
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [haoyu] WHERE ([品牌] = @品牌)">
                <SelectParameters>
                    <asp:QueryStringParameter Name="品牌" QueryStringField="No" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
            <br />
            <br />
        </div>
    </form>
</body>
</html>
