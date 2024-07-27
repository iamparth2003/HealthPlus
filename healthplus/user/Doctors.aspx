<%@ Page Title="" Language="C#" MasterPageFile="~/user_Master.master" AutoEventWireup="true" CodeFile="Doctors.aspx.cs" Inherits="user_Doctors" %>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

   <center> <asp:Label ID="Label1" runat="server" Text="Label" Font-Size="X-Large" ForeColor="Red"></asp:Label></center>
        <br />
        <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" HorizontalAlign="Center" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical" OnSelectedIndexChanged="DataList1_SelectedIndexChanged">
            <AlternatingItemStyle BackColor="#CCCCCC" />
            <FooterStyle BackColor="#CCCCCC" />
            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
        <ItemTemplate>
            <table>
                <tr>
                    <td>
                        <img src='<%# ResolveClientUrl("~/upload/") %><%# Eval("d_image") %>' height="150px" width="200px" />
                    </td>
              <td>
            Name:
            <asp:Label ID="d_nameLabel" runat="server" Text='<%# Eval("d_name") %>' />
            <br />
           
           Hospital Name:
            <asp:Label ID="d_hospital_nameLabel" runat="server" Text='<%# Eval("d_hospital_name") %>' />
            <br />
           Qualification
            <asp:Label ID="d_quaLabel" runat="server" Text='<%# Eval("d_qua") %>' />
            <br />
            City
            <asp:Label ID="d_cityLabel" runat="server" Text='<%# Eval("d_city") %>' />
            <br />
                  <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl='<%# "~/user/Details.aspx?id="+Eval("d_id") %>'>View more</asp:LinkButton>
                  </td>
                    </tr>
</table>
        </ItemTemplate>
            <SelectedItemStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
    </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [d_id],[d_name], [d_image], [d_hospital_name], [d_qua], [d_city] FROM [doctor] WHERE ([d_c_id] = @d_c_id)">
        <SelectParameters>
            <asp:QueryStringParameter Name="d_c_id" QueryStringField="d_id" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>

</asp:Content>

