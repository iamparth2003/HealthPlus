<%@ Page Language="C#" MasterPageFile="~/user_Master.master" AutoEventWireup="true" CodeFile="feedback.aspx.cs" Inherits="user_feedback" Title="Untitled Page" %>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <center> 
     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
     <br />
     <asp:Label ID="Label1" runat="server" Text="Feedback" Font-Size="X-Large" ForeColor="Red"></asp:Label>
    <br />
    <asp:Panel ID="Panel1" runat="server" CssClass="panel" Width="250px" HorizontalAlign="Left">
        <asp:Label ID="lbl_msg" runat="server" ForeColor="Red"></asp:Label>
        <br />
        <asp:Label ID="Label3" runat="server" Text="Fullname"></asp:Label>
        &nbsp;<asp:TextBox ID="txt_fnm" runat="server" OnTextChanged="txt_fnm_TextChanged"></asp:TextBox>
        &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txt_fnm" Display="Dynamic" ForeColor="#FF3300" ValidationGroup="group1">*</asp:RequiredFieldValidator>
        <br />
        <asp:Label ID="Label4" runat="server" Text="Comment"></asp:Label>
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txt_comment" runat="server" Height="51px" TextMode="MultiLine" Width="162px"></asp:TextBox>
        &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txt_comment" Display="Dynamic" ErrorMessage="RequiredFieldValidator" ForeColor="#FF3300" ValidationGroup="group1">*</asp:RequiredFieldValidator>
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Send" ValidationGroup="group1" />
        &nbsp;</asp:Panel>
     </center>
</asp:Content>

