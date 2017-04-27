/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Beans;
import Dao.CommentsDao;
import java.sql.ResultSet;
import java.util.ArrayList;

import Dao.CustomerDao;
import Dao.EmployeeDao;
import Dao.ExpenseDao;
import Dao.LocationDao;
import Dao.OrderDao;
import Dao.PaymentDao;
import Dao.PricingDao;
import Dao.TransactionDao;
import Dao.TrucksDao;
import Models.CommentsModel;
import Models.CustomerModel;
import Models.EmployeeModel;
import Models.ExpenseModel;
import Models.LocationModel;
import Models.OrderModel;
import Models.PaymentModel;
import Models.PricingModel;
import Models.TransactionModel;
import Models.TrucksModel;
import java.lang.reflect.InvocationTargetException;
import java.util.List;
import javax.ejb.Stateless;

/**
 *
 * @author Zeshan
 */


@Stateless
public class ServiceBean {

    // Add business logic below. (Right-click in editor and choose
    // "Insert Code > Add Business Method")
    CustomerDao cd=new CustomerDao();
    EmployeeDao ed= new EmployeeDao();
    ExpenseDao exd=new ExpenseDao();
    LocationDao ld=new LocationDao();
    CommentsDao cmd=new CommentsDao();
     OrderDao od=new OrderDao();
     PricingDao pd=new PricingDao();
       PaymentDao ds=new PaymentDao();
    TrucksDao td=new TrucksDao();
    TransactionDao tds=new TransactionDao();
    
