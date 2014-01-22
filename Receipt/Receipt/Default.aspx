<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="DiscountReceipt.Default" EnableViewState="false" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="~/styles.css" rel="stylesheet" />
</head>
<body>
    <div id="wrap">
        <div id="head">
            <h1>Kassakvitto</h1>
        </div>
        <div id="formcontainer">
            <form id="form1" runat="server">
                <div class="formrow">
                    <asp:Label ID="lblTotalSum" runat="server">Total summa:</asp:Label>
                </div>
                <div class="formrow">
                    <asp:TextBox ID="txtTotalSum" runat="server" TextMode="SingleLine"></asp:TextBox> kr <asp:Label ID="lblError" CssClass="error" runat="server" Visible="false"></asp:Label>
                </div>
                <div class="formrow">
                    <asp:Button ID="btnSubmit" runat="server" Text="Beräkna summa" OnClick="btnSubmit_Click" />
                </div>
            </form>
        </div>
        <asp:PlaceHolder ID="phdReceipt" runat="server" Visible="false">
            <div id="content">
                <div id="receipt">
                    <h2 class="center">Mainster</h2>
                    <p class="motto center">För det är för mainstream att vara hipster.</p>
                    <p class="center">Tel: 0700-11 22 33</p>
                    <p class="center">Öppettider: 10:00-18:00</p>
                    <div class="dottedline"></div>
                    <p class="receiptlabel">Total</p><asp:Label ID="lblReceiptSubTotal" CssClass="receiptvalue" runat="server"></asp:Label>
                    <p class="receiptlabel">Rabattsats</p><asp:Label ID="lblReceiptDiscountRate" CssClass="receiptvalue" runat="server"></asp:Label>
                    <p class="receiptlabel">Rabatt</p><asp:Label ID="lblReceiptDiscount" CssClass="receiptvalue" runat="server"></asp:Label>
                    <p class="receiptlabel">Att betala</p><asp:Label ID="lblReceiptTotal" CssClass="receiptvalue" runat="server"></asp:Label>
                    <div class="dottedline"></div>
                    <p class="center">OrgNr: 19991010-1234</p>
                    <p class="center">Välkommen åter</p>
                </div>
            </div>
        </asp:PlaceHolder>
        <div id="footer">
            <p>Andreas Fridlund - 2014</p>
            <p>ASP.NET Web Forms: Uppgift 1.2 - Linnéuniversitetet : lnu.se</p>
        </div>
    </div>
</body>
</html>
