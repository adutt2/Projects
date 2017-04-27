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
        <title>Transaction details</title>
    </head>
    <body> 
    <h1>All details</h1>
        <table>
  <tr>
    <th>Transaction Id</th>
    <th>Date</th> 
    <th>Description</th>
    <th>Amount</th>
    <th>Manufacture</th> 
      <th>Model</th> 
    <th>Year</th> 
 
    <th>Discount</th>
    th>Special?</th>
    <th>Surcharge</th>

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
            out.println("<td>"+res.get(i)setTransactionID()loc+"</td>");
            out.println("<td>"+res.get(i).setTransactionDate()+"</td>");
            out.println("<td>"+res.get(i).setTransactionDescription()+"</td>");
            out.println("<td>"+res.get(i).setTransactionAmount()+"</td>");
            out.println("<td>"+res.get(i).setMake()+"</td>");
            out.println("<td>"+res.get(i).setModel()+"</td>");
            out.println("<td>"+res.get(i).setYear()+"</td>");
            out.println("<td>"+res.get(i).setDiscount()+"</td>");
            out.println("<td>"+res.get(i).setSpecial()+"</td>");
            out.println("<td>"+res.get(i).setSurcharge()+"</td>");
   <%--   	
                                                em.setTransactionID(sr.getString("transactionid"));
                                            //    em.setPriceID(sr.getString("priceid"));
                                                em.setTransactionDate(sr.getString("transactiondate"));
                                                em.setTransactionDescription(sr.getString("transactiondescription"));
                                                em.setTransactionAmount(sr.getString("transactionamount"));
                                                em.setMake(sr.getString("make"));
                                                em.setModel(sr.getString("model"));
                                                em.setYear(sr.getString("year"));
						//em.setEmployeeID(sr.getString("employeeid"));
						//em.setTruckNo(sr.getString("truckNo"));
						em.setDiscount(sr.getString("discount"));
						em.setQuantity(sr.getString("quantity"));
						//em.setUnitPrice(sr.getString("unitPrice"));
						//em.setDriverPric(sr.getString("driverpric"));
						//em.setVIN(sr.getString("vin"));
						//em.setRunNumber(sr.getString("runnumber"));
						em.setSpecial(sr.getString("special"));
						//em.setRate(sr.getString("rate"));
						em.setSurcharge(sr.getString("surcharge"));
                                             //   em.setSurcharge(sr.getString("customerid"));

			}      --%>
           
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
