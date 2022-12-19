<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<!-- jQuery -->
<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js" ></script>
<!-- iamport.payment.js -->
<script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.2.0.js"></script>

<script type="text/javascript">
	var IMP = window.IMP;   // 생략 가능
	IMP.init("imp35005773"); // 
</script>
</head>

<body>
	<h1>pay.jsp</h1>
	
	<button onclick="requestPay()">결제하기</button>
  
  <script type="text/javascript">
  
    function requestPay() {
      // IMP.request_pay(param, callback) 결제창 호출
      IMP.request_pay({ // param
          pg: "html5_inicis",
          pay_method: "card",
          merchant_uid: "ORD20180131-0000011",
          name: "테스트 결제 100원",
          amount: 100,
          buyer_email: "gkdlsnsrkf@gmail.com",
          buyer_name: "Chris",
          buyer_tel: "010-4242-4242",
          buyer_addr: "부산광역시 해운대구 우동",
          buyer_postcode: "01181"
      }, function (rsp) { // callback
          if (rsp.success) {
              
              // 결제 성공 시 로직,
              
          } else {
              
              // 결제 실패 시 로직,
              
          }
      });
    }
    
  </script>
	
	
</body>
</html>