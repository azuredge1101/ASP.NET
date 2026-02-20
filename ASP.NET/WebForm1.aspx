<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="WebApplication1.WebForm1" %>

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
            <asp:Wizard ID="Wizard1" runat="server" ActiveStepIndex="0" BackColor="#E6E2D8" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" Height="496px" OnFinishButtonClick="Wizard1_FinishButtonClick" Width="972px">
                <HeaderStyle BackColor="#666666" BorderColor="#E6E2D8" BorderStyle="Solid" BorderWidth="2px" Font-Bold="True" Font-Size="0.9em" ForeColor="White" HorizontalAlign="Center" />
                <NavigationButtonStyle BackColor="White" BorderColor="#C5BBAF" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#1C5E55" />
                <SideBarButtonStyle ForeColor="White" />
                <SideBarStyle BackColor="#1C5E55" Font-Size="0.9em" VerticalAlign="Top" />
                <StepStyle BackColor="#F7F6F3" BorderColor="#E6E2D8" BorderStyle="Solid" BorderWidth="2px" />
                <WizardSteps>
                    <asp:WizardStep runat="server" title="Step 1">
                        您喜愛的品牌:<asp:TextBox ID="txtUser" runat="server"></asp:TextBox>
                        <br />
                        <br />
                        <br />
                        車款名稱:<asp:TextBox ID="txtPass" runat="server" Height="16px" Width="174px"></asp:TextBox>
                    </asp:WizardStep>
                    <asp:WizardStep runat="server" title="Step 2">
                        本網站提供國內外各種的機車資訊，提供各種品牌的車款。<br /> 
                        <br />
                        <br />
                        <br />
                        <img alt="比狂妄更狂妄DUCATI「Superleggera V4」 | Webike摩托新聞" src="https://news.webike.tw/wp-content/uploads/2020/02/2020-Superleggera-V4-06.jpg" />
                        <br />
                        <br />
                        <br />
                        <br />
                    </asp:WizardStep>
                    <asp:WizardStep runat="server" Title="Step 3">
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [haoyu]"></asp:SqlDataSource>
                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="品牌" DataSourceID="SqlDataSource1" OnRowCommand="GridView1_RowCommand">
                            <Columns>
                                <asp:HyperLinkField DataNavigateUrlFields="品牌" DataNavigateUrlFormatString="Details.aspx?No={0}" DataTextField="品牌" HeaderText="品牌" />
                                <asp:BoundField DataField="車款" HeaderText="車款" SortExpression="車款" />
                                <asp:BoundField DataField="類型" HeaderText="類型" SortExpression="類型" />
                                <asp:BoundField DataField="公升數" HeaderText="公升數" SortExpression="公升數" />
                                <asp:ImageField DataImageUrlField="車款" DataImageUrlFormatString="~/images/{0}small.gif" HeaderText="車款圖片">
                                </asp:ImageField>
                                <asp:BoundField DataField="介紹" HeaderText="介紹" SortExpression="介紹" />
                            </Columns>
                            <FooterStyle BackColor="White" ForeColor="#000066" />
                            <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                            <RowStyle ForeColor="#000066" />
                            <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                            <SortedAscendingCellStyle BackColor="#F1F1F1" />
                            <SortedAscendingHeaderStyle BackColor="#007DBB" />
                            <SortedDescendingCellStyle BackColor="#CAC9C9" />
                            <SortedDescendingHeaderStyle BackColor="#00547E" />
                        </asp:GridView>
                    </asp:WizardStep>
                </WizardSteps>
            </asp:Wizard>
            <br />
            <br />
            <br />
            <asp:Label ID="lblOutput" runat="server"></asp:Label>
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
        </div>
    </form>
</body>
</html>
