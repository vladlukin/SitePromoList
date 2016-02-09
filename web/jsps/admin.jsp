<%-- 
    Document   : index
    Created on : 14.01.2016, 9:00:06
    Author     : VGLukin
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>

<sql:query var="rubrics" dataSource="jdbc/userdb" >
    SELECT idRubric, rubricName FROM rubricref
</sql:query> 

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/styles/style.css">
        <title>Welcome for you!</title>
    </head>
    <body>
        <div class="mainframe">
            <%@include file="../partjsp/topmenu.jsp" %>        

            <s:form name="insertNew" action="insertNewForm" enctype="multipart/form-data" method="post">                
                <table >
                    <tbody>
                        <tr>
                            <td>
                                <strong>Рубрика:</strong>
                                <select required key="idRubric" name="idRubric" >
                                    <c:forEach var="row" items="${rubrics.rows}" >
                                        <option <c:if test="${param.idRubric == row.idRubric}" > 
                                                selected
                                            </c:if>
                                            value="${row.idRubric}">${row.rubricName}</option>
                                    </c:forEach>
                                </select>  
                            </td>  
<!--                            <td>
                               <s:submit value="Найти" name="find"/>  
                            </td>
                            <td>
                                
                            </td>-->
                        </tr>
                        <tr>
                            <td><s:textfield label="Ссылка" key="url"/> 
                            </td>                        
                        </tr>
                        <tr>
                            <td><s:textfield label="Имя сайта" key="siteName"/> 
                            </td>
                        </tr> 
                        <tr>
                            <td>
                                <s:file label="Картинка" key="file" name="file" value="" width="50" />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <s:submit value="Записать" name="insert"/> 
                            </td> 
                        </tr>               
                    </tbody>                
                </table> 

            </s:form>     
            <s:property value="resultInsert" default="" />                              

            <%@include file="../partjsp/bottom.jsp"%> 
        </div>
    </body>
</html>
