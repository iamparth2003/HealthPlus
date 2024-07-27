<%@ Page Title="" Language="C#" MasterPageFile="~/user_Master.master" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="user_login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <Center>
      <asp:Label ID="Label1" runat="server" Text="Login" Font-Size="X-Large" ForeColor="Red"></asp:Label>
     <asp:Panel ID="Panel1" runat="server" HorizontalAlign="Center" Width="250px" CssClass="panel">
         <asp:Label ID="lbl_msg" runat="server" ForeColor="Red"></asp:Label>
          <br />
        <asp:Label ID="Label2" runat="server" Text="Username"></asp:Label>
        &nbsp;<asp:TextBox ID="Txt_unam" runat="server"></asp:TextBox>
        &nbsp;&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="Txt_unam" Display="Dynamic" ForeColor="#FF3300" ValidationGroup="group1">*</asp:RequiredFieldValidator>
         <br />
         <asp:Label ID="Label3" runat="server" Text="Password"></asp:Label>
&nbsp;<asp:TextBox ID="Txt_pwd" runat="server" TextMode="Password"></asp:TextBox>
         &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="Txt_pwd" Display="Dynamic" ForeColor="#FF3300" ValidationGroup="group1">*</asp:RequiredFieldValidator>
         <br />
         <asp:CheckBox ID="CheckBox1" runat="server" Text="Login as doctor" />
         <br />
         <asp:Button ID="Btn_login" runat="server" OnClick="Btn_login_Click" Text="Login" ValidationGroup="group1" />
         &nbsp;
         <asp:Button ID="Btn_cancel" runat="server" Text="Cancel" />
         <br />
         <asp:LinkButton ID="Lank_rag" runat="server" OnClick="Lank_rag_Click" ForeColor="White">Create new account</asp:LinkButton>
    </asp:Panel>
        <br />
      </Center>
</asp:Content>