    public List<OrderModel> getOrderAll() {
    	OrderModel em=null;
		List<OrderModel> llist=new ArrayList<>();
		try {
		ResultSet sr= od.getOrderAll();
			while(sr.next()){
			em=new OrderModel();	
			em.setOrderID(sr.getString("orderid"));
                        em.setOrderDate(sr.getString("orderdate"));
                        em.setCustomerID(sr.getString("customerid"));
                        em.setEmployeeID(sr.getString("employeeid"));
			em.setTruckID(sr.getString("truckid"));
			em.setIsSPecial(sr.getString("isspecial"));
			em.setPurchaseOrderNumber(sr.getString("purchaseordernumber"));
                        em.setOrderTotalAmount(sr.getString("ordertotalamount"));
                        em.setOrderTotalAmount(sr.getString("transactionid"));
                        em.setOrderTotalAmount(sr.getString("paymentid"));
						
						
			llist.add(em);
			}
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return llist;
        }
    
    
      public List<CustomerModel> getCustomerAll( ) {
    	CustomerModel em=null;
		List<CustomerModel> llist=new ArrayList<>();
		try {
		ResultSet sr= cd.getCustomerAll();
			while(sr.next()){
			
                            em=new CustomerModel();	
			em.setCustomerID(sr.getString("customerid"));
                        em.setCustomerTitle(sr.getString("customerTitle"));
                        em.setBusinessName(sr.getString("businessName"));
                        em.setBillingAddress(sr.getString("billingAddress"));
                        em.setCity(sr.getString("city"));
                        em.setStateOrProvince(sr.getString("stateOrProvince"));
                        em.setPostalCode(sr.getString("postalCode"));
                        em.setCountry(sr.getString("country"));
                        em.setPhoneNumber(sr.getString("phoneNumber"));
                        em.setCellNumber(sr.getString("cellNumber"));
                        em.setOtherNumber(sr.getString("otherNumber"));
                        em.setFaxNumber(sr.getString("faxNumber"));
                        em.setEmailAddress(sr.getString("emailAddress"));
                        em.setCustomer(sr.getString("customerType"));
						
						em.setCompanyName(sr.getString("companyName"));
						
						em.setAlternateContactName(sr.getString("alternateContactName"));
                                                em.setContactName(sr.getString("contactName"));
						em.setDateEntered(sr.getString("dateEntered"));
			llist.add(em);
			}
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return llist;
    }
       public List<EmployeeModel> getEmployeeAll() {
    	EmployeeModel em=null;
		List<EmployeeModel> llist=new ArrayList<>();
		try {
		ResultSet sr= ed.getEmployeeAll();
			while(sr.next()){
			em=new EmployeeModel();	
			em.setEmployeeID(sr.getString("employeeid"));
                        em.setFirstName(sr.getString("firstname"));
                        em.setLastName(sr.getString("lastname"));
                        em.setEmail(sr.getString("email"));
                        em.setExtension(sr.getString("extension"));
                        em.setHomePhone(sr.getString("homephone"));
                        em.setCellPhone(sr.getString("cellphone"));
                        em.setJobTitle(sr.getString("jobtitle"));
                        em.setSocialSecurityNumber(sr.getString("socialsecuritynumber"));
                        em.setDriverLicenseNumber(sr.getString("driverlicensenumber"));
                        em.setAddress(sr.getString("address"));
                        em.setCity(sr.getString("city"));
                        em.setState(sr.getString("state"));
                        em.setPostalCode(sr.getString("postalcode"));
						em.setBirthdate(sr.getString("birthdate"));
						em.setDateHired(sr.getString("datehired"));
						em.setSalary(sr.getString("salary"));
						em.setNotes(sr.getString("notes"));
			llist.add(em);
			}
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return llist;
    }
       
        public List<TrucksModel> getTrucksAll() {
    	TrucksModel em=null;
		List<TrucksModel> llist=new ArrayList<>();
		try {
		ResultSet sr= td.getTrucksAll();
			while(sr.next()){
			em=new TrucksModel();	
			em.setTruckNo(sr.getString("truckno"));
                        em.setMake(sr.getString("make"));
                        em.setYear(sr.getString("year"));
                        em.setModel(sr.getString("model"));
                        em.setLicensePlateNo(sr.getString("licenseplateno"));
                        em.setEmployeeID(sr.getString("employeeid"));
                        em.setColor(sr.getString("color"));
                        em.setVIN(sr.getString("VIN"));
                        em.setTruckID(sr.getString("truckid"));
                                                			llist.add(em);
			}
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return llist;
    }
    
     public List<LocationModel> getLocations(String loc_id,String postalcode)  {
        //TODO write your implementation code here:
      
  
    	LocationModel em=null;
		List<LocationModel> llist=new ArrayList<>();
		try {
		ResultSet sr= ld.getLocations(loc_id,postalcode);
			while(sr.next()){
			em=new LocationModel();	
                            em.setLocationID(sr.getString("locationid"));
                            em.setLocName(sr.getString("locname"));
                            em.setLocationCode(sr.getString("locationcode"));
                            em.setIsAuction(sr.getString("isauction"));
                            em.setCustomerID(sr.getString("customerid"));
                            em.setAddressStreet1(sr.getString("addressstreet1"));
                            em.setAddressStreet2(sr.getString("addressstreet2"));
                            em.setCity(sr.getString("city"));
                            em.setState(sr.getString("state"));
                            em.setPostalCode(sr.getString("postalcode"));
                            em.setRegion(sr.getString("region"));
                            em.setLocation_contact_name(sr.getString("location_contact_name"));
                            em.setLocPhone(sr.getString("locphone"));
                            em.setLocFaxNumber(sr.getString("locfaxnumber"));
                            em.setLocEmail(sr.getString("locemail"));
                                                    llist.add(em);
			}
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return llist;
    }


    
 
    public List<CustomerModel> getCustomer(String cust_id, String cust_city ) {
    	CustomerModel em=null;
		List<CustomerModel> llist=new ArrayList<>();
		try {
		ResultSet sr= cd.getCustomer(cust_id,cust_city);
			while(sr.next()){
			
                            em=new CustomerModel();	
			em.setCustomerID(sr.getString("customerid"));
                        em.setCustomerTitle(sr.getString("customerTitle"));
                        em.setBusinessName(sr.getString("businessName"));
                        em.setBillingAddress(sr.getString("billingAddress"));
                        em.setCity(sr.getString("city"));
                        em.setStateOrProvince(sr.getString("stateOrProvince"));
                        em.setPostalCode(sr.getString("postalCode"));
                        em.setCountry(sr.getString("country"));
                        em.setPhoneNumber(sr.getString("phoneNumber"));
                        em.setCellNumber(sr.getString("cellNumber"));
                        em.setOtherNumber(sr.getString("otherNumber"));
                        em.setFaxNumber(sr.getString("faxNumber"));
                        em.setEmailAddress(sr.getString("emailAddress"));
                        em.setCustomer(sr.getString("customerType"));
						
						em.setCompanyName(sr.getString("companyName"));
						
						em.setAlternateContactName(sr.getString("alternateContactName"));
                                                em.setContactName(sr.getString("contactName"));
						em.setDateEntered(sr.getString("dateEntered"));
			llist.add(em);
			}
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return llist;
    }
    
         public List<EmployeeModel> getEmployee(String exp_id) {
    	EmployeeModel em=null;
		List<EmployeeModel> llist=new ArrayList<>();
		try {
		ResultSet sr= ed.getEmployee(exp_id);
			while(sr.next()){
			em=new EmployeeModel();	
			em.setEmployeeID(sr.getString("employeeid"));
                        em.setFirstName(sr.getString("firstname"));
                        em.setLastName(sr.getString("lastname"));
                        em.setEmail(sr.getString("email"));
                        em.setExtension(sr.getString("extension"));
                        em.setHomePhone(sr.getString("homephone"));
                        em.setCellPhone(sr.getString("cellphone"));
                        em.setJobTitle(sr.getString("jobtitle"));
                        em.setSocialSecurityNumber(sr.getString("socialsecuritynumber"));
                        em.setDriverLicenseNumber(sr.getString("driverlicensenumber"));
                        em.setAddress(sr.getString("address"));
                        em.setCity(sr.getString("city"));
                        em.setState(sr.getString("state"));
                        em.setPostalCode(sr.getString("postalcode"));
						em.setBirthdate(sr.getString("birthdate"));
						em.setDateHired(sr.getString("datehired"));
						em.setSalary(sr.getString("salary"));
						em.setNotes(sr.getString("notes"));
			llist.add(em);
			}
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return llist;
    }
     
 
    public List<ExpenseModel> getExpenses(String expn_id) {
    	ExpenseModel em=null;
		List<ExpenseModel> llist=new ArrayList<>();
		try {
		ResultSet sr= exd.getExpenses(expn_id);
			while(sr.next()){
			em=new ExpenseModel();	
			em.setExpenseID(sr.getString("expenseid"));
                   //     em.setEmployeeID(sr.getString("employeeid"));
                        em.setExpenseType(sr.getString("expensetype"));
                        em.setPurposeofExpense(sr.getString("purposeofexpense"));
                        em.setAmountSpent(sr.getString("amountspent"));
                        em.setDescription(sr.getString("description"));
                        em.setDatePurchased(sr.getString("datepurchased"));
                        em.setDateSubmitted(sr.getString("datesubmitted"));
                        em.setAdvanceAmount(sr.getString("advanceamount"));
                        em.setPaymentMethod(sr.getString("paymentmethod"));
                        			llist.add(em);
			}
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return llist;
    
    
    
}
    
     

    
    public List<CommentsModel> getComment() {
    	CommentsModel em=null;
		List<CommentsModel> llist=new ArrayList<>();
		try {
		ResultSet sr= cmd.getComments();
			while(sr.next()){
			em=new CommentsModel();	
			em.setCommentID(sr.getString("COMMENTID"));
                        em.setCommentTime(sr.getString("COMMENTTIME"));
                        em.setComment(sr.getString("COMMENTS"));
                        em.setCommentType(sr.getString("COMMENTTYPE"));
                        System.out.println(sr);
                        
			llist.add(em);
			}
			
		} catch (Exception e) {
                // TODO Auto-generated catch block

		}
		
		return llist;
    }
    
    
     public List<TrucksModel> getTrucks(String truck_id) {
    	TrucksModel em=null;
		List<TrucksModel> llist=new ArrayList<>();
		try {
		ResultSet sr= td.getTrucks(truck_id);
			while(sr.next()){
			em=new TrucksModel();	
			em.setTruckNo(sr.getString("truckno"));
                        em.setMake(sr.getString("make"));
                        em.setYear(sr.getString("year"));
                        em.setModel(sr.getString("model"));
                        em.setLicensePlateNo(sr.getString("licenseplateno"));
                        em.setEmployeeID(sr.getString("employeeid"));
                        em.setColor(sr.getString("color"));
                        em.setVIN(sr.getString("VIN"));
                        em.setTruckID(sr.getString("truckid"));
                                                			llist.add(em);
			}
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return llist;
    }
    

   // @WebMethod(operationName = "showOrder")
    public List<OrderModel> getOrder(String order_id) {
    	OrderModel em=null;
		List<OrderModel> llist=new ArrayList<>();
		try {
		ResultSet sr= od.getOrder(order_id);
			while(sr.next()){
			em=new OrderModel();	
			em.setOrderID(sr.getString("orderid"));
                        em.setOrderDate(sr.getString("orderdate"));
                        em.setCustomerID(sr.getString("customerid"));
                        em.setEmployeeID(sr.getString("employeeid"));
			em.setTruckID(sr.getString("truckid"));
			em.setIsSPecial(sr.getString("isspecial"));
			em.setPurchaseOrderNumber(sr.getString("purchaseordernumber"));
                        em.setOrderTotalAmount(sr.getString("ordertotalamount"));
                        em.setOrderTotalAmount(sr.getString("transactionid"));
                        em.setOrderTotalAmount(sr.getString("paymentid"));
						
						
			llist.add(em);
			}
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return llist;
        }
    
    

 

    public List<PricingModel> getPricing() {
    	PricingModel em=null;
		List<PricingModel> llist=new ArrayList<>();
		try {
		ResultSet sr= pd.getPricing();
			while(sr.next()){
			em=new PricingModel();	
			em.setPriceID(sr.getString("priceid"));
                        em.setLocationIDFrom(sr.getString("locationidfrom"));
                        em.setLocationIDTO(sr.getString("locationidto"));
                        em.setPrice(sr.getString("price"));
						em.setLocationCodeFrom(sr.getString("locationcodefrom"));
						em.setLocationCodeTo(sr.getString("locationcodeto"));
					//	em.setLocationNameFrom(sr.getString("locationnamefrom"));
                     //   em.setLocationNameTo(sr.getString("locationnameto"));
						em.setCustomerID(sr.getString("customerid"));
         //  em.setCustomerID(sr.getString("paymentid"));
						
			llist.add(em);
			}
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return llist;
    }

     
   // @WebMethod(operationName = "showPayment")
    public List<PaymentModel> getPayment() {
    	PaymentModel em=null;
		List<PaymentModel> llist=new ArrayList<>();
		try {
		ResultSet sr= ds.getPayment();
			while(sr.next()){
			em=new PaymentModel();	
			em.setPaymentID(sr.getString("paymentid"));
                        em.setPaymentMethodID(sr.getString("paymentmethodid"));
                        em.setPaymentAmount(sr.getString("paymentamount"));
						em.setPaymentDate(sr.getString("paymentdate"));
						em.setCheckNumber(sr.getString("checknumber"));
						em.setCreditCard(sr.getString("creditcard"));
                        em.setCreditCardNumber(sr.getString("creditcardnumber"));
						em.setCardholdersName(sr.getString("cardholdersname"));
						em.setCreditCardExpDate(sr.getString("creditcardexpdate"));
						em.setCreditCardAuthorizationNumber(sr.getString("creditcardauthorizationnumber"));
						
			llist.add(em);
			}
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return llist;
    }
    
     
    //@WebMethod(operationName = "showTrucks")
    public List<TransactionModel> getTransaction() {
    	TransactionModel em=null;
		List<TransactionModel> llist=new ArrayList<>();
		try {
		ResultSet sr= tds.getTransaction();
			while(sr.next()){
			em=new TransactionModel();	
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

	         			llist.add(em);
			}
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return llist;
    }
    
    
    
    
}