<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>Catch Mind</title>
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<link rel="icon" href="/image/catchcon.png" type="image/png">
	<title>Royal Hotel</title>
	<!-- Bootstrap CSS -->
	<link rel="stylesheet" href="/css/bootstrap.css">
	<link rel="stylesheet" href="/vendors/linericon/style.css">
	<link rel="stylesheet" href="/css/font-awesome.min.css">
	<link rel="stylesheet" href="/vendors/bootstrap-datepicker/bootstrap-datetimepicker.min.css">
	<link rel="stylesheet" href="/vendors/nice-select/css/nice-select.css">
	<link rel="stylesheet" href="/vendors/owl-carousel/owl.carousel.min.css">
	<!-- main css -->
	<link rel="stylesheet" href="/css/style.css">
	<!-- <link rel="stylesheet" href="/css/responsive.css"> -->
	<!-- <link rel="stylesheet" href="//code.jquery.com/ui/1.13.2/themes/base/jquery-ui.css"> -->
	<link rel="stylesheet" href="/css/style_jonghe.css">
	<!-- <link rel="stylesheet" href="http://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css"> -->
	<link rel="stylesheet" href="//cdnjs.cloudflare.com/ajax/libs/timepicker/1.3.5/jquery.timepicker.min.css">
	<script src="/js/jquery-3.6.4.min.js"></script>
<!-- 	<script>
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
	</script> -->
	<script>
		$(document).ready(function() {
			$("#shopRegisterButton").click(function() {
				
			});
		});
	</script>
	<style>
		button#shopRegisterButton {
			display: block;
			margin: auto;
			margin-top: 50px;
			border: none;
			border-radius: 15px;
			width: 500px;
			height: 50px;
			font-size: 15pt;
		}
		button#shopRegisterButton:hover {
			cursor: pointer;
		}
	</style>
</head>
<body>
	<section class="s1">
		<div class="h3">
			<h3> Shop Registeration </h3>
		</div>
	</section>
	<section class="s2">
		<button type="button" id="shopRegisterButton" onclick="location.href='admin_shop_registeration_enter.do'">Do you want to register a shop?</button>
	</section>
    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="/js/jquery-3.2.1.min.js"></script>
    <script src="/js/popper.js"></script>
    <script src="/js/bootstrap.min.js"></script>
    <script src="/vendors/owl-carousel/owl.carousel.min.js"></script>
    <script src="/js/jquery.ajaxchimp.min.js"></script>
    <script src="/vendors/bootstrap-datepicker/bootstrap-datetimepicker.min.js"></script>
    <script src="/vendors/nice-select/js/jquery.nice-select.js"></script>
    <script src="/js/mail-script.js"></script>
    <script src="/js/stellar.js"></script>
    <script src="/vendors/imagesloaded/imagesloaded.pkgd.min.js"></script>
    <script src="/vendors/isotope/isotope-min.js"></script>
    <script src="/js/stellar.js"></script>
    <script src="/vendors/lightbox/simpleLightbox.min.js"></script>
    <!--gmaps Js-->
    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCjCGmQ0Uq4exrzdcL6rvxywDDOvfAu6eE"></script>
    <script src="/js/gmaps.min.js"></script>
    <!-- contact js -->
    <script src="/js/jquery.form.js"></script>
    <script src="/js/jquery.validate.min.js"></script>
    <script src="/js/contact.js"></script>
    <script src="/js/custom.js"></script>
	<!-- �޷� ������� �ҽ� -->
	<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
	<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
</body>
</html>