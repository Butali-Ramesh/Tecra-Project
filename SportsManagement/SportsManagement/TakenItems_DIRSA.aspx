<%@ Page Title="" Language="C#" MasterPageFile="~/Management_DIRSA.Master" AutoEventWireup="true" CodeBehind="TakenItems_DIRSA.aspx.cs" Inherits="SportsManagement.TakenItems_DIRSA" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        #customer
        {
            font-family: Arial, Helvetica, sans-serif;
            border-collapse: collapse;
            width: 100%;
        }
        
        #customer td, #customer th
        {
            border: 1px solid #ddd;
            padding: 8px;
        }
        
        #customer tr:nth-child(even)
        {
            background-color: #f2f2f2;
        }
        
        #customer tr:hover
        {
            background-color: #ddd;
        }
        
        #customer th
        {
            padding-top: 12px;
            padding-bottom: 12px;
            text-align: left;
            background-color: #04AA6D;
            color: white;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Repeater ID="rep" runat="server" OnItemCommand="rep_ItemCommand">
        
        <HeaderTemplate>
            <div class="main">
            <div class="container">
            <table id="customer">
            <tr>
                <th>ID</th>
                <th>Student Name</th>
                <th>RollNo</th>
                <th>Mobile No</th>
                <th>Item Name</th>
                <th>Count</th>
                <th>Delete</th>
            </tr>
        </HeaderTemplate>
            <ItemTemplate>
                <tr>
                    <td>
                        <%#Eval("ID") %>
                    </td>
                    <td>
                        <%#Eval("Name") %>
                    </td>
                    <td>
                        <%#Eval("RollNo") %>
                    </td>
                    <td>
                        <%#Eval("Mobile") %>
                    </td>
                    <td>
                        <%#Eval("ItemName") %>
                    </td>
                    <td>
                        <%#Eval("ItemCount") %>
                    </td>
                    <td>
                        <asp:ImageButton ID="btndel" runat="server" ImageUrl="~/images/del.png" Text="Delete"
                            Width=20px CommandArgument='<%#Eval("id") %>'  Height=20px OnClick="btndel_Click" />
                    </td>
                </tr>
            </ItemTemplate>
        <FooterTemplate>
        </table>
            </div>
    </div>
        </FooterTemplate>
    </asp:Repeater>
    
    
</asp:Content>
