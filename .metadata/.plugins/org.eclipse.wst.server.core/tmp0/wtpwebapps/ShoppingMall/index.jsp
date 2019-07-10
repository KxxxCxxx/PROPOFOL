<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<script src="http://code.jquery.com/jquery-3.3.1.js"></script>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	h1{ text-align: center;	color: blue; }
	html,body{ height: 95%; }
	div{ border: 2px solid black; margin: 5px; }
	#header{ width: 98%; height: 20%;  }
	#middleWrap{ 
		width: 98%; 
		height: 60%; 
		overflow: hidden; 
		border: 2px solid red;
		display: inline-flex;
		/* position: relative; */
		
	}
	#menu{ width: 18%; height: 97%; text-align: center; float: left; font-size: 40px; }
	#main{ width: 81%; height: 97%; text-align: center; float: left; overflow: auto; }
	#footer{ width: 98%; height: 20%; text-align: center; overflow: auto; }
	
</style>
</head>
<body>
<h1>index.jsp-My Mall</h1>
<div id="header">
	<jsp:include page="header.jsp" />
</div>

<div id="middleWrap">
	<div id="menu"></div>
	<div id="main"></div>
</div>

<div id="footer">
	<jsp:include page="footer.jsp" />
</div>

</body>
<script>
Aj("menu","#menu");

if(${id!=null}){ //로그인 되었을때만 menu.jsp와 main.jsp를 보여줌
	if(${page==null}){
		Aj("newItem","#main");
	}else{
		Aj("${page}","#main");
} 
}

function Aj(url,position){
	$.ajax({
		url: url, //newItem or bestItem
		dataType: "html", //html(text) 생략가능
		success:function(data){ //newItem.jsp or bestItem.jsp 받아오기
			//alert(data);
			$(position).html(data);
			console.log(position);
		}
	}); //ajax End
} //Aj End
</script>
</html>