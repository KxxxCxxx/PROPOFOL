<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
div {
	width: 14%;
	height: 33%;
	float: left;
	border: 2px solid red;
}

#detail {
	display: none;
	width: 30%;
	border: solid blue 1px;
	overflow: auto;
	float: inherit;
}

#detail.open {
	display: block;
	color: blue;
}
</style>
</head>
<body>
	<h1>==상품리스트==</h1>
	<hr>

	${pList }


</body>
<script>
var id="";
var code="";
function detail(pCode){
	//$('#detail').addClass('open');
	//$('#detail').toggle(); //.show()<---->.hide();
	$.ajax({
		url: 'ajaxDetail', //'ajaxDetail?p_code='+pCode,
		type: 'post',
		data: {p_code:pCode},
		dataType: 'json',
		success:function(data){
			//console.log(data);
			var str="";
			str+='<br>상품코드:'+data.p_code+'<br>'
			+'상품명:'+data.p_name+'<br>'
			+'가격:'+data.p_price+'<br>'
			+'재고량:'+data.p_qty+'<br>'
			+'등록일:'+data.p_date+'<br>'
			+'등록자:'+data.p_id+'<br>'
			+"<button onclick='cartAdd()'>담기</button>";	
			
			id = data.p_id;
			code = data.p_code;
			console.log("id="+id);
			console.log("code="+code);
			
			$('#detail').html(str);
			
			
			
		},
		error:function(error){
			console.log(error);
		}
	}); //ajax End
}//detail End

function cartAdd(){
	$.ajax({
		url : "cart",
		type: 'get',
		data : {
			id : id,
			code : code
		},
		dataType : 'json',
		success : function(data) {
			console.log(data);
			$('#cart').html(data);
		}
});
}
</script>
</html>