<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*"%>
 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head> 
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<style>

</style>
<script  src="http://libs.baidu.com/jquery/1.7.2/jquery.min.js"></script>




</head>

<body>
	

<div style="text-align:center;margin-top:40px">
		
		<form method="post" action="updateCategory">
			姓名： <input name="name" value="${c.name}" type="text"> <br><br>
			性别： <input name="sex" value="${c.sex}" type="text"> <br><br>
			学科： <input name="subject" value="${c.subject}" type="text"> <br><br>
			年级： <input name="grade" value="${c.grade}" type="text"> <br><br>
			<input type="hidden" value="${c.id}" name="id"> 
			
			
		<input type="submit" value="修改">
		</form>

	</div>	



				
						
			    
 
</body>
</html>