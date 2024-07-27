<%@ Page Title="" Language="C#" MasterPageFile="~/user_Master.master" AutoEventWireup="true" CodeFile="registrstion.aspx.cs" Inherits="user_registrstion" %>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <center>
       
        <asp:Label ID="Label1" runat="server" Text="Registration" Font-Size="X-Large"></asp:Label>
    <asp:Panel ID="Panel1" runat="server" Width="300px" CssClass="panel" HorizontalAlign="Left">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="lbl_msg" runat="server" ForeColor="Red"></asp:Label>
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label2" runat="server" Text="Full name"></asp:Label>
        &nbsp;<asp:TextBox ID="Txt_fnam" runat="server"></asp:TextBox>
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label3" runat="server" Text="Username"></asp:Label>
        <asp:TextBox ID="txt_unm" runat="server"></asp:TextBox>
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label4" runat="server" Text="Password"></asp:Label>
        <asp:TextBox ID="Txt_pdw" runat="server" TextMode="Password"></asp:TextBox>
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label5" runat="server" Text="Email"></asp:Label>
        &nbsp;<asp:TextBox ID="Txt_emal" runat="server"></asp:TextBox>
        <br />
        <asp:Label ID="Label6" runat="server" Text="Security question"></asp:Label>
        &nbsp;<asp:DropDownList ID="Ddl_que" runat="server" Height="16px" Width="132px">
            <asp:ListItem>What is your name?</asp:ListItem>
            <asp:ListItem>what is your nick name?</asp:ListItem>
            <asp:ListItem>what is your father name?</asp:ListItem>
            <asp:ListItem>what is your mother name?</asp:ListItem>
            <asp:ListItem>what is your sister name?</asp:ListItem>
            <asp:ListItem>what is your brother name?</asp:ListItem>
            <asp:ListItem></asp:ListItem>
        </asp:DropDownList>
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label7" runat="server" Text="Answer"></asp:Label>
        <asp:TextBox ID="txt_ans" runat="server"></asp:TextBox>
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" />
        &nbsp;<asp:Button ID="Button2" runat="server" Text="Cancel" />
        <br />
        <asp:Panel ID="Panel2" runat="server">
        </asp:Panel>
    </asp:Panel>
</center>
</asp:Content>

