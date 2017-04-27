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
        <title>Pricing details</title>
    </head>
    <body> 
    <h1>Details</h1>
        <table>
  <tr>
    <th>Price Id</th>
    <th>Location From</th> 
    <th>Location To</th>
    <th>Price($)</th>
    <th>Loc Code From</th> 
      <th>Loc Code To</th> 
    <th>Customer Id</th> 
 
 


  </tr>    </hr> 
        <%-- start web service invocation --%>
    <%
    try {
	ws.TestV1_Service service = new ws.TestV1_Service();
	ws.TestV1 port = service.getTestV1Port();
	// TODO process result here
	java.util.List<ws.PricingModel> res = port.getPricing();
        for(int i=0; i< res.size(); i++)
        {
            out.println("<tr>");
            out.println("<td>"+res.get(i)getPriceID()loc+"</td>");
            out.println("<td>"+res.get(i).getLocationIDFrom()+"</td>");
            out.println("<td>"+res.get(i).getLocationIDTO()+"</td>");
            out.println("<td>"+res.get(i).getPrice()+"</td>");
            out.println("<td>"+res.get(i).getLocationCodeFrom()+"</td>");
            out.println("<td>"+res.get(i).getLocationCodeTo()+"</td>");
            out.println("<td>"+res.get(i).getCustomerID()+"</td>");
            
   /*em=new PricingModel();	
			em.setPriceID(sr.getString("priceid"));
                        em.setLocationIDFrom(sr.getString("locationidfrom"));
                        em.setLocationIDTO(sr.getString("locationidto"));
                        em.setPrice(sr.getString("price"));
						em.setLocationCodeFrom(sr.getString("locationcodefrom"));
						em.setLocationCodeTo(sr.getString("locationcodeto"));
					//	em.setLocationNameFrom(sr.getString("locationnamefrom"));
                     //   em.setLocationNameTo(sr.getString("locationnameto"));
						em.setCustomerID(sr.getString("customerid"));*/
           
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
