<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="PMIS._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container-fluid">
        <div class="jumbotron">
            <h1>Welcome to PNCA</h1>
        </div>

        <div class="row">
            <div class="col-md-12">
                <h2>Request for Approval</h2>
                <div class="row">
                    <div class="col-lg-12">
                        <div style="overflow-x: auto; width: 100%">
                            <asp:GridView ID="dgv" runat="server"
                                AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="User_ID" OnRowEditing="dgv_RowEditing" OnRowUpdating="dgv_RowUpdating" OnRowCancelingEdit="dgv_RowCancelingEdit" OnRowDeleting="dgv_RowDeleting" OnRowCommand="dgv_RowCommand" HorizontalAlign="Center">
                                <FooterStyle BackColor="White" ForeColor="#000066" />
                                <HeaderStyle HorizontalAlign="Center" ForeColor="White" BackColor="#006699" Font-Bold="True" />
                                <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                                <RowStyle ForeColor="#000066" />
                                <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                                <SortedAscendingHeaderStyle BackColor="#007DBB" />
                                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                                <SortedDescendingHeaderStyle BackColor="#00547E" />
                                <Columns>
                                    <asp:TemplateField HeaderText="User ID">
                                        <ItemTemplate>
                                            <asp:Label Text='<%# Eval("User_ID") %>' runat="server"></asp:Label>
                                        </ItemTemplate>
                                        <EditItemTemplate>
                                            <asp:TextBox ID="txtID" Text='<%# Eval("User_ID") %>' runat="server" ReadOnly="true"></asp:TextBox>
                                        </EditItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="First Name">
                                        <ItemTemplate>
                                            <asp:Label Text='<%# Eval("User_firstName") %>' runat="server"></asp:Label>
                                        </ItemTemplate>
                                        <EditItemTemplate>
                                            <asp:TextBox ID="txtName" Text='<%# Eval("User_firstName") %>' runat="server"></asp:TextBox>
                                        </EditItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Last Name">
                                        <ItemTemplate>
                                            <asp:Label Text='<%# Eval("User_lastName") %>' runat="server"></asp:Label>
                                        </ItemTemplate>
                                        <EditItemTemplate>
                                            <asp:TextBox ID="txtLname" Text='<%# Eval("User_lastName") %>' runat="server"></asp:TextBox>
                                        </EditItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="User Role">
                                        <ItemTemplate>
                                            <asp:Label Text='<%# Eval("User_Role") %>' runat="server"></asp:Label>
                                        </ItemTemplate>
                                        <EditItemTemplate>
                                            <asp:TextBox ID="txtRole" Text='<%# Eval("User_Role") %>' runat="server"></asp:TextBox>
                                        </EditItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="P.No / O.NO">
                                        <ItemTemplate>
                                            <asp:Label Text='<%# Eval("User_Pno") %>' runat="server"></asp:Label>
                                        </ItemTemplate>
                                        <EditItemTemplate>
                                            <asp:TextBox ID="txtPno" Text='<%# Eval("User_Pno") %>' runat="server"></asp:TextBox>
                                        </EditItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="Email">
                                        <ItemTemplate>
                                            <asp:Label Text='<%# Eval("User_Email") %>' runat="server"></asp:Label>
                                        </ItemTemplate>
                                        <EditItemTemplate>
                                            <asp:TextBox ID="txtEmail" Text='<%# Eval("User_Email") %>' runat="server"></asp:TextBox>
                                        </EditItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="Phone No">
                                        <ItemTemplate>
                                            <asp:Label Text='<%# Eval("User_Phone") %>' runat="server"></asp:Label>
                                        </ItemTemplate>
                                        <EditItemTemplate>
                                            <asp:TextBox ID="txtPhone" Text='<%# Eval("User_Phone") %>' runat="server"></asp:TextBox>
                                        </EditItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="Date of Birth">
                                        <ItemTemplate>
                                            <asp:Label Text='<%# Eval("User_DOB") %>' runat="server"></asp:Label>
                                        </ItemTemplate>
                                        <EditItemTemplate>
                                            <asp:TextBox ID="txtDOB" Text='<%# Eval("User_DOB") %>' runat="server"></asp:TextBox>
                                        </EditItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="CNIC No">
                                        <ItemTemplate>
                                            <asp:Label Text='<%# Eval("User_CNIC") %>' runat="server"></asp:Label>
                                        </ItemTemplate>
                                        <EditItemTemplate>
                                            <asp:TextBox ID="txtCNIC" Text='<%# Eval("User_CNIC") %>' runat="server"></asp:TextBox>
                                        </EditItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="Gender">
                                        <ItemTemplate>
                                            <asp:Label Text='<%# Eval("User_Gender") %>' runat="server"></asp:Label>
                                        </ItemTemplate>
                                        <EditItemTemplate>
                                            <asp:TextBox ID="txtGender" Text='<%# Eval("User_Gender") %>' runat="server"></asp:TextBox>
                                        </EditItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="Marital Status">
                                        <ItemTemplate>
                                            <asp:Label Text='<%# Eval("Marital_Status") %>' runat="server"></asp:Label>
                                        </ItemTemplate>
                                        <EditItemTemplate>
                                            <asp:TextBox ID="txtMariStatus" Text='<%# Eval("Marital_Status") %>' runat="server"></asp:TextBox>
                                        </EditItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="Address" InsertVisible="False">
                                        <ItemTemplate>
                                            <asp:Label Text='<%# Eval("PresentAddress") %>' runat="server"></asp:Label>
                                        </ItemTemplate>
                                        <EditItemTemplate>
                                            <asp:TextBox ID="txtAddress" Text='<%# Eval("PresentAddress") %>' runat="server"></asp:TextBox>
                                        </EditItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="Status" InsertVisible="False">
                                        <ItemTemplate>
                                            <asp:Label Text='<%# Eval("User_Status") %>' runat="server"></asp:Label>
                                        </ItemTemplate>
                                        <EditItemTemplate>
                                            <asp:TextBox ID="txtStatus" Text='<%# Eval("User_Status") %>' runat="server"></asp:TextBox>
                                        </EditItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="Request">
                                        <ItemTemplate>
                                            <asp:Button runat="server" CommandName="Approve" ToolTip="Approve" CommandArgument='<%# Eval("User_ID") %>' ForeColor="White" CssClass="btn btn-info" Text="Approve" />
                                            <asp:Button runat="server" CommandName="Reject" ToolTip="Reject" CommandArgument='<%# Eval("User_ID") %>' ForeColor="White" CssClass="btn btn-warning" Text="Reject" />
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="Edit">
                                        <ItemTemplate>
                                            <asp:Button runat="server" CommandName="Edit" Visible="false" ToolTip="Edit" ForeColor="White" CssClass="btn btn-success" Text="Edit" CommandArgument='<%# Eval("User_ID") %>' />
                                            <asp:Button runat="server" CommandName="Delete" ToolTip="Delete" ForeColor="White" CssClass="btn btn-danger" Text="Delete" CommandArgument='<%# Eval("User_ID") %>' />
                                        </ItemTemplate>
                                        <EditItemTemplate>
                                            <asp:Button runat="server" CommandName="Update" Visible="false" ToolTip="Update" CommandArgument='<%# Eval("User_ID") %>' ForeColor="White" CssClass="btn btn-success" Text="Update" />
                                            <asp:Button runat="server" CommandName="Cancel" Visible="false" ToolTip="Cancel" CommandArgument='<%# Eval("User_ID") %>' ForeColor="White" CssClass="btn btn-danger" Text="Cancel" />
                                        </EditItemTemplate>
                                        <ItemStyle HorizontalAlign="Justify" />
                                    </asp:TemplateField>


                                </Columns>

                            </asp:GridView>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
