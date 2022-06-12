<%@ Page Title="Sod Roster" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="SodRoster.aspx.cs" Inherits="PMIS.Pages.Transfer" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container-fluid">
    <h2><%: Title %>.</h2>
        <br />

                <div id="panel" style="height: 500px; background-color: White; padding: 10px; overflow: auto">  
    <asp:updatepanel id="UpdatePanelService" runat="server" updatemode="Conditional">  
            <ContentTemplate>  
                <asp:GridView ID="dgv" runat="server" CssClass="EU_DataTable" AutoGenerateColumns="false">  
                    <Columns>  
                        <asp:TemplateField ItemStyle-Width="30px" HeaderText="SR.NO">  
                            <ItemTemplate>  
                                <asp:Label ID="lblID" runat="server"  
                                  Text='<%#Eval("User_ID")%>'></asp:Label>  
                            </ItemTemplate>  
                        </asp:TemplateField>  
                        <asp:TemplateField ItemStyle-Width="600px" HeaderText="First Name">  
                            <ItemTemplate>  
                                <asp:Label ID="lblUnit1" runat="server" Text='<%#Eval("User_firstName")%>'></asp:Label>  
                            </ItemTemplate>  
                            <EditItemTemplate>  
                                <asp:TextBox ID="txtUnit1" runat="server" Text='<%#Eval("User_firstName")%>'></asp:TextBox>  
                            </EditItemTemplate>   
                        </asp:TemplateField>   
                       <asp:TemplateField ItemStyle-Width="600px" HeaderText="Last Name">  
                            <ItemTemplate>  
                                <asp:Label ID="lblFrom" runat="server" Text='<%#Eval("User_lastName")%>'></asp:Label>  
                            </ItemTemplate>  
                            <EditItemTemplate>  
                                <asp:TextBox ID="txtFrom" runat="server" Text='<%#Eval("User_lastName")%>'></asp:TextBox>  
                            </EditItemTemplate>  
                           </asp:TemplateField>
                             <asp:TemplateField ItemStyle-Width="600px" HeaderText="P.No">  
                            <ItemTemplate>  
                                <asp:Label ID="lblTo" runat="server" Text='<%#Eval("User_Pno")%>'></asp:Label>  
                            </ItemTemplate>  
                            <EditItemTemplate>  
                                <asp:TextBox ID="txtTo" runat="server" Text='<%#Eval("User_Pno")%>'></asp:TextBox>  
                            </EditItemTemplate> 
                        </asp:TemplateField> 
                             <asp:TemplateField ItemStyle-Width="600px" HeaderText="Email">  
                            <ItemTemplate>  
                                <asp:Label ID="lblEmail" runat="server" Text='<%#Eval("User_Email")%>'></asp:Label>  
                            </ItemTemplate>  
                            <EditItemTemplate>  
                                <asp:TextBox ID="txtEmail" runat="server" Text='<%#Eval("User_Email")%>'></asp:TextBox>  
                            </EditItemTemplate> 
                        </asp:TemplateField> 
                             <asp:TemplateField ItemStyle-Width="600px" HeaderText="User_CNIC">  
                            <ItemTemplate>  
                                <asp:Label ID="lblUser_CNIC" runat="server" Text='<%#Eval("User_CNIC")%>'></asp:Label>  
                            </ItemTemplate>  
                            <EditItemTemplate>  
                                <asp:TextBox ID="txtUser_CNIC" runat="server" Text='<%#Eval("User_CNIC")%>'></asp:TextBox>  
                            </EditItemTemplate> 
                        </asp:TemplateField> 
                             <asp:TemplateField ItemStyle-Width="600px" HeaderText="User Gender">  
                            <ItemTemplate>  
                                <asp:Label ID="User_Gender" runat="server" Text='<%#Eval("User_Gender")%>'></asp:Label>  
                            </ItemTemplate>  
                            <EditItemTemplate>  
                                <asp:TextBox ID="User_Gender" runat="server" Text='<%#Eval("User_Gender")%>'></asp:TextBox>  
                            </EditItemTemplate> 
                        </asp:TemplateField> 
                             <asp:TemplateField ItemStyle-Width="600px" HeaderText="Enroll Date">  
                            <ItemTemplate>  
                                <asp:Label ID="EnrollDate" runat="server" Text='<%#Eval("EnrollDate")%>'></asp:Label>  
                            </ItemTemplate>  
                            <EditItemTemplate>  
                                <asp:TextBox ID="EnrollDate" runat="server" Text='<%#Eval("EnrollDate")%>'></asp:TextBox>  
                            </EditItemTemplate> 
                        </asp:TemplateField> 
                             <asp:TemplateField ItemStyle-Width="600px" HeaderText="To Date">  
                            <ItemTemplate>  
                                <asp:Label ID="Marital_Status" runat="server" Text='<%#Eval("Marital_Status")%>'></asp:Label>  
                            </ItemTemplate>  
                            <EditItemTemplate>  
                                <asp:TextBox ID="Marital_Status" runat="server" Text='<%#Eval("Marital_Status")%>'></asp:TextBox>  
                            </EditItemTemplate> 
                        </asp:TemplateField> 
                             
                    </Columns>  
                </asp:GridView>  
            </ContentTemplate>  
       </asp:updatepanel>  
       </div>
        </div>
</asp:Content>
