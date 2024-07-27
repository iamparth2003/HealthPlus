<%@ Page Title="" Language="C#" MasterPageFile="~/admin_master.master" AutoEventWireup="true" CodeFile="Doctor.aspx.cs" Inherits="admin_Doctor" %>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <center>
      <asp:Label ID="Label1" runat="server" Text="Add New Doctor Detail" Font-Size="X-Large" ForeColor="Red"></asp:Label>
        <asp:Panel ID="Email" runat="server" HorizontalAlign="Left" Width="350px" CssClass="panel">
    
         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Lbl_msg" runat="server" ForeColor="Red"></asp:Label>
         <br />
         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         <asp:Label ID="Label3" runat="server" Text="Name"></asp:Label>
&nbsp;<asp:TextBox ID="txt_name" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txt_name" Display="Dynamic" ForeColor="#FF3300" ValidationGroup="group1">*</asp:RequiredFieldValidator>
         <br />
         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         <asp:Label ID="Label4" runat="server" Text="Username"></asp:Label>
&nbsp;<asp:TextBox ID="Txt_unm" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="Txt_unm" Display="Dynamic" ForeColor="#FF3300" ValidationGroup="group1">*</asp:RequiredFieldValidator>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="Txt_unm" Display="Dynamic" ForeColor="#FF3300" ValidationGroup="group1"></asp:RequiredFieldValidator>
         <br />
         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         <asp:Label ID="Label5" runat="server" Text="Password"></asp:Label>
&nbsp;<asp:TextBox ID="Txt_pass" runat="server" TextMode="Password"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="Txt_pass" Display="Dynamic" ForeColor="#FF3300" ValidationGroup="group1">*</asp:RequiredFieldValidator>
         <br />
         &nbsp;&nbsp;&nbsp;&nbsp;
         <asp:Label ID="Label6" runat="server" Text="SelectImage"></asp:Label>
         &nbsp;<asp:FileUpload ID="Fp" runat="server" />
         <br />
&nbsp;
         <asp:Label ID="Label7" runat="server" Text="HospitalName"></asp:Label>
         &nbsp;<asp:TextBox ID="txt_hospital_name" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txt_hospital_name" Display="Dynamic" ForeColor="#FF3300" ValidationGroup="group1">*</asp:RequiredFieldValidator>
         <br />
         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         <asp:Label ID="Label8" runat="server" Text="Address"></asp:Label>
&nbsp;<asp:TextBox ID="Txt_add" runat="server" TextMode="MultiLine"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="Txt_add" Display="Dynamic" ForeColor="#FF3300" ValidationGroup="group1">*</asp:RequiredFieldValidator>
         <br />
         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         <asp:Label ID="Label9" runat="server" Text="City"></asp:Label>
&nbsp;<asp:TextBox ID="Txt_city" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="Txt_city" Display="Dynamic" ForeColor="#FF3300" ValidationGroup="group1">*</asp:RequiredFieldValidator>
         <br />
         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         <asp:Label ID="Label10" runat="server" Text="Contactno"></asp:Label>
         &nbsp;<asp:TextBox ID="Txt_contectno" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="Txt_contectno" Display="Dynamic" ForeColor="#FF3300" ValidationGroup="group1">*</asp:RequiredFieldValidator>
         <br />
         &nbsp;<asp:Label ID="Label11" runat="server" Text="Visiting Timing"></asp:Label>
         &nbsp;
         <asp:TextBox ID="Txt_vicitindtiming" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="Txt_vicitindtiming" Display="Dynamic" ForeColor="#FF3300" ValidationGroup="group1">*</asp:RequiredFieldValidator>
         <br />
         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         <asp:Label ID="Label12" runat="server" Text="Speceitialy"></asp:Label>
         &nbsp;
         <asp:DropDownList ID="Ddl_spe" runat="server" DataSourceID="SqlDataSource1" DataTextField="c_nm" DataValueField="c_id">
         </asp:DropDownList>
         <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [category]"></asp:SqlDataSource>
         <br />
         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         <asp:Label ID="Label13" runat="server" Text="Avalibal"></asp:Label>
&nbsp;<asp:ListBox ID="ListBox1" runat="server">
             <asp:ListItem>Sunday</asp:ListItem>
             <asp:ListItem>Monday</asp:ListItem>
             <asp:ListItem>Tuesday</asp:ListItem>
             <asp:ListItem>Wednesday</asp:ListItem>
             <asp:ListItem>Thursday</asp:ListItem>
             <asp:ListItem>Friday</asp:ListItem>
             <asp:ListItem>Saturday</asp:ListItem>
         </asp:ListBox>
         <br />
         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         <asp:Label ID="Label14" runat="server" Text="Qulifacation"></asp:Label>
&nbsp;<asp:TextBox ID="Txt_qulifacation" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="Txt_qulifacation" Display="Dynamic" ForeColor="#FF3300" ValidationGroup="group1">*</asp:RequiredFieldValidator>
         <br />
         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         <asp:Label ID="L" runat="server" Text="Exeperience"></asp:Label>
&nbsp;<asp:TextBox ID="Txt_experiece" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ControlToValidate="Txt_experiece" Display="Dynamic" ForeColor="#FF3300" ValidationGroup="group1">*</asp:RequiredFieldValidator>
         <br />
         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="Add" runat="server" Text="Add" OnClick="Add_Click" Width="72px" ValidationGroup="group1" />
         &nbsp;&nbsp;&nbsp;
         <asp:Button ID="Btn_clear" runat="server" Text="Clear" />
    <br />
   </asp:Panel>
       </center><br />
</asp:Content>

