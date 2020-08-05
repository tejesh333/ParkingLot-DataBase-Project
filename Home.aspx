<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="ParkingLot.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Find my parking place</title>
    <link href="ParkingLotStyleSheet.css" rel="stylesheet" type="text/css" />
</head>
<body style="height:100%">
    <form id="form1" runat="server">
        <div>
            <header id="main-header">
                <div class="box-1">
                    <h1>Find my parking place</h1>
                </div>
            </header>
            <nav>
                <div class="container-nav">

                </div>
            </nav>
            <main>
                <div class="container-main">
                    <table>
                        <tr style="height:30px">
                            <td>
                                <asp:Label ID="Label1" runat="server" Height="50px" Text="Enter query here : " Font-Size="30px" Width="250px"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="queryTxt" runat="server" Width="700px" Height="50px" Font-Size="20px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2">
                                &nbsp;
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2">
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:Button ID="submitBtn" runat="server" Text="Submit" Height="50px" OnClick="submitBtn_Click" Width="100px" />
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:Button ID="resetBtn" runat="server" Text="Reset" Height="50px" OnClick="resetBtn_Click" Width="100px" />
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2">
                                &nbsp;
                            </td>
                        </tr>
                        </table>
                </div>
                <div class="container-grid" style="text-align:center; align-content:center; align-items:center; align-self:center">

                    <asp:GridView ID="resultGrid" runat="server" CellPadding="4" ForeColor="Black" HorizontalAlign="Center" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellSpacing="2" Width="75%">
                        <FooterStyle BackColor="#CCCCCC" />
                        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
                        <RowStyle BackColor="White" />
                        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                        <SortedAscendingCellStyle BackColor="#F1F1F1" />
                        <SortedAscendingHeaderStyle BackColor="#808080" />
                        <SortedDescendingCellStyle BackColor="#CAC9C9" />
                        <SortedDescendingHeaderStyle BackColor="#383838" />
                    </asp:GridView>

                </div>
                <div class="container-main">
                    
                    <asp:Label ID="errorLbl" runat="server" Height="50px" Text="Something went wrong " Font-Size="50px" Width="1000px" Font-Bold="True" ForeColor="Red" Visible="False"></asp:Label>
                </div>
            </main>
        </div>
    </form>
</body>
</html>
