<%-- 
    Document   : allcust
    Created on : Apr 27, 2017, 6:50:22 AM
    Author     : afaqu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
    <style>
        table, th, td {
        border-collapse: collapse;
        padding: 15px;
        }
        body {
        background: tomato;
        display: flex;
        font-size: 16px;
        }
        table{
        background: white;
        width: 100%;
        box-shadow: 0px 0px 20px rgba(0, 0, 0, 0.7);
        font-family: lato;
        position: absolute;
        top: 100px;
        left: 2px;
        color: #333;
        border-radius: 10px;
        }
        h1{
            font-family: roboto;
            color: white;
            font-size: 30px;
            text-shadow: 1px 2px #333;
        }
        th,td {
        text-align: center;
        }
        tr:hover{background-color:#f5f5f5}
       </style> 
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Customer details</title>
    </head>
    <body> 
    <h1>All details</h1>
        <table>
  <tr>
    <th>Location Id</th>
    <th>Location Name</th> 
    <th>Location Code</th> 
    <th>Is auction?</th>
    <th>Customer Id</th>
    <th>Address Street1</th> 
    <th>Address Street2</th> 
    <th>City</th>
    <th>State</th>
    <th>Postal Code</th> 
    <th>Region</th> 
    <th>Location Contact Name</th>
	<th>Location Phone</th>
    <th>Fax Number</th>
    <th>Email</th> 
  </tr>    </hr> 
        <%-- start web service invocation --%>
    <%
    try {
	ws.TestV1_Service service = new ws.TestV1_Service();
	ws.TestV1 port = service.getTestV1Port();
	// TODO process result here
	java.util.List<ws.CustomerModel> res = port.getCustomer();
        for(int i=0; i< res.size(); i++)
        {
            out.println("<tr>");
            out.println("<td>"+res.get(i)getLocationID()loc+"</td>");
            out.println("<td>"+res.get(i).getLocName()+"</td>");
            out.println("<td>"+res.get(i).getLocationCode()+"</td>");
            out.println("<td>"+res.get(i).getIsAuction()+"</td>");
            out.println("<td>"+res.get(i).getCustomerID()+"</td>");
            out.println("<td>"+res.get(i).getAddressStreet1()+"</td>");
            out.println("<td>"+res.get(i).getAddressStreet2()+"</td>");
            out.println("<td>"+res.get(i).getCity()+"</td>");
            out.println("<td>"+res.get(i).getState()+"</td>");
            out.println("<td>"+res.get(i).getPostalCode()+"</td>");
            out.println("<td>"+res.get(i).getRegion()+"</td>");
            out.println("<td>"+res.get(i).getLocation_contact_name()+"</td>");
            out.println("<td>"+res.get(i).getLocPhone()+"</td>");
            out.println("<td>"+res.get(i).getLocFaxNumber()+"</td>");
            out.println("<td>"+res.get(i).getLocEmail()+"</td>");
           
        }
    } catch (Exception ex) {
	// TODO handle custom exceptions here
    }
    %>
    <%-- end web service invocation --%>

        </table>
       </div>
        
    </body>
</html>
