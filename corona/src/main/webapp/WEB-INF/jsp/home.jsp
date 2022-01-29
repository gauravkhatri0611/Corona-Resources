<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"  %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>  
<html>
<head>
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
 <script src="https://checkout.razorpay.com/v1/checkout.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@100&display=swap" rel="stylesheet">

    <script src='https://api.mapbox.com/mapbox-gl-js/v2.1.1/mapbox-gl.js'></script>
    <link href='https://api.mapbox.com/mapbox-gl-js/v2.1.1/mapbox-gl.css' rel='stylesheet' />
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Hind+Siliguri&display=swap" rel="stylesheet">
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Dancing+Script&display=swap" rel="stylesheet">

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">


    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>


    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="resources/css/nav.css">
<script>

const paymentStart = () => {
	
	console.log("payment started..");
	var amount=$("#payment_feild").val();
	console.log(amount);
	
	if(amount==""||amount==null)
		{
		 swal("Failed", "Amount is required", "error");
		return;
		}
	
	 $.ajax(
			 { 
				 headers: { 
			        'Accept': 'application/json',
			        'Content-Type': 'application/json' 
			    },
		 
                 url: "create",
                 data: JSON.stringify({amount: amount ,info: "order_request" }),
                
                 dataType: "json",
                 type: "POST",
                 success: function (response)
                 
                 {
                     console.log(response);
                    
                     if(response.status=='created')
                     
                  
                     {
                    	 let options={
                    	  key:'rzp_test_TPGnIh1LBfeSKD',
                    	  amount:response.amount,
                    	  currency:'INR',
                    	  name:'Mahavir International',
                    	  description:'Donation',
                    	  image:'resources/img/rplogo.png',
                    	  order_id:response.id,
                    	  handler:function(response){
                    		  console.log(response.razorpay_payment_id);
                    		  console.log(response.razorpay_order_id);
                    		  console.log(response.razorpay_signature);
                    			console.log('payment sucessful');
                    			
                    			swal("Thank you", "You have saved a life", "success");
                    	  },
                    	  prefill: {
                    	        "name": "",
                    	        "email": "",
                    	        "contact": "",
                    	    },
                    	    notes: {
                    	        "address": "Razorpay Corporate Office"
                    	    },
                    	    theme: {
                    	        "color": "#3399cc",
                    	    },
                    	};
                    	 let rzp = new Razorpay(options);
                    	 rzp.on('payment.failed', function (response){
                    	       console.log(response.error.code);
                    	       console.log(response.error.description);
                    	       console.log(response.error.source);
                    	       console.log(response.error.step);
                    	       console.logalert(response.error.reason);
                    	       console.log(response.error.metadata.order_id);
                    	       console.log(response.error.metadata.payment_id);
                    	      
                                 swal("Failed", "Oops payment failed", "error");
                    	});
                    	 rzp.open();
                    	 }
                     },
                
                 error:function (error) {
                     console.log(error);
                     alert("something went wrong!!");
                 },
             });
         
	
};
</script>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
 <body>
  

<nav id="navbar">
        <div id="logo">
            <img src="resources/img/logo2.png" alt="">
        </div>
        <ul>
             <li class="item"><a href="hello">Home</a></li>
            <li class="item"><a href="view">Need Resources</a></li>
            <li class="item"><a href="resource">Resources</a></li>
            <li class="item"><a href="home">Donation</a></li>
            <li class="item"><a href="admin">Admin</a></li>
        </ul>
    </nav>
    <br>
    <br><br>
    <h1 class="heading1"> Donate Us</h1>
    <br>
    <p class="para1"> &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp"Not all of us can do great things,<br> But we can do small things with great love" </p>
    <div class="blood">
        <div id="logo2"><img src="resources/img/donor.svg" alt=""></div>
        <br><br>
        <div class="para2">As the COVID-19 crisis continues to loom over us, The Government of India has taken a strict
            combat measure by directing a lockdown of the entire nation. At this great hour of need, The Mahavir
            International
            NGO, in close coordination with State Governments & District Administration, has stepped in to provide
            relief by starting blood donation camps.<br><br>
           <button class="btn" data-target="#mymodal" data-toggle="modal">Donate</button>
        </div>

        </div>


        <br><br>
      <div class="modal" id="mymodal">

            <div class="modal-dialog modal-dialog-centered">
                <div class="modal-content">
                    <div class="modal-header">
                        <br><br>
                        <h4 class="heading2">Please fill the information below</h4>
                        <button class="close" data-dismiss="modal">&times;</button>
                    </div>
                    <div class="modal-body">
                         <form:form action = "home"  modelAttribute="userModel" >
                            <div class="form-group">
                                <input class="un " name="name" type="text" placeholder="Name">
                                <input class="un " type="text" name="phn" placeholder="Phone Number">
                                <select name="blood" class="un" placeholder="Blood Group">
                                    <option value="A+">A+</option>
                                    <option value="A-">A-</option>
                                    <option value="B+">B+</option>
                                    <option value="B-">B-</option>
                                    <option value="O+">O+</option>
                                    <option value="O-">O-</option>
                                    <option value="AB+">AB+</option>
                                    <option value="AB-">AB-</option>
                                </select><br><br>
                                <button type="submit" class="btn2">Submit</button>
                            </div>
                        </form:form>  
                        
                  
                    </div>

                </div>
            </div>
        </div>

    </div>
    <div class="blood2">
        <div id="logo3"><img src="resources/img/box.svg" alt=""></div>
        <br><br>
        <div class="para3">It is now or never! Covid is once again creating panic all over India. With over
            4.14 lakh new COVID cases in a single day, India's total number of COVID cases is 2.14 crore which is a huge
            burden on our healthcare system. As India is gasping for breath, our frontline workers are tirelessly
            working to rein this monstrous pandemic. India needs all of us in this battle against COVID-19. Please enter the amount below
            you wish to donate.
        <br><br>
       
         <form:form action="success" method="post" modelAttribute="userModel">

          <form:input id="payment_feild" path="amount" cssClass="money" placeholder="Amount"/>



          </form:form>
          <br>
           <button onclick="paymentStart()"  class="btn">Submit</button>
        </div>
    </div>
</body>

</html>