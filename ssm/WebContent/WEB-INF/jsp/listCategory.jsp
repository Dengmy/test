<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*"%>
 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head> 
    <meta charset="utf-8">
    <meta name="viewport" content="initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
    <title></title>
    <link rel="shortcut icon" href="img/bitbug_favicon2.ico" />

<table align='center' border='1' cellspacing='0'>



<!-- <script  src="http://libs.baidu.com/jquery/1.7.2/jquery.min.js"></script> -->
<script src="https://cdn.staticfile.org/jquery/1.10.2/jquery.min.js"></script>
<!-- 最新版本的 Bootstrap 核心 CSS 文件 -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css" 
integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
<!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" 
crossorigin="anonymous"></script>

</head>
<body>




<!-- Modal -->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="myModalLabel">新增</h4>
      </div>
      <div class="modal-body">
        	 <div style="text-align:center;margin-top:40px">
		
		<form method="post" action="addCategory">
	
			姓名： <input name="name" value="" type="text"> <br><br>
		
   	 	<legend>性别</legend>
    	<input  type="radio" name='sex' value="男" required="required"/>男
    	<input  type="radio" name='sex' value="女" required="required"/>女
         <br><br>
        <legend>学科</legend>
		<input  type="checkbox" name="subject" value="体育"/>体育
		<input  type="checkbox" name="subject" value="读书"/>读书 <br><br>
			<legend>年级</legend>	       
			    <select name="grade" id="str3"> 
				<option value="" selected>请选择年级</option>
				<option  value="一年级" >一年级</option>
				<option  value="二年级" >二年级</option>
				<option  value="三年级" >三年级</option>
    			<option  value="四年级" >四年级</option>
    			<option  value="五年级" >五年级</option> 

				</select> <br><br>
			       	
	
			<input type="submit" value="添加">
		
		</form>

	</div>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
        
      </div>
    </div>
  </div>
</div>


	
 


<!-- 搭建显示页面 -->
			<div class="container"></div>
			<!-- 标题 -->
			<div class="row">
				<div class="col-md-12">
				<h1>SSM-CURD</h1>
				</div>
			</div>
			<!-- 按钮 -->
			<div class="row">
			<div class="col-md-4 col-md-offset-8">
				<!-- <button class="btn btn-primary ">新增</button>
				<button class="btn btn-danger">删除</button> -->
				
				<!-- Button trigger modal -->
<button type="button" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal">
  新增
</button>
				
				
				
				</div>
			</div>
			<!-- 显示表格数据 -->
			<div class="row">
			<div class="col-md-12">
			<table class="table table-hover">
			<tr>
			    <th>学号</th>
      		    <th>姓名</th>
        		<th>性别</th>
        		<th>学科</th>
        		<th>年级</th>
       			<th>操作</th>
	    		
			</tr>
			<c:forEach items="${cs}" var="c" varStatus="st">
        <tr>
            <td>${c.id}</td>
            <td>${c.name}</td>
            <td>${c.sex}</td>
            <td>${c.subject}</td>
            <td>${c.grade}</td>
           
           <td><a href="editCategory?id=${c.id}">编辑</a></td>
           
	       <td><a href="deleteCategory?id=${c.id}">删除</a></td>
           
	       
	        
              
        </tr>
            </c:forEach>
      
   
			</table>
		
			</div>
			</div>
			
			
<!--显示分页  -->
			
<div style="text-align:center">
		<a href="?start=0">首  页</a>
		<a href="?start=${page.start-page.count}">上一页</a>
		<a href="?start=${page.start+page.count}">下一页</a>
		<a href="?start=${page.last}">末  页</a>
	</div>


	</body>
	
</html>	
	
