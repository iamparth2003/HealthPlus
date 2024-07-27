<%@ Page Title="" Language="C#" MasterPageFile="~/user_Master.master" AutoEventWireup="true" CodeFile="appointment.aspx.cs" Inherits="admin_appointment" %>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <Center>
      <asp:Label ID="Label1" runat="server" Text="Appointment" Font-Size="X-Large" ForeColor="#00CCFF"></asp:Label>
     <asp:Panel ID="Email" runat="server" HorizontalAlign="Left" Width="711px" CssClass="panel" Height="980px">
         <asp:Label ID="lbl_msg" runat="server" ForeColor="Red"></asp:Label>
          <br />
         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label2" runat="server" Text="Name"></asp:Label>
         &nbsp;<asp:TextBox ID="Txt_unam" runat="server"></asp:TextBox>
         <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="Txt_unam" Display="Dynamic" ForeColor="#FF3300" ValidationGroup="group1">*</asp:RequiredFieldValidator>
         <br />
         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         <asp:Label ID="Label3" runat="server" Height="33px" Text="Gender"></asp:Label>
         &nbsp;<asp:RadioButtonList ID="rb_gender" runat="server" Style="display:inline-block;" RepeatDirection="Horizontal">
             <asp:ListItem>Male</asp:ListItem>
             <asp:ListItem>Female</asp:ListItem>
         </asp:RadioButtonList>
         <br />
         &nbsp;&nbsp;<asp:Label ID="Label4" runat="server" Text="Data of birth"></asp:Label>
         &nbsp;<asp:TextBox ID="txt_dob" runat="server"></asp:TextBox>
         <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txt_dob" Display="Dynamic" ForeColor="#FF3300" ValidationGroup="group1">*</asp:RequiredFieldValidator>
         <br />
         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         <asp:Label ID="Label5" runat="server" Text="Emailid"></asp:Label>
         &nbsp;<asp:TextBox ID="txt_email" runat="server"></asp:TextBox>
         <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txt_email" Display="Dynamic" ForeColor="#FF3300" ValidationGroup="group1">*</asp:RequiredFieldValidator>
         <br />
         &nbsp;&nbsp;&nbsp;
         <asp:Label ID="Label6" runat="server" Text="Contect no"></asp:Label>
         &nbsp;<asp:TextBox ID="txt_contect" runat="server"></asp:TextBox>
         <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txt_contect" Display="Dynamic" ForeColor="#FF3300" ValidationGroup="group1">*</asp:RequiredFieldValidator>
         <br />
         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         <asp:Label ID="Label7" runat="server" Text="City"></asp:Label>
         &nbsp;<asp:TextBox ID="txt_city" runat="server"></asp:TextBox>
         <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txt_city" Display="Dynamic" ForeColor="#FF3300" ValidationGroup="group1">*</asp:RequiredFieldValidator>
         <br />
         <asp:Label ID="Label8" runat="server" Text="DoctorsName"></asp:Label>
         &nbsp;<asp:DropDownList ID="ddl_dname" runat="server" DataSourceID="SqlDataSource1" DataTextField="d_name" DataValueField="d_id">
         </asp:DropDownList>
         <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [d_name], [d_id] FROM [doctor]"></asp:SqlDataSource>
         <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="a_id" DataSourceID="SqlDataSource2">
             <Columns>
                 <asp:BoundField DataField="a_id" HeaderText="a_id" InsertVisible="False" ReadOnly="True" SortExpression="a_id" />
                 <asp:BoundField DataField="a_nm" HeaderText="a_nm" SortExpression="a_nm" />
                 <asp:BoundField DataField="a_gender" HeaderText="a_gender" SortExpression="a_gender" />
                 <asp:BoundField DataField="a_dob" HeaderText="a_dob" SortExpression="a_dob" />
                 <asp:BoundField DataField="a_email" HeaderText="a_email" SortExpression="a_email" />
                 <asp:BoundField DataField="a_con" HeaderText="a_con" SortExpression="a_con" />
                 <asp:BoundField DataField="a_city" HeaderText="a_city" SortExpression="a_city" />
                 <asp:BoundField DataField="a_add" HeaderText="a_add" SortExpression="a_add" />
                 <asp:BoundField DataField="a_d_id" HeaderText="a_d_id" SortExpression="a_d_id" />
                 <asp:BoundField DataField="a_app" HeaderText="a_app" SortExpression="a_app" />
             </Columns>
         </asp:GridView>
         <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [appointement]"></asp:SqlDataSource>
         <br />
         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         <asp:Label ID="Label9" runat="server" Text="Address"></asp:Label>
         &nbsp;<asp:TextBox ID="txt_address" runat="server" Height="59px" TextMode="MultiLine" Width="138px"></asp:TextBox>
         <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txt_address" Display="Dynamic" ForeColor="#FF3300" ValidationGroup="group1">*</asp:RequiredFieldValidator>
         <br />
         <br />
         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         <asp:Button ID="Btn_add" runat="server" OnClick="Btn_login_Click" Text="Submit" ValidationGroup="group1" />
&nbsp;
         <asp:Button ID="Btn_cancel" runat="server" Text="Cancel" />
         <br />
    </asp:Panel><br />
      </Center>
</asp:Content>

