<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>Catch Mind</title>
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<link rel="icon" href="../image/favicon.png" type="image/png">
	<title>Royal Hotel</title>
	<!-- Bootstrap CSS -->
	<link rel="stylesheet" href="../css/bootstrap.css">
	<link rel="stylesheet" href="../vendors/linericon/style.css">
	<link rel="stylesheet" href="../css/font-awesome.min.css">
	<link rel="stylesheet" href="../vendors/bootstrap-datepicker/bootstrap-datetimepicker.min.css">
	<link rel="stylesheet" href="../vendors/nice-select/css/nice-select.css">
	<link rel="stylesheet" href="../vendors/owl-carousel/owl.carousel.min.css">
	<!-- main css -->
	<link rel="stylesheet" href="../css/style.css">
	<link rel="stylesheet" href="../css/responsive.css">
	<link rel="stylesheet" href="//code.jquery.com/ui/1.13.2/themes/base/jquery-ui.css">
	<link rel="stylesheet" href="../css/style_jonghe.css">
	<link rel="stylesheet" href="http://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
	<script src="../js/jquery-3.6.4.min.js"></script>
	<script>
	   $(function() {
	       //input�� datepicker�� ����
	       $("#datepicker1,#datepicker2").datepicker({
	           dateFormat: 'yy-mm-dd' //�޷� ��¥ ����
	           ,showOtherMonths: true //�� ������ ������� �յڿ��� ��¥�� ǥ��
	           ,showMonthAfterYear:true // ��- �� �������ƴ� �⵵ - �� ����
	           ,changeYear: true //option�� �� ���� ����
	           ,changeMonth: true //option��  �� ���� ����                
	           ,showOn: "both" //button:��ư�� ǥ���ϰ�,��ư�� �����߸� �޷� ǥ�� ^ both:��ư�� ǥ���ϰ�,��ư�� �����ų� input�� Ŭ���ϸ� �޷� ǥ��  
	           ,buttonImage: "http://jqueryui.com/resources/demos/datepicker/images/calendar.gif" //��ư �̹��� ���
	           ,buttonImageOnly: true //��ư �̹����� ����ϰ� ���̰���
	           ,buttonText: "����" //��ư ȣ�� �ؽ�Ʈ              
	           ,yearSuffix: "��" //�޷��� �⵵ �κ� �� �ؽ�Ʈ
	           ,monthNamesShort: ['1��','2��','3��','4��','5��','6��','7��','8��','9��','10��','11��','12��'] //�޷��� �� �κ� �ؽ�Ʈ
	           ,monthNames: ['1��','2��','3��','4��','5��','6��','7��','8��','9��','10��','11��','12��'] //�޷��� �� �κ� Tooltip
	           ,dayNamesMin: ['��','��','ȭ','��','��','��','��'] //�޷��� ���� �ؽ�Ʈ
	           ,dayNames: ['�Ͽ���','������','ȭ����','������','�����','�ݿ���','�����'] //�޷��� ���� Tooltip
	           ,minDate: "-5Y" //�ּ� ��������(-1D:�Ϸ���, -1M:�Ѵ���, -1Y:�ϳ���)
	           ,maxDate: "+5y" //�ִ� ��������(+1D:�Ϸ���, -1M:�Ѵ���, -1Y:�ϳ���)  
	       });                    
	       
	       //�ʱⰪ�� ���� ��¥�� ��������� �մϴ�.
	       $("#datepicker1,#datepicker2").datepicker('setDate', 'today'); //(-1D:�Ϸ���, -1M:�Ѵ���, -1Y:�ϳ���), (+1D:�Ϸ���, -1M:�Ѵ���, -1Y:�ϳ���)            
	   });
	</script>
