<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<th scope="col">Price</th>
                              
                                  <div style="width: 30%;">
                                    <div class="row justify-content-center">
                                      <div class="col-6"><h4>Total : ${total }</h4></div>
                                      <input type="hidden" value=${total } id="totalamount">
                                      <div id="paypal-button-container"></div>
                                      </div>
                                 </div>
                          <script src="https://www.paypal.com/sdk/js?client-id=AT479PJVeDhD0EHF4UvoehlMylBcsZWXI5YdT02cZ-yohm_XkfArVjkbYB1niNg630ZXOVATErGud_JE&currency=USD"></script>

                          <script>
                           
                            var amount=document.getElementById("totalamount").value;
                              // Render the PayPal button into #paypal-button-container
                              paypal.Buttons({
                                
                              style: {
                              shape: 'pill',
                              color: 'gold',
                              layout: 'vertical',
                              label: 'paypal',

                                },
                      
                                  // Set up the transaction
                                  createOrder: function(data, actions) {
                                      return actions.order.create({
                                          purchase_units: [{
                                              amount: {
                                                  value: amount
                                              }
                                          }]
                                      });
                                  },
                      
                                  // Finalize the transaction
                                  onApprove: function(data, actions) {
                                      return actions.order.capture().then(function(details) {
                                          // Show a success message to the buyer
                                          window.location.href = "/paymentcompleted";
                                          alert('Transaction completed by ' + details.payer.name.given_name + '!');
                                      });
                                  }
                      
                      
                              }).render('#paypal-button-container');
                            
                          </script>
</body>
</html>