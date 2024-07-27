<%@ Page Title="" Language="C#" MasterPageFile="~/doctor.master" AutoEventWireup="true" CodeFile="view_appotiment.aspx.cs" Inherits="doctor_view_appotiment" %>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

           <center> <asp:Label ID="Label3" runat="server" Font-Size="X-Large" ForeColor="Red" Text="Appotiment"></asp:Label>
               <br />
               <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="a_id" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" OnRowCommand="GridView1_RowCommand">
                   <AlternatingRowStyle BackColor="White" />
                   <Columns>
                       <asp:BoundField DataField="a_id" HeaderText="a_id" InsertVisible="False" ReadOnly="True" SortExpression="a_id" />
                       <asp:BoundField DataField="a_nm" HeaderText="Name" SortExpression="a_nm" />
                       <asp:BoundField DataField="a_gender" HeaderText="Gender" SortExpression="a_gender" />
                       <asp:BoundField DataField="a_dob" HeaderText="Date of birthday" SortExpression="a_dob" />
                       <asp:BoundField DataField="a_email" HeaderText="Email" SortExpression="a_email" />
                       <asp:BoundField DataField="a_con" HeaderText="Contact" SortExpression="a_con" />
                       <asp:BoundField DataField="a_city" HeaderText="City" SortExpression="a_city" />
                       <asp:BoundField DataField="a_add" HeaderText="Address" SortExpression="a_add" />
                       <asp:BoundField DataField="a_d_id" HeaderText="a_d_id" SortExpression="a_d_id" Visible="False" />
                       <asp:CommandField ShowDeleteButton="True"  />
                       <asp:TemplateField>
                           <ItemTemplate>
                               <asp:LinkButton ID="LinkButton1" runat="server" CommandName="Approve" CommandArgument='<%# Eval("a_id") %>'>Approve</asp:LinkButton>
                           </ItemTemplate>
                       </asp:TemplateField>
                   </Columns>
                   <EditRowStyle BackColor="#2461BF" />
                   <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                   <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                   <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                   <RowStyle BackColor="#EFF3FB" />
                   <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                   <SortedAscendingCellStyle BackColor="#F5F7FB" />
                   <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                   <SortedDescendingCellStyle BackColor="#E9EBEF" />
                   <SortedDescendingHeaderStyle BackColor="#4870BE" />
               </asp:GridView>
               <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [appointement] WHERE ([a_d_id] = @a_d_id)" DeleteCommand="Delete from appointement where a_id=@a_id">
                   <DeleteParameters>
                       <asp:ControlParameter ControlID="GridView1" Name="a_id" PropertyName="SelectedValue" />
                   </DeleteParameters>
                   <SelectParameters>
                       <asp:SessionParameter Name="a_d_id" SessionField="d_id" Type="Int32" />
                   </SelectParameters>
               </asp:SqlDataSource>
           </center>

</asp:Content>