</head>
<body>
	<!-- <section id="s1"> -->
	<section class="s1">
		<div class="h3">
			<h3> Restaurant Reservation </h3>
		</div>
	</section>
	<!-- <section id="s2"> -->
	<section class="s2">
		<div id="reserveList">
			<div class="restaurantList">
				<div class="restaurantInfo">
					<span>ZERO COMPLEX</span>
					<span>Hoehyeon</span>
				</div>
				<div class='input-group date reservation'>
					<div>
				        <input type="text" id="datepicker1">
					</div>
					<div>
				        <input type="text" id="datepicker2">
					</div>
				</div>
			</div>
			<hr>
			<div class="restaurantList">
				<div class="restaurantInfo">
					<span>L'Amitie<span>
					<span>Gangnam</span>
				</div>
				<div class='input-group date reservation'>
					<div>
				        <input type="text" id="datepicker1">
					</div>
					<div>
				        <input type="text" id="datepicker2">
					</div>
				</div>
			</div>
			<hr>
			<div class="restaurantList">
				<div class="restaurantInfo">
					<span>Aruhi Niwa</span>
					<span>Sinsa</span>
				</div>
				<div class='input-group date reservation'>
					<div>
				        <input type="text" id="datepicker1">
					</div>
					<div>
				        <input type="text" id="datepicker2">
					</div>
				</div>
			</div>
			<hr>
			<div class="restaurantList">
				<div class="restaurantInfo">
					<span>Mutin</span>
					<span>Itaewon</span>
				</div>
				<div class='input-group date reservation'>
					<div>
				        <input type="text" id="datepicker1">
					</div>
					<div>
				        <input type="text" id="datepicker2">
					</div>
				</div>
			</div>
			<hr>
			<div class="restaurantList">
				<div class="restaurantInfo">
					<span>Exquisine</span>
					<span>Seocho</span>
				</div>
				<div class='input-group date reservation'>
					<div>
				        <input type="text" id="datepicker1">
					</div>
					<div>
				        <input type="text" id="datepicker2">
					</div>
				</div>
			</div>
			<hr>
			<div class="restaurantList">
				<div class="restaurantInfo">
					<span>SOIGNE</span>
					<span>Yongsan</span>
				</div>
				<div class='input-group date reservation'>
					<div>
				        <input type="text" id="datepicker1">
					</div>
					<div>
				        <input type="text" id="datepicker2">
					</div>
				</div>
			</div>
			<hr>
			<div class="restaurantList">
				<div class="restaurantInfo">
					<span>Minami</span>
					<span>Samcheong</span>
				</div>
				<div class='input-group date reservation'>
					<div>
				        <input type="text" id="datepicker1">
					</div>
					<div>
				        <input type="text" id="datepicker2">
					</div>
				</div>
			</div>
		</div>
		<div id="reserveDetail">
			<div> 
				<div class="reserveDetail">
					<div>
						<span>Date  :  </span>
						<span>2023/05/07</span>
					</div>
					<div>
						<span>Time  :  </span>
						<span>16:50</span>
					</div>
					<div>
						<span>Name  :  </span>
						<span>korea</span>
					</div>
					<div>
						<span>ID</span>
						<span>sosinnmi</span>
					
					</div>
					<div>
						<span>CellPhone</span>
						<span>010-1234-1234</span>
					</div>
				</div>
				<div class="confirm">
					<form name="confirmForm" action="#" method="get">
						<button type="button" class="btnConfirm">confirm</button>
						<button type="button" class="btnCancel">cancel</button>
					</form>
				</div>
			</div>
			<hr>
			<div> 
				<div class="reserveDetail">
					<div>
						<span>Date  :  </span>
						<span>2023/05/08</span>
					</div>
					<div>
						<span>Time  :  </span>
						<span>13:50</span>
					</div>
					<div>
						<span>Name  :  </span>
						<span>us</span>
					</div>
					<div>
						<span>ID</span>
						<span>sosinnmi2</span>
					
					</div>
					<div>
						<span>CellPhone</span>
						<span>010-1234-5678</span>
					</div>
				</div>
				<div class="confirm">
					<form name="confirmForm" action="#" method="get">
						<button type="button" class="btnConfirm">confirm</button>
						<button type="button" class="btnCancel">cancel</button>
					</form>
				</div>
			</div>
			<hr>
			<div> 
				<div class="reserveDetail">
					<div>
						<span>Date  :  </span>
						<span>2023/05/08</span>
					</div>
					<div>
						<span>Time  :  </span>
						<span>13:50</span>
					</div>
					<div>
						<span>Name  :  </span>
						<span>us</span>
					</div>
					<div>
						<span>ID</span>
						<span>sosinnmi2</span>
					
					</div>
					<div>
						<span>CellPhone</span>
						<span>010-1234-5678</span>
					</div>
				</div>
				<div class="confirm">
					<form name="confirmForm" action="#" method="get">
						<button type="button" class="btnConfirm">confirm</button>
						<button type="button" class="btnCancel">cancel</button>
					</form>
				</div>
			</div>
		</div>
	</section>
    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="../js/jquery-3.2.1.min.js"></script>
    <script src="../js/popper.js"></script>
    <script src="../js/bootstrap.min.js"></script>
    <script src="../vendors/owl-carousel/owl.carousel.min.js"></script>
    <script src="../js/jquery.ajaxchimp.min.js"></script>
    <script src="../vendors/bootstrap-datepicker/bootstrap-datetimepicker.min.js"></script>
    <script src="../vendors/nice-select/js/jquery.nice-select.js"></script>
    <script src="../js/mail-script.js"></script>
    <script src="../js/stellar.js"></script>
    <script src="../vendors/imagesloaded/imagesloaded.pkgd.min.js"></script>
    <script src="../vendors/isotope/isotope-min.js"></script>
    <script src="../js/stellar.js"></script>
    <script src="../vendors/lightbox/simpleLightbox.min.js"></script>
    <!--gmaps Js-->
    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCjCGmQ0Uq4exrzdcL6rvxywDDOvfAu6eE"></script>
    <script src="../js/gmaps.min.js"></script>
    <!-- contact js -->
    <script src="../js/jquery.form.js"></script>
    <script src="../js/jquery.validate.min.js"></script>
    <script src="../js/contact.js"></script>
    <script src="../js/custom.js"></script>	
	<!-- �޷� ������� �ҽ� -->
	<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
	<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
</body>
</html>