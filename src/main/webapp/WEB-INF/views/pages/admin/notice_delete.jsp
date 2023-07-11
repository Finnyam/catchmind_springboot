<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="EUC-KR">
	<title>Catch Mind</title>
	<link rel="stylesheet" href="resources/css/style_jonghe.css">
	<script src="resources/js/jquery-3.6.4.min.js"></script>
	<script>
		$(document).ready(function() {
			$(".toList").click(function() {
			  window.history.go(-2);
			});
			
			$("#noticeDelete").click(function() {
				$.ajax({
					url:"notice_delete_proc.do?nid="+$("#noticeDeleteHiddenNid").val(),
					success: function(result) {
						if(result == 1) {
							alert("���� �Ǿ����ϴ�");
						}else {
							alert("������ �����߽��ϴ�\n�����ڿ��� �����ϼ���");
						}
						window.location.href = "notice_list.do";
					}
				});
			});
		});		
	</script>
</head>
<body>
	<input type="hidden" name="nid" id="noticeDeleteHiddenNid" value="${nid}">
	<div class="content">
		<section class="notice_delete">
			<h1 class="title" style="padding-top:50px">Notice</h1>
			<form name="deleteForm" action="#" method="get">
				<table border=1>
					<tr>					
						<td>Do you really want to delete this article?</td>
					</tr>				
					<tr>
						<td colspan="2">
							<button type="button" id="noticeDelete">Delete</button>
							<button type="button" class="toList">List</button>
						</td>				
					</tr>
				</table>
			</form>
		</section>
	</div>
</body>
</html>