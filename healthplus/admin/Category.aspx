<%@ Page Title="" Language="C#" MasterPageFile="~/admin_master.master" AutoEventWireup="true" CodeFile="Category.aspx.cs" Inherits="admin_Categoryaspx" %>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <center>
      <asp:Label ID="Label1" runat="server" Text="Add Speciallist" Font-Size="X-Large" ForeColor="Red"></asp:Label>
     <asp:Panel ID="Email" runat="server" HorizontalAlign="Left" Width="350px" CssClass="panel">
    
    
         <asp:Label ID="Lbl_msg" runat="server" ForeColor="Red"></asp:Label>
         <br />
    
    
     <asp:Label ID="Label3" runat="server" Text="AddSpeciallist"></asp:Label>
    &nbsp;<asp:TextBox ID="txt_cat" runat="server" ></asp:TextBox>
         <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txt_cat" Display="Dynamic" ForeColor="#FF3300" ValidationGroup="group1">*</asp:RequiredFieldValidator>
         <br />
         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="Button1" runat="server" Text="Add" OnClick="Button1_Click" ValidationGroup="group1" />
</asp:Panel>
        </center>
    </br>
</asp:Content>

