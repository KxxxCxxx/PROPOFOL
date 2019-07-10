<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>

</style>
</head>
<body>
<form action="insertProduct" method="post" enctype="multipart/form-data">
	<table border="1">
		<tr>
			<td colspan="2" align="center"><h3>상품업로드</h3></td>
		</tr>
		<tr>
			<td colspan="2" align="center">
				<input type="radio" name="p_kind" value="N" checked="checked">신상품 
				<input type="radio" name="p_kind" value="B" >인기상품 
			</td>
		</tr> 
		<tr>
			<td>상품명</td><td><input type="text" name="p_name"></td>
		</tr>
		<tr>
			<td>가격</td><td><input type="number" name="p_price"></td>
		</tr>
		<tr>
			<td>재고량</td><td><input type="number" name="p_qty"></td>
		</tr>
		<tr>
			<td>상품설명</td><td><textarea rows="5" cols="40" name="p_contents"></textarea></td>
		</tr>
		<tr>
			<td>이미지</td><td><input type="file" name="p_file"></td>
		</tr>
		<tr align="center">
			<td colspan="2"><button>상품등록</button>
			<input type="reset" value="취소"></td>
		</tr>
	
	</table>

</form>

</body>
<script>

</script>
</html>