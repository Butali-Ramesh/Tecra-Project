<%@ Page Title="" Language="C#" MasterPageFile="~/Student_DIRSA.Master" AutoEventWireup="true" CodeBehind="ViewItemsStudent_DIRSA.aspx.cs" Inherits="SportsManagement.ViewItemsStudent_DIRSA" %>
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
    <asp:Repeater ID="rep" runat="server">
         <HeaderTemplate>
             <div class="main">
                 <div class="container">
             <table id="customer">
                 <tr>
                     <th>RollNo</th>
                     <th>Count</th>
                     <th>Item Name</th>
                 </tr>
         </HeaderTemplate>
         <ItemTemplate>
             <tr>
                 <td><%#Eval("rollno") %></td>
                 <td><%#Eval("itemname") %></td>
                 <td><%#Eval("itemcount") %></td>
             </tr>
        </ItemTemplate>
        <FooterTemplate>
            </table>
            </div>
             </div>
        </FooterTemplate>
    </asp:Repeater>
</asp:Content>
