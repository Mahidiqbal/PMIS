<%@ Page Title="Tod Roster" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="TodRoster.aspx.cs" Inherits="PMIS.Pages.Promotion" %>
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
                                  Text='<%#Eval("TransferID")%>'></asp:Label>  
                            </ItemTemplate>  
                        </asp:TemplateField>  
                        <asp:TemplateField ItemStyle-Width="600px" HeaderText="Unit Served">  
                            <ItemTemplate>  
                                <asp:Label ID="lblUnit1" runat="server" Text='<%#Eval("Unit_Served1")%>'></asp:Label>  
                            </ItemTemplate>  
                            <EditItemTemplate>  
                                <asp:TextBox ID="txtUnit1" runat="server" Text='<%#Eval("Unit_Served1")%>'></asp:TextBox>  
                            </EditItemTemplate>   
                        </asp:TemplateField>   
                       <asp:TemplateField ItemStyle-Width="600px" HeaderText="From Date">  
                            <ItemTemplate>  
                                <asp:Label ID="lblFrom" runat="server" Text='<%#Eval("From_Date1")%>'></asp:Label>  
                            </ItemTemplate>  
                            <EditItemTemplate>  
                                <asp:TextBox ID="txtFrom" runat="server" Text='<%#Eval("From_Date1")%>'></asp:TextBox>  
                            </EditItemTemplate>  
                           </asp:TemplateField>
                             <asp:TemplateField ItemStyle-Width="600px" HeaderText="To Date">  
                            <ItemTemplate>  
                                <asp:Label ID="lblTo" runat="server" Text='<%#Eval("To_Date1")%>'></asp:Label>  
                            </ItemTemplate>  
                            <EditItemTemplate>  
                                <asp:TextBox ID="txtTo" runat="server" Text='<%#Eval("To_Date1")%>'></asp:TextBox>  
                            </EditItemTemplate> 
                        </asp:TemplateField> 
                    </Columns>  
                </asp:GridView>  
            </ContentTemplate>  
       </asp:updatepanel>  
       </div>
       </div>
</asp:Content>
