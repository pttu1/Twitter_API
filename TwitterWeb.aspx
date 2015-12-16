<%@ Page Language="C#" AutoEventWireup="true" CodeFile="TwitterWeb.aspx.cs" Inherits="TwitterWeb" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 193px;
        }
        .auto-style2 {
            width: 236px;
        }
        .auto-style3 {
            width: 169px;
        }
        .auto-style4 {
            width: 145px;
        }
        .auto-style5 {
            width: 141px;
        }
        .auto-style6 {
            width: 236px;
            height: 23px;
        }
        .auto-style7 {
            width: 169px;
            height: 23px;
        }
        .auto-style8 {
            height: 23px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table style="width:100%;">
            <tr>
                <td class="auto-style1">Enter Tweet</td>
                <td class="auto-style4">
                    <asp:TextBox ID="EnterStatus" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:Button ID="PostBotton" runat="server" OnClick="PostBotton_Click" Text="Post" />
                </td>
            </tr>
            <tr>
                <td class="auto-style1">Enter twitter Handle</td>
                <td class="auto-style4">
                    <asp:TextBox ID="EnterHandle" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">Enter no of Tweets</td>
                <td class="auto-style4">
                    <asp:TextBox ID="NoOfTweets" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:Button ID="GetNoOfTweets" runat="server" OnClick="Button1_Click" Text="GetTweets" />
                </td>
            </tr>
        </table>
    
    </div>
        <table style="width:100%;">
            <tr>
                <td class="auto-style1">Retweet ID</td>
                <td class="auto-style5">
                    <asp:TextBox ID="retweetID" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:Button ID="RetweetBotton" runat="server" OnClick="RetweetBotton_Click" Text="Retweet" />
                </td>
            </tr>
            <tr>
                <td class="auto-style1">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">Search Trend</td>
                <td class="auto-style5">
                    <asp:TextBox ID="HashTag" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:Button ID="getTrend" runat="server" OnClick="getTrend_Click" Text="GetTrend" />
                </td>
            </tr>
        </table>
        <table style="width:100%;">
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style6">A number of tweets box</td>
                <td class="auto-style7"></td>
                <td class="auto-style8">Hashtag trend box</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:ListBox ID="ListTweets" runat="server"></asp:ListBox>
                </td>
                <td class="auto-style3">&nbsp;</td>
                <td>
                    <asp:ListBox ID="ViewTrend" runat="server"></asp:ListBox>
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
